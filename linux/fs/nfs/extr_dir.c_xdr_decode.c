
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfs_entry {TYPE_1__* fattr; } ;
struct TYPE_5__ {int (* decode ) (struct xdr_stream*,struct nfs_entry*,int ) ;int gencount; int timestamp; int plus; } ;
typedef TYPE_2__ nfs_readdir_descriptor_t ;
struct TYPE_4__ {int gencount; int time_start; } ;


 int stub1 (struct xdr_stream*,struct nfs_entry*,int ) ;

__attribute__((used)) static int xdr_decode(nfs_readdir_descriptor_t *desc,
        struct nfs_entry *entry, struct xdr_stream *xdr)
{
 int error;

 error = desc->decode(xdr, entry, desc->plus);
 if (error)
  return error;
 entry->fattr->time_start = desc->timestamp;
 entry->fattr->gencount = desc->gencount;
 return 0;
}
