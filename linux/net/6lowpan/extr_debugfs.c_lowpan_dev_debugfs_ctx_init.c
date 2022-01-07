
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int * table; } ;
struct lowpan_dev {TYPE_1__ ctx; } ;
struct dentry {int dummy; } ;


 int LOWPAN_IPHC_CTX_TABLE_SIZE ;
 int WARN_ON_ONCE (int) ;
 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int debugfs_create_file (char*,int,struct dentry*,int *,int *) ;
 int lowpan_ctx_flag_active_fops ;
 int lowpan_ctx_flag_c_fops ;
 int lowpan_ctx_pfx_fops ;
 int lowpan_ctx_plen_fops ;
 struct lowpan_dev* lowpan_dev (struct net_device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void lowpan_dev_debugfs_ctx_init(struct net_device *dev,
     struct dentry *ctx, u8 id)
{
 struct lowpan_dev *ldev = lowpan_dev(dev);
 struct dentry *root;
 char buf[32];

 WARN_ON_ONCE(id > LOWPAN_IPHC_CTX_TABLE_SIZE);

 sprintf(buf, "%d", id);

 root = debugfs_create_dir(buf, ctx);

 debugfs_create_file("active", 0644, root, &ldev->ctx.table[id],
       &lowpan_ctx_flag_active_fops);

 debugfs_create_file("compression", 0644, root, &ldev->ctx.table[id],
       &lowpan_ctx_flag_c_fops);

 debugfs_create_file("prefix", 0644, root, &ldev->ctx.table[id],
       &lowpan_ctx_pfx_fops);

 debugfs_create_file("prefix_len", 0644, root, &ldev->ctx.table[id],
       &lowpan_ctx_plen_fops);
}
