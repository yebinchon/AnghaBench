
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int root; } ;
struct rsvp_head {int dummy; } ;


 int ENOBUFS ;
 int GFP_KERNEL ;
 struct rsvp_head* kzalloc (int,int ) ;
 int rcu_assign_pointer (int ,struct rsvp_head*) ;

__attribute__((used)) static int rsvp_init(struct tcf_proto *tp)
{
 struct rsvp_head *data;

 data = kzalloc(sizeof(struct rsvp_head), GFP_KERNEL);
 if (data) {
  rcu_assign_pointer(tp->root, data);
  return 0;
 }
 return -ENOBUFS;
}
