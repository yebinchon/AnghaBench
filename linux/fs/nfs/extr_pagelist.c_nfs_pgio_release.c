
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_pgio_header {TYPE_1__* completion_ops; } ;
struct TYPE_2__ {int (* completion ) (struct nfs_pgio_header*) ;} ;


 int stub1 (struct nfs_pgio_header*) ;

__attribute__((used)) static void nfs_pgio_release(void *calldata)
{
 struct nfs_pgio_header *hdr = calldata;
 hdr->completion_ops->completion(hdr);
}
