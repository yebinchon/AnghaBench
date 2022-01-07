
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int vb2_queue; } ;
struct skeleton {int qlock; int buf_list; } ;
struct skel_buffer {int list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct skel_buffer* to_skel_buffer (struct vb2_v4l2_buffer*) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct skeleton* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void buffer_queue(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct skeleton *skel = vb2_get_drv_priv(vb->vb2_queue);
 struct skel_buffer *buf = to_skel_buffer(vbuf);
 unsigned long flags;

 spin_lock_irqsave(&skel->qlock, flags);
 list_add_tail(&buf->list, &skel->buf_list);



 spin_unlock_irqrestore(&skel->qlock, flags);
}
