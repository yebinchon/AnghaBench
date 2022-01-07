
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dir_lookup_result {int * dl_prev_leaf_bh; } ;



__attribute__((used)) static int ocfs2_free_list_at_root(struct ocfs2_dir_lookup_result *res)
{
 return res->dl_prev_leaf_bh == ((void*)0);
}
