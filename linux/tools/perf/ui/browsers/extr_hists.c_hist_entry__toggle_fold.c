
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {int unfolded; int has_children; } ;



__attribute__((used)) static bool hist_entry__toggle_fold(struct hist_entry *he)
{
 if (!he)
  return 0;

 if (!he->has_children)
  return 0;

 he->unfolded = !he->unfolded;
 return 1;
}
