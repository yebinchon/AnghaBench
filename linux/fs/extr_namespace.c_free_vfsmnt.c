
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int mnt_pcp; int mnt_devname; } ;


 int free_percpu (int ) ;
 int kfree_const (int ) ;
 int kmem_cache_free (int ,struct mount*) ;
 int mnt_cache ;

__attribute__((used)) static void free_vfsmnt(struct mount *mnt)
{
 kfree_const(mnt->mnt_devname);



 kmem_cache_free(mnt_cache, mnt);
}
