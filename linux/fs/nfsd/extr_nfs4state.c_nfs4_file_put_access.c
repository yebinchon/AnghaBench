
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfs4_file {int dummy; } ;


 int NFS4_SHARE_ACCESS_BOTH ;
 int NFS4_SHARE_ACCESS_READ ;
 int NFS4_SHARE_ACCESS_WRITE ;
 int O_RDONLY ;
 int O_WRONLY ;
 int WARN_ON_ONCE (int) ;
 int __nfs4_file_put_access (struct nfs4_file*,int ) ;

__attribute__((used)) static void nfs4_file_put_access(struct nfs4_file *fp, u32 access)
{
 WARN_ON_ONCE(access & ~NFS4_SHARE_ACCESS_BOTH);

 if (access & NFS4_SHARE_ACCESS_WRITE)
  __nfs4_file_put_access(fp, O_WRONLY);
 if (access & NFS4_SHARE_ACCESS_READ)
  __nfs4_file_put_access(fp, O_RDONLY);
}
