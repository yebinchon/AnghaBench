
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int dummy; } ;


 int bpf_fill_super ;
 int get_tree_nodev (struct fs_context*,int ) ;

__attribute__((used)) static int bpf_get_tree(struct fs_context *fc)
{
 return get_tree_nodev(fc, bpf_fill_super);
}
