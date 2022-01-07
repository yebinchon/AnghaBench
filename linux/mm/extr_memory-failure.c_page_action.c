
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_state {int (* action ) (struct page*,unsigned long) ;size_t type; } ;
struct page {int dummy; } ;


 int EBUSY ;
 int MF_DELAYED ;
 int MF_FAILED ;
 int MF_RECOVERED ;
 int * action_page_types ;
 int action_result (unsigned long,size_t,int) ;
 int me_swapcache_dirty (struct page*,unsigned long) ;
 int page_count (struct page*) ;
 int pr_err (char*,unsigned long,int ,int) ;
 int stub1 (struct page*,unsigned long) ;

__attribute__((used)) static int page_action(struct page_state *ps, struct page *p,
   unsigned long pfn)
{
 int result;
 int count;

 result = ps->action(p, pfn);

 count = page_count(p) - 1;
 if (ps->action == me_swapcache_dirty && result == MF_DELAYED)
  count--;
 if (count > 0) {
  pr_err("Memory failure: %#lx: %s still referenced by %d users\n",
         pfn, action_page_types[ps->type], count);
  result = MF_FAILED;
 }
 action_result(pfn, ps->type, result);






 return (result == MF_RECOVERED || result == MF_DELAYED) ? 0 : -EBUSY;
}
