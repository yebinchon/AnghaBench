
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct user_namespace {int dummy; } ;
struct nfs3_createargs {int createmode; int verifier; int sattr; } ;


 int BUG () ;



 int encode_createverf3 (struct xdr_stream*,int ) ;
 int encode_sattr3 (struct xdr_stream*,int ,struct user_namespace*) ;
 int encode_uint32 (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_createhow3(struct xdr_stream *xdr,
         const struct nfs3_createargs *args,
         struct user_namespace *userns)
{
 encode_uint32(xdr, args->createmode);
 switch (args->createmode) {
 case 128:
 case 129:
  encode_sattr3(xdr, args->sattr, userns);
  break;
 case 130:
  encode_createverf3(xdr, args->verifier);
  break;
 default:
  BUG();
 }
}
