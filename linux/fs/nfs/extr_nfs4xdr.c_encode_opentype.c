
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_openargs {int open_flags; } ;
typedef int __be32 ;


 int NFS4_OPEN_CREATE ;
 int NFS4_OPEN_NOCREATE ;
 int O_CREAT ;
 int cpu_to_be32 (int ) ;
 int encode_createmode (struct xdr_stream*,struct nfs_openargs const*) ;
 int * reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_opentype(struct xdr_stream *xdr, const struct nfs_openargs *arg)
{
 __be32 *p;

 p = reserve_space(xdr, 4);
 switch (arg->open_flags & O_CREAT) {
 case 0:
  *p = cpu_to_be32(NFS4_OPEN_NOCREATE);
  break;
 default:
  *p = cpu_to_be32(NFS4_OPEN_CREATE);
  encode_createmode(xdr, arg);
 }
}
