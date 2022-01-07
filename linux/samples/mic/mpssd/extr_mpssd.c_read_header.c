
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_blk_outhdr {int dummy; } ;
struct mic_copy_desc {int iovcnt; int update_used; scalar_t__ vr_idx; struct iovec* iov; } ;
struct iovec {int iov_len; struct virtio_blk_outhdr* iov_base; } ;
typedef int __u32 ;


 int MIC_VIRTIO_COPY_DESC ;
 int ioctl (int,int ,struct mic_copy_desc*) ;

__attribute__((used)) static int
read_header(int fd, struct virtio_blk_outhdr *hdr, __u32 desc_idx)
{
 struct iovec iovec;
 struct mic_copy_desc copy;

 iovec.iov_len = sizeof(*hdr);
 iovec.iov_base = hdr;
 copy.iov = &iovec;
 copy.iovcnt = 1;
 copy.vr_idx = 0;
 copy.update_used = 0;
 return ioctl(fd, MIC_VIRTIO_COPY_DESC, &copy);
}
