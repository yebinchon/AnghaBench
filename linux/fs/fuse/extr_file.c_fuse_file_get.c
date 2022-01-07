
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_file {int count; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static struct fuse_file *fuse_file_get(struct fuse_file *ff)
{
 refcount_inc(&ff->count);
 return ff;
}
