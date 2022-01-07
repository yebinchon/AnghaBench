
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_buffer {int vb2_queue; } ;
struct TYPE_3__ {unsigned long sizeimage; } ;
struct skeleton {TYPE_2__* pdev; TYPE_1__ format; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*,unsigned long,unsigned long) ;
 struct skeleton* vb2_get_drv_priv (int ) ;
 unsigned long vb2_plane_size (struct vb2_buffer*,int ) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int ,unsigned long) ;

__attribute__((used)) static int buffer_prepare(struct vb2_buffer *vb)
{
 struct skeleton *skel = vb2_get_drv_priv(vb->vb2_queue);
 unsigned long size = skel->format.sizeimage;

 if (vb2_plane_size(vb, 0) < size) {
  dev_err(&skel->pdev->dev, "buffer too small (%lu < %lu)\n",
    vb2_plane_size(vb, 0), size);
  return -EINVAL;
 }

 vb2_set_plane_payload(vb, 0, size);
 return 0;
}
