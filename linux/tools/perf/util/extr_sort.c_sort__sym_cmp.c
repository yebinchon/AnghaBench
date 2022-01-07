
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sym; } ;
struct hist_entry {TYPE_1__ ms; int hists; int ip; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ _sort__addr_cmp (int ,int ) ;
 scalar_t__ _sort__sym_cmp (int ,int ) ;
 int dso ;
 scalar_t__ hists__has (int ,int ) ;
 scalar_t__ sort__dso_cmp (struct hist_entry*,struct hist_entry*) ;

__attribute__((used)) static int64_t
sort__sym_cmp(struct hist_entry *left, struct hist_entry *right)
{
 int64_t ret;

 if (!left->ms.sym && !right->ms.sym)
  return _sort__addr_cmp(left->ip, right->ip);





 if (!hists__has(left->hists, dso) || hists__has(right->hists, dso)) {
  ret = sort__dso_cmp(left, right);
  if (ret != 0)
   return ret;
 }

 return _sort__sym_cmp(left->ms.sym, right->ms.sym);
}
