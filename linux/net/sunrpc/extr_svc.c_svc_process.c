
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct svc_serv {TYPE_4__* sv_stats; } ;
struct TYPE_7__ {TYPE_2__* tail; int buflen; scalar_t__ page_len; scalar_t__ page_base; scalar_t__ len; int * pages; struct kvec* head; } ;
struct TYPE_5__ {struct kvec* head; } ;
struct svc_rqst {scalar_t__ rq_prot; TYPE_3__ rq_res; int * rq_respages; int * rq_next_page; struct svc_serv* rq_server; TYPE_1__ rq_arg; } ;
struct kvec {scalar_t__ iov_len; int iov_base; } ;
struct TYPE_8__ {int rpcbadfmt; } ;
struct TYPE_6__ {scalar_t__ iov_len; int * iov_base; } ;


 scalar_t__ IPPROTO_TCP ;
 int PAGE_SIZE ;
 scalar_t__ likely (int ) ;
 int page_address (int ) ;
 int svc_drop (struct svc_rqst*) ;
 scalar_t__ svc_getnl (struct kvec*) ;
 int svc_printk (struct svc_rqst*,char*,scalar_t__) ;
 int svc_process_common (struct svc_rqst*,struct kvec*,struct kvec*) ;
 int svc_putnl (struct kvec*,int ) ;
 int svc_send (struct svc_rqst*) ;

int
svc_process(struct svc_rqst *rqstp)
{
 struct kvec *argv = &rqstp->rq_arg.head[0];
 struct kvec *resv = &rqstp->rq_res.head[0];
 struct svc_serv *serv = rqstp->rq_server;
 u32 dir;





 rqstp->rq_next_page = &rqstp->rq_respages[1];
 resv->iov_base = page_address(rqstp->rq_respages[0]);
 resv->iov_len = 0;
 rqstp->rq_res.pages = rqstp->rq_respages + 1;
 rqstp->rq_res.len = 0;
 rqstp->rq_res.page_base = 0;
 rqstp->rq_res.page_len = 0;
 rqstp->rq_res.buflen = PAGE_SIZE;
 rqstp->rq_res.tail[0].iov_base = ((void*)0);
 rqstp->rq_res.tail[0].iov_len = 0;

 dir = svc_getnl(argv);
 if (dir != 0) {

  svc_printk(rqstp, "bad direction %d, dropping request\n", dir);
  serv->sv_stats->rpcbadfmt++;
  goto out_drop;
 }


 if (rqstp->rq_prot == IPPROTO_TCP)
  svc_putnl(resv, 0);


 if (likely(svc_process_common(rqstp, argv, resv)))
  return svc_send(rqstp);

out_drop:
 svc_drop(rqstp);
 return 0;
}
