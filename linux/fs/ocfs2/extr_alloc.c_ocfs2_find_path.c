
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_path {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
struct find_path_data {int index; struct ocfs2_path* path; } ;


 int __ocfs2_find_path (struct ocfs2_caching_info*,int ,int ,int ,struct find_path_data*) ;
 int find_path_ins ;
 int path_root_el (struct ocfs2_path*) ;

int ocfs2_find_path(struct ocfs2_caching_info *ci,
      struct ocfs2_path *path, u32 cpos)
{
 struct find_path_data data;

 data.index = 1;
 data.path = path;
 return __ocfs2_find_path(ci, path_root_el(path), cpos,
     find_path_ins, &data);
}
