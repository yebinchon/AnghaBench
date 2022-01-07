
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct virtio_vsock_pkt_info {size_t flags; int op; int type; int msg; int vsk; int reply; } ;
struct TYPE_2__ {void* len; void* flags; void* dst_port; void* src_port; void* dst_cid; void* src_cid; void* op; void* type; } ;
struct virtio_vsock_pkt {size_t len; size_t buf_len; struct virtio_vsock_pkt* buf; int vsk; int reply; TYPE_1__ hdr; } ;


 int GFP_KERNEL ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (size_t) ;
 void* cpu_to_le64 (size_t) ;
 int kfree (struct virtio_vsock_pkt*) ;
 struct virtio_vsock_pkt* kmalloc (size_t,int ) ;
 struct virtio_vsock_pkt* kzalloc (int,int ) ;
 int memcpy_from_msg (struct virtio_vsock_pkt*,int ,size_t) ;
 int trace_virtio_transport_alloc_pkt (size_t,size_t,size_t,size_t,size_t,int ,int ,size_t) ;

__attribute__((used)) static struct virtio_vsock_pkt *
virtio_transport_alloc_pkt(struct virtio_vsock_pkt_info *info,
      size_t len,
      u32 src_cid,
      u32 src_port,
      u32 dst_cid,
      u32 dst_port)
{
 struct virtio_vsock_pkt *pkt;
 int err;

 pkt = kzalloc(sizeof(*pkt), GFP_KERNEL);
 if (!pkt)
  return ((void*)0);

 pkt->hdr.type = cpu_to_le16(info->type);
 pkt->hdr.op = cpu_to_le16(info->op);
 pkt->hdr.src_cid = cpu_to_le64(src_cid);
 pkt->hdr.dst_cid = cpu_to_le64(dst_cid);
 pkt->hdr.src_port = cpu_to_le32(src_port);
 pkt->hdr.dst_port = cpu_to_le32(dst_port);
 pkt->hdr.flags = cpu_to_le32(info->flags);
 pkt->len = len;
 pkt->hdr.len = cpu_to_le32(len);
 pkt->reply = info->reply;
 pkt->vsk = info->vsk;

 if (info->msg && len > 0) {
  pkt->buf = kmalloc(len, GFP_KERNEL);
  if (!pkt->buf)
   goto out_pkt;

  pkt->buf_len = len;

  err = memcpy_from_msg(pkt->buf, info->msg, len);
  if (err)
   goto out;
 }

 trace_virtio_transport_alloc_pkt(src_cid, src_port,
      dst_cid, dst_port,
      len,
      info->type,
      info->op,
      info->flags);

 return pkt;

out:
 kfree(pkt->buf);
out_pkt:
 kfree(pkt);
 return ((void*)0);
}
