
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_copy_desc {int iovcnt; int update_used; scalar_t__ vr_idx; struct iovec* iov; } ;
struct iovec {int iov_len; int * iov_base; } ;
typedef int __u8 ;


 int MIC_VIRTIO_COPY_DESC ;
 int ioctl (int,int ,struct mic_copy_desc*) ;

__attribute__((used)) static int
write_status(int fd, __u8 *status)
{
 struct iovec iovec;
 struct mic_copy_desc copy;

 iovec.iov_base = status;
 iovec.iov_len = sizeof(*status);
 copy.iov = &iovec;
 copy.iovcnt = 1;
 copy.vr_idx = 0;
 copy.update_used = 1;
 return ioctl(fd, MIC_VIRTIO_COPY_DESC, &copy);
}
