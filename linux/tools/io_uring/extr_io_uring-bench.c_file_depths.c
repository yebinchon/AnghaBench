
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submitter {unsigned int nr_files; struct file* files; } ;
struct file {int pending_ios; } ;


 int sprintf (char*,char*,int) ;
 struct submitter* submitters ;

__attribute__((used)) static void file_depths(char *buf)
{
 struct submitter *s = &submitters[0];
 unsigned i;
 char *p;

 buf[0] = '\0';
 p = buf;
 for (i = 0; i < s->nr_files; i++) {
  struct file *f = &s->files[i];

  if (i + 1 == s->nr_files)
   p += sprintf(p, "%d", f->pending_ios);
  else
   p += sprintf(p, "%d, ", f->pending_ios);
 }
}
