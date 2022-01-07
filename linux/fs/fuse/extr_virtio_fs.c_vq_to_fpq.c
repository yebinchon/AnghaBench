
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtqueue {int dummy; } ;
struct fuse_pqueue {int dummy; } ;
struct TYPE_4__ {TYPE_1__* fud; } ;
struct TYPE_3__ {struct fuse_pqueue pq; } ;


 TYPE_2__* vq_to_fsvq (struct virtqueue*) ;

__attribute__((used)) static inline struct fuse_pqueue *vq_to_fpq(struct virtqueue *vq)
{
 return &vq_to_fsvq(vq)->fud->pq;
}
