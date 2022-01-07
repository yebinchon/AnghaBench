
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* fqdir; scalar_t__ fragments_tail; } ;
struct ipq {unsigned int rid; TYPE_2__ q; struct inet_peer* peer; } ;
struct inet_peer {int rid; } ;
struct TYPE_3__ {unsigned int max_dist; int net; } ;


 int IPSTATS_MIB_REASMFAILS ;
 int __IP_INC_STATS (int ,int ) ;
 unsigned int atomic_inc_return (int *) ;

__attribute__((used)) static int ip_frag_too_far(struct ipq *qp)
{
 struct inet_peer *peer = qp->peer;
 unsigned int max = qp->q.fqdir->max_dist;
 unsigned int start, end;

 int rc;

 if (!peer || !max)
  return 0;

 start = qp->rid;
 end = atomic_inc_return(&peer->rid);
 qp->rid = end;

 rc = qp->q.fragments_tail && (end - start) > max;

 if (rc)
  __IP_INC_STATS(qp->q.fqdir->net, IPSTATS_MIB_REASMFAILS);

 return rc;
}
