
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int protocol; void* port; } ;
struct TYPE_5__ {void* port; } ;
struct nfs_parsed_mount_data {int need_mount; int * lsm_opts; int net; scalar_t__ minorversion; int selected_flavor; TYPE_2__ nfs_server; TYPE_1__ mount_server; int acdirmax; int acdirmin; int acregmax; int acregmin; int retrans; int timeo; } ;
struct TYPE_8__ {TYPE_3__* nsproxy; } ;
struct TYPE_7__ {int net_ns; } ;


 int GFP_KERNEL ;
 int NFS_DEF_ACDIRMAX ;
 int NFS_DEF_ACDIRMIN ;
 int NFS_DEF_ACREGMAX ;
 int NFS_DEF_ACREGMIN ;
 void* NFS_UNSPEC_PORT ;
 int NFS_UNSPEC_RETRANS ;
 int NFS_UNSPEC_TIMEO ;
 int RPC_AUTH_MAXFLAVOR ;
 int XPRT_TRANSPORT_TCP ;
 TYPE_4__* current ;
 struct nfs_parsed_mount_data* kzalloc (int,int ) ;

__attribute__((used)) static struct nfs_parsed_mount_data *nfs_alloc_parsed_mount_data(void)
{
 struct nfs_parsed_mount_data *data;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (data) {
  data->timeo = NFS_UNSPEC_TIMEO;
  data->retrans = NFS_UNSPEC_RETRANS;
  data->acregmin = NFS_DEF_ACREGMIN;
  data->acregmax = NFS_DEF_ACREGMAX;
  data->acdirmin = NFS_DEF_ACDIRMIN;
  data->acdirmax = NFS_DEF_ACDIRMAX;
  data->mount_server.port = NFS_UNSPEC_PORT;
  data->nfs_server.port = NFS_UNSPEC_PORT;
  data->nfs_server.protocol = XPRT_TRANSPORT_TCP;
  data->selected_flavor = RPC_AUTH_MAXFLAVOR;
  data->minorversion = 0;
  data->need_mount = 1;
  data->net = current->nsproxy->net_ns;
  data->lsm_opts = ((void*)0);
 }
 return data;
}
