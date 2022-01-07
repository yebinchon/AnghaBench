
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_fs_vq {int * fud; } ;
struct virtio_fs {unsigned int nvqs; struct virtio_fs_vq* vqs; } ;


 int fuse_dev_free (int *) ;

__attribute__((used)) static void virtio_fs_free_devs(struct virtio_fs *fs)
{
 unsigned int i;

 for (i = 0; i < fs->nvqs; i++) {
  struct virtio_fs_vq *fsvq = &fs->vqs[i];

  if (!fsvq->fud)
   continue;

  fuse_dev_free(fsvq->fud);
  fsvq->fud = ((void*)0);
 }
}
