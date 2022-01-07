
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_association {scalar_t__ assoc_id; } ;
typedef scalar_t__ sctp_assoc_t ;
typedef int gfp_t ;


 int GFP_NOWAIT ;
 scalar_t__ SCTP_ALL_ASSOC ;
 int gfpflags_allow_blocking (int ) ;
 int idr_alloc_cyclic (int *,struct sctp_association*,scalar_t__,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int sctp_assocs_id ;
 int sctp_assocs_id_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int sctp_assoc_set_id(struct sctp_association *asoc, gfp_t gfp)
{
 bool preload = gfpflags_allow_blocking(gfp);
 int ret;


 if (asoc->assoc_id)
  return 0;

 if (preload)
  idr_preload(gfp);
 spin_lock_bh(&sctp_assocs_id_lock);



 ret = idr_alloc_cyclic(&sctp_assocs_id, asoc, SCTP_ALL_ASSOC + 1, 0,
          GFP_NOWAIT);
 spin_unlock_bh(&sctp_assocs_id_lock);
 if (preload)
  idr_preload_end();
 if (ret < 0)
  return ret;

 asoc->assoc_id = (sctp_assoc_t)ret;
 return 0;
}
