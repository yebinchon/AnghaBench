
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; } ;
typedef size_t ssize_t ;
typedef int FILE ;


 int O_RDONLY ;
 int atoi (char*) ;
 int build_type_list () ;
 scalar_t__ close (int) ;
 int debug_opt ;
 int dump_elements () ;
 int exit (int) ;
 scalar_t__ fclose (int *) ;
 char* filename ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 char* getenv (char*) ;
 int grammar_name ;
 char* headername ;
 char* malloc (size_t) ;
 int memmove (char**,char**,int) ;
 int open (char*,int ) ;
 char* outputname ;
 int parse () ;
 int perror (char*) ;
 size_t read (int,char*,size_t) ;
 int render (int *,int *) ;
 int stderr ;
 char* strchr (int ,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strdup (char*) ;
 char* strrchr (char*,char) ;
 int tokenise (char*,char*) ;
 int verbose_opt ;

int main(int argc, char **argv)
{
 struct stat st;
 ssize_t readlen;
 FILE *out, *hdr;
 char *buffer, *p;
 char *kbuild_verbose;
 int fd;

 kbuild_verbose = getenv("KBUILD_VERBOSE");
 if (kbuild_verbose)
  verbose_opt = atoi(kbuild_verbose);

 while (argc > 4) {
  if (strcmp(argv[1], "-v") == 0)
   verbose_opt = 1;
  else if (strcmp(argv[1], "-d") == 0)
   debug_opt = 1;
  else
   break;
  memmove(&argv[1], &argv[2], (argc - 2) * sizeof(char *));
  argc--;
 }

 if (argc != 4) {
  fprintf(stderr, "Format: %s [-v] [-d] <grammar-file> <c-file> <hdr-file>\n",
   argv[0]);
  exit(2);
 }

 filename = argv[1];
 outputname = argv[2];
 headername = argv[3];

 fd = open(filename, O_RDONLY);
 if (fd < 0) {
  perror(filename);
  exit(1);
 }

 if (fstat(fd, &st) < 0) {
  perror(filename);
  exit(1);
 }

 if (!(buffer = malloc(st.st_size + 1))) {
  perror(((void*)0));
  exit(1);
 }

 if ((readlen = read(fd, buffer, st.st_size)) < 0) {
  perror(filename);
  exit(1);
 }

 if (close(fd) < 0) {
  perror(filename);
  exit(1);
 }

 if (readlen != st.st_size) {
  fprintf(stderr, "%s: Short read\n", filename);
  exit(1);
 }

 p = strrchr(argv[1], '/');
 p = p ? p + 1 : argv[1];
 grammar_name = strdup(p);
 if (!p) {
  perror(((void*)0));
  exit(1);
 }
 p = strchr(grammar_name, '.');
 if (p)
  *p = '\0';

 buffer[readlen] = 0;
 tokenise(buffer, buffer + readlen);
 build_type_list();
 parse();
 dump_elements();

 out = fopen(outputname, "w");
 if (!out) {
  perror(outputname);
  exit(1);
 }

 hdr = fopen(headername, "w");
 if (!hdr) {
  perror(headername);
  exit(1);
 }

 render(out, hdr);

 if (fclose(out) < 0) {
  perror(outputname);
  exit(1);
 }

 if (fclose(hdr) < 0) {
  perror(headername);
  exit(1);
 }

 return 0;
}
