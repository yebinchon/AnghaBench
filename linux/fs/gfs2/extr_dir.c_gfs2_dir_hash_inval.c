
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i_lock; } ;
struct gfs2_inode {TYPE_1__ i_inode; int * i_hash_cache; } ;
typedef int __be64 ;


 int kvfree (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void gfs2_dir_hash_inval(struct gfs2_inode *ip)
{
 __be64 *hc;

 spin_lock(&ip->i_inode.i_lock);
 hc = ip->i_hash_cache;
 ip->i_hash_cache = ((void*)0);
 spin_unlock(&ip->i_inode.i_lock);

 kvfree(hc);
}
