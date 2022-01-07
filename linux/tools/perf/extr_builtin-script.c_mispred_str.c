
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ predicted; scalar_t__ mispred; } ;
struct branch_entry {TYPE_1__ flags; } ;



__attribute__((used)) static inline char
mispred_str(struct branch_entry *br)
{
 if (!(br->flags.mispred || br->flags.predicted))
  return '-';

 return br->flags.predicted ? 'P' : 'M';
}
