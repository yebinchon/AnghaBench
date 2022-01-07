
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct skeleton {int dummy; } ;


 int VB2_BUF_STATE_ERROR ;
 int return_all_buffers (struct skeleton*,int ) ;
 struct skeleton* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void stop_streaming(struct vb2_queue *vq)
{
 struct skeleton *skel = vb2_get_drv_priv(vq);




 return_all_buffers(skel, VB2_BUF_STATE_ERROR);
}
