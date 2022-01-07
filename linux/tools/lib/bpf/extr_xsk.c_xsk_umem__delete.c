
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int fill_size; int comp_size; } ;
struct xsk_umem {int fd; TYPE_5__ config; TYPE_3__* comp; TYPE_1__* fill; scalar_t__ refcount; } ;
struct TYPE_9__ {scalar_t__ desc; } ;
struct TYPE_7__ {scalar_t__ desc; } ;
struct xdp_mmap_offsets {TYPE_4__ cr; TYPE_2__ fr; } ;
typedef int socklen_t ;
typedef int off ;
typedef int __u64 ;
struct TYPE_8__ {scalar_t__ ring; } ;
struct TYPE_6__ {scalar_t__ ring; } ;


 int EBUSY ;
 int SOL_XDP ;
 int XDP_MMAP_OFFSETS ;
 int close (int ) ;
 int free (struct xsk_umem*) ;
 int getsockopt (int ,int ,int ,struct xdp_mmap_offsets*,int*) ;
 int munmap (scalar_t__,scalar_t__) ;

int xsk_umem__delete(struct xsk_umem *umem)
{
 struct xdp_mmap_offsets off;
 socklen_t optlen;
 int err;

 if (!umem)
  return 0;

 if (umem->refcount)
  return -EBUSY;

 optlen = sizeof(off);
 err = getsockopt(umem->fd, SOL_XDP, XDP_MMAP_OFFSETS, &off, &optlen);
 if (!err) {
  munmap(umem->fill->ring - off.fr.desc,
         off.fr.desc + umem->config.fill_size * sizeof(__u64));
  munmap(umem->comp->ring - off.cr.desc,
         off.cr.desc + umem->config.comp_size * sizeof(__u64));
 }

 close(umem->fd);
 free(umem);

 return 0;
}
