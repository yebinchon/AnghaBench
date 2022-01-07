
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ar_quota; } ;
struct gfs2_sbd {TYPE_1__ sd_args; } ;
struct gfs2_inode {int i_rw_mutex; int * i_qadata; int i_inode; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ GFS2_QUOTA_OFF ;
 struct gfs2_sbd* GFS2_SB (int *) ;
 int down_write (int *) ;
 int gfs2_qadata_cachep ;
 int * kmem_cache_zalloc (int ,int ) ;
 int up_write (int *) ;

int gfs2_qa_alloc(struct gfs2_inode *ip)
{
 int error = 0;
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);

 if (sdp->sd_args.ar_quota == GFS2_QUOTA_OFF)
  return 0;

 down_write(&ip->i_rw_mutex);
 if (ip->i_qadata == ((void*)0)) {
  ip->i_qadata = kmem_cache_zalloc(gfs2_qadata_cachep, GFP_NOFS);
  if (!ip->i_qadata)
   error = -ENOMEM;
 }
 up_write(&ip->i_rw_mutex);
 return error;
}
