
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_net_hdr {int dummy; } ;
struct mic_vring {int dummy; } ;
struct mic_copy_desc {int vr_idx; int update_used; TYPE_1__* iov; } ;
typedef void* ssize_t ;
struct TYPE_2__ {void* iov_len; } ;


 int VIRTIO_ID_NET ;

__attribute__((used)) static inline void txrx_prepare(int type, bool tx, struct mic_vring *vr,
    struct mic_copy_desc *copy, ssize_t len)
{
 copy->vr_idx = tx ? 0 : 1;
 copy->update_used = 1;
 if (type == VIRTIO_ID_NET)
  copy->iov[1].iov_len = len - sizeof(struct virtio_net_hdr);
 else
  copy->iov[0].iov_len = len;
}
