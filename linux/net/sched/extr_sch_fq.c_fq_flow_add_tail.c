
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fq_flow_head {struct fq_flow* last; struct fq_flow* first; } ;
struct fq_flow {struct fq_flow* next; } ;



__attribute__((used)) static void fq_flow_add_tail(struct fq_flow_head *head, struct fq_flow *flow)
{
 if (head->first)
  head->last->next = flow;
 else
  head->first = flow;
 head->last = flow;
 flow->next = ((void*)0);
}
