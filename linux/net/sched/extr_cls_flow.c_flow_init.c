
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int root; } ;
struct flow_head {int filters; } ;


 int ENOBUFS ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct flow_head* kzalloc (int,int ) ;
 int rcu_assign_pointer (int ,struct flow_head*) ;

__attribute__((used)) static int flow_init(struct tcf_proto *tp)
{
 struct flow_head *head;

 head = kzalloc(sizeof(*head), GFP_KERNEL);
 if (head == ((void*)0))
  return -ENOBUFS;
 INIT_LIST_HEAD(&head->filters);
 rcu_assign_pointer(tp->root, head);
 return 0;
}
