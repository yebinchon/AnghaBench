
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcindex_filter_result {int rwork; int exts; int res; } ;
struct tcindex_filter {int result; int next; } ;
struct tcindex_data {int hash; int rwork; int * h; struct tcindex_filter_result* perfect; } ;
struct tcf_proto {int root; } ;
struct netlink_ext_ack {int dummy; } ;


 int __tcindex_destroy_rexts (struct tcindex_filter_result*) ;
 int pr_debug (char*,struct tcf_proto*,struct tcindex_data*) ;
 void* rtnl_dereference (int ) ;
 scalar_t__ tcf_exts_get_net (int *) ;
 int tcf_queue_work (int *,int ) ;
 int tcf_unbind_filter (struct tcf_proto*,int *) ;
 int tcindex_delete (struct tcf_proto*,int *,int*,int,int *) ;
 int tcindex_destroy_rexts_work ;
 int tcindex_destroy_work ;

__attribute__((used)) static void tcindex_destroy(struct tcf_proto *tp, bool rtnl_held,
       struct netlink_ext_ack *extack)
{
 struct tcindex_data *p = rtnl_dereference(tp->root);
 int i;

 pr_debug("tcindex_destroy(tp %p),p %p\n", tp, p);

 if (p->perfect) {
  for (i = 0; i < p->hash; i++) {
   struct tcindex_filter_result *r = p->perfect + i;

   tcf_unbind_filter(tp, &r->res);
   if (tcf_exts_get_net(&r->exts))
    tcf_queue_work(&r->rwork,
            tcindex_destroy_rexts_work);
   else
    __tcindex_destroy_rexts(r);
  }
 }

 for (i = 0; p->h && i < p->hash; i++) {
  struct tcindex_filter *f, *next;
  bool last;

  for (f = rtnl_dereference(p->h[i]); f; f = next) {
   next = rtnl_dereference(f->next);
   tcindex_delete(tp, &f->result, &last, rtnl_held, ((void*)0));
  }
 }

 tcf_queue_work(&p->rwork, tcindex_destroy_work);
}
