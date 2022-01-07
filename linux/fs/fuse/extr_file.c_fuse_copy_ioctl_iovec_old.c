
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int iov_len; int iov_base; } ;
struct compat_iovec {int iov_len; int iov_base; } ;


 int EINVAL ;
 int EIO ;
 int compat_ptr (int ) ;
 int memcpy (struct iovec*,void*,size_t) ;

__attribute__((used)) static int fuse_copy_ioctl_iovec_old(struct iovec *dst, void *src,
         size_t transferred, unsigned count,
         bool is_compat)
{
 if (count * sizeof(struct iovec) != transferred)
  return -EIO;

 memcpy(dst, src, transferred);
 return 0;
}
