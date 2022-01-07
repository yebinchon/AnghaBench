
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct dentry {int dummy; } ;
struct cache_detail {int name; } ;


 int dput (struct dentry*) ;
 struct dentry* rpc_d_lookup_sb (struct super_block*,char*) ;
 int sunrpc_cache_register_pipefs (struct dentry*,int ,int,struct cache_detail*) ;

int nfs_cache_register_sb(struct super_block *sb, struct cache_detail *cd)
{
 int ret;
 struct dentry *dir;

 dir = rpc_d_lookup_sb(sb, "cache");
 ret = sunrpc_cache_register_pipefs(dir, cd->name, 0600, cd);
 dput(dir);
 return ret;
}
