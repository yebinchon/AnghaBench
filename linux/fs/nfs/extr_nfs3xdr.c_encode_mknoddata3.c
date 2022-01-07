
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct user_namespace {int dummy; } ;
struct nfs3_mknodargs {int type; int sattr; } ;


 int BUG () ;






 int encode_devicedata3 (struct xdr_stream*,struct nfs3_mknodargs const*,struct user_namespace*) ;
 int encode_ftype3 (struct xdr_stream*,int) ;
 int encode_sattr3 (struct xdr_stream*,int ,struct user_namespace*) ;

__attribute__((used)) static void encode_mknoddata3(struct xdr_stream *xdr,
         const struct nfs3_mknodargs *args,
         struct user_namespace *userns)
{
 encode_ftype3(xdr, args->type);
 switch (args->type) {
 case 132:
 case 133:
  encode_devicedata3(xdr, args, userns);
  break;
 case 128:
 case 130:
  encode_sattr3(xdr, args->sattr, userns);
  break;
 case 129:
 case 131:
  break;
 default:
  BUG();
 }
}
