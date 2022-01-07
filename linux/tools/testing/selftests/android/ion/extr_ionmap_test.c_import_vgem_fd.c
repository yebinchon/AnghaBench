
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct drm_prime_handle {int fd; scalar_t__ handle; scalar_t__ flags; int member_0; } ;


 int DRM_IOCTL_PRIME_FD_TO_HANDLE ;
 int ioctl (int,int ,struct drm_prime_handle*) ;

int import_vgem_fd(int vgem_fd, int dma_buf_fd, uint32_t *handle)
{
 struct drm_prime_handle import_handle = { 0 };
 int ret;

 import_handle.fd = dma_buf_fd;
 import_handle.flags = 0;
 import_handle.handle = 0;

 ret = ioctl(vgem_fd, DRM_IOCTL_PRIME_FD_TO_HANDLE, &import_handle);
 if (ret == 0)
  *handle = import_handle.handle;
 return ret;
}
