
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_path {TYPE_1__* p_node; } ;
struct TYPE_2__ {int * el; int * bh; } ;


 int BUG_ON (int) ;
 int OCFS2_MAX_PATH_DEPTH ;
 int brelse (int *) ;
 scalar_t__ path_root_access (struct ocfs2_path*) ;
 scalar_t__ path_root_bh (struct ocfs2_path*) ;

__attribute__((used)) static void ocfs2_mv_path(struct ocfs2_path *dest, struct ocfs2_path *src)
{
 int i;

 BUG_ON(path_root_bh(dest) != path_root_bh(src));
 BUG_ON(path_root_access(dest) != path_root_access(src));

 for(i = 1; i < OCFS2_MAX_PATH_DEPTH; i++) {
  brelse(dest->p_node[i].bh);

  dest->p_node[i].bh = src->p_node[i].bh;
  dest->p_node[i].el = src->p_node[i].el;

  src->p_node[i].bh = ((void*)0);
  src->p_node[i].el = ((void*)0);
 }
}
