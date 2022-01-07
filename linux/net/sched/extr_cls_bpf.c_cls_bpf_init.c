
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int root; } ;
struct cls_bpf_head {int handle_idr; int plist; } ;


 int ENOBUFS ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD_RCU (int *) ;
 int idr_init (int *) ;
 struct cls_bpf_head* kzalloc (int,int ) ;
 int rcu_assign_pointer (int ,struct cls_bpf_head*) ;

__attribute__((used)) static int cls_bpf_init(struct tcf_proto *tp)
{
 struct cls_bpf_head *head;

 head = kzalloc(sizeof(*head), GFP_KERNEL);
 if (head == ((void*)0))
  return -ENOBUFS;

 INIT_LIST_HEAD_RCU(&head->plist);
 idr_init(&head->handle_idr);
 rcu_assign_pointer(tp->root, head);

 return 0;
}
