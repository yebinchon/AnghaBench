
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cycles; } ;
struct hist_entry {TYPE_1__ diff; } ;
typedef scalar_t__ s64 ;
typedef scalar_t__ int64_t ;


 int hist_entry__has_pairs (struct hist_entry*) ;
 scalar_t__ labs (int ) ;

__attribute__((used)) static int64_t block_cycles_diff_cmp(struct hist_entry *left,
         struct hist_entry *right)
{
 bool pairs_left = hist_entry__has_pairs(left);
 bool pairs_right = hist_entry__has_pairs(right);
 s64 l, r;

 if (!pairs_left && !pairs_right)
  return 0;

 l = labs(left->diff.cycles);
 r = labs(right->diff.cycles);
 return r - l;
}
