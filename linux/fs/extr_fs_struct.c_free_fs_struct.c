
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_struct {int pwd; int root; } ;


 int fs_cachep ;
 int kmem_cache_free (int ,struct fs_struct*) ;
 int path_put (int *) ;

void free_fs_struct(struct fs_struct *fs)
{
 path_put(&fs->root);
 path_put(&fs->pwd);
 kmem_cache_free(fs_cachep, fs);
}
