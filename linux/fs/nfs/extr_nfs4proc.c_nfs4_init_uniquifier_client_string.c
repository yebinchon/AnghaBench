
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_client {char* cl_owner_id; TYPE_2__* cl_rpcclient; int cl_minorversion; TYPE_1__* rpc_ops; } ;
struct TYPE_4__ {int cl_nodename; } ;
struct TYPE_3__ {int version; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NFS4_OPAQUE_LIMIT ;
 char* kmalloc (size_t,int ) ;
 int nfs4_client_id_uniquifier ;
 int scnprintf (char*,size_t,char*,int ,int ,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int
nfs4_init_uniquifier_client_string(struct nfs_client *clp)
{
 size_t len;
 char *str;

 len = 10 + 10 + 1 + 10 + 1 +
  strlen(nfs4_client_id_uniquifier) + 1 +
  strlen(clp->cl_rpcclient->cl_nodename) + 1;

 if (len > NFS4_OPAQUE_LIMIT + 1)
  return -EINVAL;






 str = kmalloc(len, GFP_KERNEL);
 if (!str)
  return -ENOMEM;

 scnprintf(str, len, "Linux NFSv%u.%u %s/%s",
   clp->rpc_ops->version, clp->cl_minorversion,
   nfs4_client_id_uniquifier,
   clp->cl_rpcclient->cl_nodename);
 clp->cl_owner_id = str;
 return 0;
}
