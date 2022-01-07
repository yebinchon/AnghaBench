
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_replay {int rp_mutex; int rp_ibuf; int rp_buf; scalar_t__ rp_buflen; int rp_status; } ;


 int mutex_init (int *) ;
 int nfserr_serverfault ;

__attribute__((used)) static void init_nfs4_replay(struct nfs4_replay *rp)
{
 rp->rp_status = nfserr_serverfault;
 rp->rp_buflen = 0;
 rp->rp_buf = rp->rp_ibuf;
 mutex_init(&rp->rp_mutex);
}
