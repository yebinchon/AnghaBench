
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_rqst {int dummy; } ;
struct nfsd4_create_session {int flags; } ;
struct nfsd4_conn {int dummy; } ;


 int NFS4_CDFC4_BACK ;
 int NFS4_CDFC4_FORE ;
 int SESSION4_BACK_CHAN ;
 struct nfsd4_conn* alloc_conn (struct svc_rqst*,int ) ;

__attribute__((used)) static struct nfsd4_conn *alloc_conn_from_crses(struct svc_rqst *rqstp, struct nfsd4_create_session *cses)
{
 u32 dir = NFS4_CDFC4_FORE;

 if (cses->flags & SESSION4_BACK_CHAN)
  dir |= NFS4_CDFC4_BACK;
 return alloc_conn(rqstp, dir);
}
