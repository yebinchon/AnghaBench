
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct nfs_parsed_mount_data* hostname; struct nfs_parsed_mount_data* export_path; } ;
struct TYPE_3__ {struct nfs_parsed_mount_data* hostname; } ;
struct nfs_parsed_mount_data {int lsm_opts; struct nfs_parsed_mount_data* fscache_uniq; TYPE_2__ nfs_server; TYPE_1__ mount_server; struct nfs_parsed_mount_data* client_address; } ;


 int kfree (struct nfs_parsed_mount_data*) ;
 int security_free_mnt_opts (int *) ;

__attribute__((used)) static void nfs_free_parsed_mount_data(struct nfs_parsed_mount_data *data)
{
 if (data) {
  kfree(data->client_address);
  kfree(data->mount_server.hostname);
  kfree(data->nfs_server.export_path);
  kfree(data->nfs_server.hostname);
  kfree(data->fscache_uniq);
  security_free_mnt_opts(&data->lsm_opts);
  kfree(data);
 }
}
