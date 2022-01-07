
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intlist {int dummy; } ;
typedef int ssize_t ;
typedef int sbuf ;
typedef int FILE ;


 int STRERR_BUFSIZE ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int intlist__add (struct intlist*,int) ;
 int pr_debug (char*,char const*) ;
 int pr_warning (char*,char const*,int ) ;
 int str_error_r (int,char*,int) ;
 scalar_t__ strlazymatch (char*,char const*) ;

__attribute__((used)) static int find_lazy_match_lines(struct intlist *list,
     const char *fname, const char *pat)
{
 FILE *fp;
 char *line = ((void*)0);
 size_t line_len;
 ssize_t len;
 int count = 0, linenum = 1;
 char sbuf[STRERR_BUFSIZE];

 fp = fopen(fname, "r");
 if (!fp) {
  pr_warning("Failed to open %s: %s\n", fname,
      str_error_r(errno, sbuf, sizeof(sbuf)));
  return -errno;
 }

 while ((len = getline(&line, &line_len, fp)) > 0) {

  if (line[len - 1] == '\n')
   line[len - 1] = '\0';

  if (strlazymatch(line, pat)) {
   intlist__add(list, linenum);
   count++;
  }
  linenum++;
 }

 if (ferror(fp))
  count = -errno;
 free(line);
 fclose(fp);

 if (count == 0)
  pr_debug("No matched lines found in %s.\n", fname);
 return count;
}
