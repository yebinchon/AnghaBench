
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_compoundargs {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct nfsd4_bind_conn_to_session {int dir; TYPE_1__ sessionid; } ;
typedef int __be32 ;


 int COPYMEM (int ,scalar_t__) ;
 int DECODE_HEAD ;
 int DECODE_TAIL ;
 scalar_t__ NFS4_MAX_SESSIONID_LEN ;
 int READ_BUF (scalar_t__) ;
 int be32_to_cpup (int ) ;
 int p ;

__attribute__((used)) static __be32 nfsd4_decode_bind_conn_to_session(struct nfsd4_compoundargs *argp, struct nfsd4_bind_conn_to_session *bcts)
{
 DECODE_HEAD;

 READ_BUF(NFS4_MAX_SESSIONID_LEN + 8);
 COPYMEM(bcts->sessionid.data, NFS4_MAX_SESSIONID_LEN);
 bcts->dir = be32_to_cpup(p++);


 DECODE_TAIL;
}
