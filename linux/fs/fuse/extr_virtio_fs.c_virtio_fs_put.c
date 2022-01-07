
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_fs {int refcount; } ;


 int kref_put (int *,int ) ;
 int release_virtio_fs_obj ;

__attribute__((used)) static void virtio_fs_put(struct virtio_fs *fs)
{
 kref_put(&fs->refcount, release_virtio_fs_obj);
}
