
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int root; } ;
struct route4_head {int dummy; } ;


 int ENOBUFS ;
 int GFP_KERNEL ;
 struct route4_head* kzalloc (int,int ) ;
 int rcu_assign_pointer (int ,struct route4_head*) ;

__attribute__((used)) static int route4_init(struct tcf_proto *tp)
{
 struct route4_head *head;

 head = kzalloc(sizeof(struct route4_head), GFP_KERNEL);
 if (head == ((void*)0))
  return -ENOBUFS;

 rcu_assign_pointer(tp->root, head);
 return 0;
}
