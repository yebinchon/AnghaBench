
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct rsvp_filter {int rwork; int exts; int res; } ;


 int __rsvp_delete_filter (struct rsvp_filter*) ;
 int rsvp_delete_filter_work ;
 scalar_t__ tcf_exts_get_net (int *) ;
 int tcf_queue_work (int *,int ) ;
 int tcf_unbind_filter (struct tcf_proto*,int *) ;

__attribute__((used)) static void rsvp_delete_filter(struct tcf_proto *tp, struct rsvp_filter *f)
{
 tcf_unbind_filter(tp, &f->res);




 if (tcf_exts_get_net(&f->exts))
  tcf_queue_work(&f->rwork, rsvp_delete_filter_work);
 else
  __rsvp_delete_filter(f);
}
