
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct nfs_fh {int dummy; } ;


 int encode_fhandle (struct xdr_stream*,struct nfs_fh const*) ;
 int encode_filename (struct xdr_stream*,char const*,int ) ;

__attribute__((used)) static void encode_diropargs(struct xdr_stream *xdr, const struct nfs_fh *fh,
        const char *name, u32 length)
{
 encode_fhandle(xdr, fh);
 encode_filename(xdr, name, length);
}
