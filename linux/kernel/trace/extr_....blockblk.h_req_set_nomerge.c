
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct request* last_merge; } ;
struct request {int cmd_flags; } ;


 int REQ_NOMERGE ;

__attribute__((used)) static inline void req_set_nomerge(struct request_queue *q, struct request *req)
{
 req->cmd_flags |= REQ_NOMERGE;
 if (req == q->last_merge)
  q->last_merge = ((void*)0);
}
