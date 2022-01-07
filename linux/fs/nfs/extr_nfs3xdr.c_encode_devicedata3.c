
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct user_namespace {int dummy; } ;
struct nfs3_mknodargs {int rdev; int sattr; } ;


 int encode_sattr3 (struct xdr_stream*,int ,struct user_namespace*) ;
 int encode_specdata3 (struct xdr_stream*,int ) ;

__attribute__((used)) static void encode_devicedata3(struct xdr_stream *xdr,
          const struct nfs3_mknodargs *args,
          struct user_namespace *userns)
{
 encode_sattr3(xdr, args->sattr, userns);
 encode_specdata3(xdr, args->rdev);
}
