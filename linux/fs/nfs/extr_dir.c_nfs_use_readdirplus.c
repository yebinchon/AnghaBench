
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dir_context {scalar_t__ pos; } ;
struct TYPE_2__ {int flags; } ;


 int NFS_CAP_READDIRPLUS ;
 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_ADVISE_RDPLUS ;
 int nfs_server_capable (struct inode*,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static
bool nfs_use_readdirplus(struct inode *dir, struct dir_context *ctx)
{
 if (!nfs_server_capable(dir, NFS_CAP_READDIRPLUS))
  return 0;
 if (test_and_clear_bit(NFS_INO_ADVISE_RDPLUS, &NFS_I(dir)->flags))
  return 1;
 if (ctx->pos == 0)
  return 1;
 return 0;
}
