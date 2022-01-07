
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {int unfolded; scalar_t__ has_children; } ;


 char tree__folded_sign (int ) ;

__attribute__((used)) static char hist_entry__folded(const struct hist_entry *he)
{
 return he->has_children ? tree__folded_sign(he->unfolded) : ' ';
}
