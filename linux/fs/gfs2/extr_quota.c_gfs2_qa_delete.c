
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_rw_mutex; int * i_qadata; } ;
typedef int atomic_t ;


 int atomic_read (int *) ;
 int down_write (int *) ;
 int gfs2_qadata_cachep ;
 int kmem_cache_free (int ,int *) ;
 int up_write (int *) ;

void gfs2_qa_delete(struct gfs2_inode *ip, atomic_t *wcount)
{
 down_write(&ip->i_rw_mutex);
 if (ip->i_qadata && ((wcount == ((void*)0)) || (atomic_read(wcount) <= 1))) {
  kmem_cache_free(gfs2_qadata_cachep, ip->i_qadata);
  ip->i_qadata = ((void*)0);
 }
 up_write(&ip->i_rw_mutex);
}
