
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {void* srcfile; } ;
typedef int int64_t ;


 void* hist_entry__get_srcfile (struct hist_entry*) ;
 int strcmp (void*,void*) ;

__attribute__((used)) static int64_t
sort__srcfile_cmp(struct hist_entry *left, struct hist_entry *right)
{
 if (!left->srcfile)
  left->srcfile = hist_entry__get_srcfile(left);
 if (!right->srcfile)
  right->srcfile = hist_entry__get_srcfile(right);

 return strcmp(right->srcfile, left->srcfile);
}
