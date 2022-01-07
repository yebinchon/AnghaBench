
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int root; } ;
struct basic_head {int handle_idr; int flist; } ;


 int ENOBUFS ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int idr_init (int *) ;
 struct basic_head* kzalloc (int,int ) ;
 int rcu_assign_pointer (int ,struct basic_head*) ;

__attribute__((used)) static int basic_init(struct tcf_proto *tp)
{
 struct basic_head *head;

 head = kzalloc(sizeof(*head), GFP_KERNEL);
 if (head == ((void*)0))
  return -ENOBUFS;
 INIT_LIST_HEAD(&head->flist);
 idr_init(&head->handle_idr);
 rcu_assign_pointer(tp->root, head);
 return 0;
}
