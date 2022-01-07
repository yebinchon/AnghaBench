
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct qstr {int len; int name; } ;
struct nfs_renameargs {int new_dir; int old_dir; struct qstr* new_name; struct qstr* old_name; } ;


 int encode_diropargs3 (struct xdr_stream*,int ,int ,int ) ;

__attribute__((used)) static void nfs3_xdr_enc_rename3args(struct rpc_rqst *req,
         struct xdr_stream *xdr,
         const void *data)
{
 const struct nfs_renameargs *args = data;
 const struct qstr *old = args->old_name;
 const struct qstr *new = args->new_name;

 encode_diropargs3(xdr, args->old_dir, old->name, old->len);
 encode_diropargs3(xdr, args->new_dir, new->name, new->len);
}
