
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fuse_iqueue {int reqctr; } ;


 scalar_t__ FUSE_REQ_ID_STEP ;

u64 fuse_get_unique(struct fuse_iqueue *fiq)
{
 fiq->reqctr += FUSE_REQ_ID_STEP;
 return fiq->reqctr;
}
