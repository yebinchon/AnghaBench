
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_gem_close {int handle; int member_0; } ;


 int DRM_IOCTL_GEM_CLOSE ;
 int ioctl (int,int ,struct drm_gem_close*) ;

void close_handle(int vgem_fd, uint32_t handle)
{
 struct drm_gem_close close = { 0 };

 close.handle = handle;
 ioctl(vgem_fd, DRM_IOCTL_GEM_CLOSE, &close);
}
