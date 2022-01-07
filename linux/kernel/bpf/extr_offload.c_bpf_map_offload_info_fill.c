
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path {TYPE_1__* dentry; } ;
struct ns_get_path_bpf_map_args {struct bpf_map_info* info; int offmap; } ;
struct inode {int i_ino; TYPE_2__* i_sb; } ;
struct bpf_map_info {int netns_ino; int netns_dev; int ifindex; } ;
struct bpf_map {int dummy; } ;
struct TYPE_4__ {int s_dev; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int bpf_map_offload_info_fill_ns ;
 int map_to_offmap (struct bpf_map*) ;
 int new_encode_dev (int ) ;
 void* ns_get_path_cb (struct path*,int ,struct ns_get_path_bpf_map_args*) ;
 int path_put (struct path*) ;

int bpf_map_offload_info_fill(struct bpf_map_info *info, struct bpf_map *map)
{
 struct ns_get_path_bpf_map_args args = {
  .offmap = map_to_offmap(map),
  .info = info,
 };
 struct inode *ns_inode;
 struct path ns_path;
 void *res;

 res = ns_get_path_cb(&ns_path, bpf_map_offload_info_fill_ns, &args);
 if (IS_ERR(res)) {
  if (!info->ifindex)
   return -ENODEV;
  return PTR_ERR(res);
 }

 ns_inode = ns_path.dentry->d_inode;
 info->netns_dev = new_encode_dev(ns_inode->i_sb->s_dev);
 info->netns_ino = ns_inode->i_ino;
 path_put(&ns_path);

 return 0;
}
