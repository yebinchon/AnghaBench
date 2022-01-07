
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mdev_state {int ops_lock; } ;
struct mdev_device {int dummy; } ;
struct mbochs_dmabuf {int buf; } ;


 int EINVAL ;
 int ENOENT ;
 int dma_buf_fd (int ,int ) ;
 int mbochs_dmabuf_export (struct mbochs_dmabuf*) ;
 struct mbochs_dmabuf* mbochs_dmabuf_find_by_id (struct mdev_state*,int ) ;
 struct mdev_state* mdev_get_drvdata (struct mdev_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mbochs_get_gfx_dmabuf(struct mdev_device *mdev,
     u32 id)
{
 struct mdev_state *mdev_state = mdev_get_drvdata(mdev);
 struct mbochs_dmabuf *dmabuf;

 mutex_lock(&mdev_state->ops_lock);

 dmabuf = mbochs_dmabuf_find_by_id(mdev_state, id);
 if (!dmabuf) {
  mutex_unlock(&mdev_state->ops_lock);
  return -ENOENT;
 }

 if (!dmabuf->buf)
  mbochs_dmabuf_export(dmabuf);

 mutex_unlock(&mdev_state->ops_lock);

 if (!dmabuf->buf)
  return -EINVAL;

 return dma_buf_fd(dmabuf->buf, 0);
}
