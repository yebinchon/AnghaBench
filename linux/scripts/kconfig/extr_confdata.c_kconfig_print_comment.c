
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;
 size_t strcspn (char const*,char*) ;
 int xfwrite (char const*,size_t,int,int *) ;

__attribute__((used)) static void
kconfig_print_comment(FILE *fp, const char *value, void *arg)
{
 const char *p = value;
 size_t l;

 for (;;) {
  l = strcspn(p, "\n");
  fprintf(fp, "#");
  if (l) {
   fprintf(fp, " ");
   xfwrite(p, l, 1, fp);
   p += l;
  }
  fprintf(fp, "\n");
  if (*p++ == '\0')
   break;
 }
}
