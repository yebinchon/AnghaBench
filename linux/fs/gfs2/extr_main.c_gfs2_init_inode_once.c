
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rs_node; } ;
struct gfs2_inode {int i_iopen_gh; int * i_hash_cache; TYPE_1__ i_res; int i_rgd_gh; int * i_qadata; int i_trunc_list; int i_rw_mutex; int i_sizehint; int i_inode; } ;


 int INIT_LIST_HEAD (int *) ;
 int RB_CLEAR_NODE (int *) ;
 int atomic_set (int *,int ) ;
 int gfs2_holder_mark_uninitialized (int *) ;
 int init_rwsem (int *) ;
 int inode_init_once (int *) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void gfs2_init_inode_once(void *foo)
{
 struct gfs2_inode *ip = foo;

 inode_init_once(&ip->i_inode);
 atomic_set(&ip->i_sizehint, 0);
 init_rwsem(&ip->i_rw_mutex);
 INIT_LIST_HEAD(&ip->i_trunc_list);
 ip->i_qadata = ((void*)0);
 gfs2_holder_mark_uninitialized(&ip->i_rgd_gh);
 memset(&ip->i_res, 0, sizeof(ip->i_res));
 RB_CLEAR_NODE(&ip->i_res.rs_node);
 ip->i_hash_cache = ((void*)0);
 gfs2_holder_mark_uninitialized(&ip->i_iopen_gh);
}
