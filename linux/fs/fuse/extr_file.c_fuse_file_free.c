
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct fuse_file {TYPE_1__ readdir; struct fuse_file* release_args; } ;


 int kfree (struct fuse_file*) ;
 int mutex_destroy (int *) ;

void fuse_file_free(struct fuse_file *ff)
{
 kfree(ff->release_args);
 mutex_destroy(&ff->readdir.lock);
 kfree(ff);
}
