
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct user_namespace {int dummy; } ;
struct nfs3_symlinkargs {int pathlen; int pages; int sattr; } ;


 int encode_nfspath3 (struct xdr_stream*,int ,int ) ;
 int encode_sattr3 (struct xdr_stream*,int ,struct user_namespace*) ;

__attribute__((used)) static void encode_symlinkdata3(struct xdr_stream *xdr,
    const void *data,
    struct user_namespace *userns)
{
 const struct nfs3_symlinkargs *args = data;

 encode_sattr3(xdr, args->sattr, userns);
 encode_nfspath3(xdr, args->pages, args->pathlen);
}
