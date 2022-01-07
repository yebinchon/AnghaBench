
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {void* srcline; } ;
typedef int int64_t ;


 void* hist_entry__srcline (struct hist_entry*) ;
 int strcmp (void*,void*) ;

__attribute__((used)) static int64_t
sort__srcline_cmp(struct hist_entry *left, struct hist_entry *right)
{
 if (!left->srcline)
  left->srcline = hist_entry__srcline(left);
 if (!right->srcline)
  right->srcline = hist_entry__srcline(right);

 return strcmp(right->srcline, left->srcline);
}
