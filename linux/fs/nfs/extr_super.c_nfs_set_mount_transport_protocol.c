
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ protocol; } ;
struct TYPE_3__ {int protocol; } ;
struct nfs_parsed_mount_data {TYPE_2__ mount_server; TYPE_1__ nfs_server; } ;





 int nfs_validate_transport_protocol (struct nfs_parsed_mount_data*) ;

__attribute__((used)) static void nfs_set_mount_transport_protocol(struct nfs_parsed_mount_data *mnt)
{
 nfs_validate_transport_protocol(mnt);

 if (mnt->mount_server.protocol == 128 ||
     mnt->mount_server.protocol == 129)
   return;
 switch (mnt->nfs_server.protocol) {
 case 128:
  mnt->mount_server.protocol = 128;
  break;
 case 129:
 case 130:
  mnt->mount_server.protocol = 129;
 }
}
