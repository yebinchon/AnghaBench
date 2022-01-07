
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int d_lock; int d_flags; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct dcookie_struct {TYPE_1__ path; } ;


 int DCACHE_COOKIE ;
 int dcookie_cache ;
 int kmem_cache_free (int ,struct dcookie_struct*) ;
 int path_put (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void free_dcookie(struct dcookie_struct * dcs)
{
 struct dentry *d = dcs->path.dentry;

 spin_lock(&d->d_lock);
 d->d_flags &= ~DCACHE_COOKIE;
 spin_unlock(&d->d_lock);

 path_put(&dcs->path);
 kmem_cache_free(dcookie_cache, dcs);
}
