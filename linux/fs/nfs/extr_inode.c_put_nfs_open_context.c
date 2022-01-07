
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {int dummy; } ;


 int __put_nfs_open_context (struct nfs_open_context*,int ) ;

void put_nfs_open_context(struct nfs_open_context *ctx)
{
 __put_nfs_open_context(ctx, 0);
}
