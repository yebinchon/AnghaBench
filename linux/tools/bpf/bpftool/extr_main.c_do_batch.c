
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int contline ;
typedef int buf ;
typedef int FILE ;


 int BATCH_ARG_NB_MAX ;
 int BATCH_LINE_LEN_MAX ;
 scalar_t__ E2BIG ;
 scalar_t__ ENOENT ;
 int NEXT_ARG () ;
 int cmd_select (int ,int,char**,int ) ;
 int cmds ;
 int do_help ;
 scalar_t__ errno ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int is_prefix (char*,char*) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_end_array (int ) ;
 int jsonw_end_object (int ) ;
 int jsonw_name (int ,char*) ;
 int jsonw_start_array (int ) ;
 int jsonw_start_object (int ) ;
 int jsonw_string (int ,char*) ;
 int make_args (char*,char**,int,unsigned int) ;
 int p_err (char*,...) ;
 int printf (char*,unsigned int) ;
 int * stdin ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 unsigned int strerror (scalar_t__) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static int do_batch(int argc, char **argv)
{
 char buf[BATCH_LINE_LEN_MAX], contline[BATCH_LINE_LEN_MAX];
 char *n_argv[BATCH_ARG_NB_MAX];
 unsigned int lines = 0;
 int n_argc;
 FILE *fp;
 char *cp;
 int err;
 int i;

 if (argc < 2) {
  p_err("too few parameters for batch");
  return -1;
 } else if (!is_prefix(*argv, "file")) {
  p_err("expected 'file', got: %s", *argv);
  return -1;
 } else if (argc > 2) {
  p_err("too many parameters for batch");
  return -1;
 }
 NEXT_ARG();

 if (!strcmp(*argv, "-"))
  fp = stdin;
 else
  fp = fopen(*argv, "r");
 if (!fp) {
  p_err("Can't open file (%s): %s", *argv, strerror(errno));
  return -1;
 }

 if (json_output)
  jsonw_start_array(json_wtr);
 while (fgets(buf, sizeof(buf), fp)) {
  cp = strchr(buf, '#');
  if (cp)
   *cp = '\0';

  if (strlen(buf) == sizeof(buf) - 1) {
   errno = E2BIG;
   break;
  }




  while ((cp = strstr(buf, "\\\n")) != ((void*)0)) {
   if (!fgets(contline, sizeof(contline), fp) ||
       strlen(contline) == 0) {
    p_err("missing continuation line on command %d",
          lines);
    err = -1;
    goto err_close;
   }

   cp = strchr(contline, '#');
   if (cp)
    *cp = '\0';

   if (strlen(buf) + strlen(contline) + 1 > sizeof(buf)) {
    p_err("command %d is too long", lines);
    err = -1;
    goto err_close;
   }
   buf[strlen(buf) - 2] = '\0';
   strcat(buf, contline);
  }

  n_argc = make_args(buf, n_argv, BATCH_ARG_NB_MAX, lines);
  if (!n_argc)
   continue;
  if (n_argc < 0)
   goto err_close;

  if (json_output) {
   jsonw_start_object(json_wtr);
   jsonw_name(json_wtr, "command");
   jsonw_start_array(json_wtr);
   for (i = 0; i < n_argc; i++)
    jsonw_string(json_wtr, n_argv[i]);
   jsonw_end_array(json_wtr);
   jsonw_name(json_wtr, "output");
  }

  err = cmd_select(cmds, n_argc, n_argv, do_help);

  if (json_output)
   jsonw_end_object(json_wtr);

  if (err)
   goto err_close;

  lines++;
 }

 if (errno && errno != ENOENT) {
  p_err("reading batch file failed: %s", strerror(errno));
  err = -1;
 } else {
  if (!json_output)
   printf("processed %d commands\n", lines);
  err = 0;
 }
err_close:
 if (fp != stdin)
  fclose(fp);

 if (json_output)
  jsonw_end_array(json_wtr);

 return err;
}
