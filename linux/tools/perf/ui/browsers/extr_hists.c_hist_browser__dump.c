
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_browser {int print_seq; } ;
typedef int filename ;
typedef int bf ;
typedef int FILE ;


 int F_OK ;
 scalar_t__ access (char*,int ) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int hist_browser__fprintf (struct hist_browser*,int *) ;
 int scnprintf (char*,int,char*,int) ;
 char* str_error_r (int ,char*,int) ;
 int ui_helpline__fpush (char*,...) ;

__attribute__((used)) static int hist_browser__dump(struct hist_browser *browser)
{
 char filename[64];
 FILE *fp;

 while (1) {
  scnprintf(filename, sizeof(filename), "perf.hist.%d", browser->print_seq);
  if (access(filename, F_OK))
   break;



  if (++browser->print_seq == 8192) {
   ui_helpline__fpush("Too many perf.hist.N files, nothing written!");
   return -1;
  }
 }

 fp = fopen(filename, "w");
 if (fp == ((void*)0)) {
  char bf[64];
  const char *err = str_error_r(errno, bf, sizeof(bf));
  ui_helpline__fpush("Couldn't write to %s: %s", filename, err);
  return -1;
 }

 ++browser->print_seq;
 hist_browser__fprintf(browser, fp);
 fclose(fp);
 ui_helpline__fpush("%s written!", filename);

 return 0;
}
