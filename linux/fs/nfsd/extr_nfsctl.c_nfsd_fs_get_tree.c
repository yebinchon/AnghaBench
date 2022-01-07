
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int net_ns; } ;


 int get_net (int ) ;
 int get_tree_keyed (struct fs_context*,int ,int ) ;
 int nfsd_fill_super ;

__attribute__((used)) static int nfsd_fs_get_tree(struct fs_context *fc)
{
 return get_tree_keyed(fc, nfsd_fill_super, get_net(fc->net_ns));
}
