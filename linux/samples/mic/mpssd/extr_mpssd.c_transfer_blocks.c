
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_copy_desc {int update_used; scalar_t__ vr_idx; int iovcnt; struct iovec* iov; } ;
struct iovec {int dummy; } ;
typedef int __u32 ;


 int MIC_VIRTIO_COPY_DESC ;
 int ioctl (int,int ,struct mic_copy_desc*) ;

__attribute__((used)) static int
transfer_blocks(int fd, struct iovec *iovec, __u32 iovcnt)
{
 struct mic_copy_desc copy;

 copy.iov = iovec;
 copy.iovcnt = iovcnt;
 copy.vr_idx = 0;
 copy.update_used = 0;
 return ioctl(fd, MIC_VIRTIO_COPY_DESC, &copy);
}
