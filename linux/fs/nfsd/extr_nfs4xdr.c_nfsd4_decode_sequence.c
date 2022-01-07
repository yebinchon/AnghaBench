
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct nfsd4_sequence {void* cachethis; void* maxslots; void* slotid; void* seqid; TYPE_1__ sessionid; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef int __be32 ;


 int COPYMEM (int ,scalar_t__) ;
 int DECODE_HEAD ;
 int DECODE_TAIL ;
 scalar_t__ NFS4_MAX_SESSIONID_LEN ;
 int READ_BUF (scalar_t__) ;
 void* be32_to_cpup (int ) ;
 int p ;

__attribute__((used)) static __be32
nfsd4_decode_sequence(struct nfsd4_compoundargs *argp,
        struct nfsd4_sequence *seq)
{
 DECODE_HEAD;

 READ_BUF(NFS4_MAX_SESSIONID_LEN + 16);
 COPYMEM(seq->sessionid.data, NFS4_MAX_SESSIONID_LEN);
 seq->seqid = be32_to_cpup(p++);
 seq->slotid = be32_to_cpup(p++);
 seq->maxslots = be32_to_cpup(p++);
 seq->cachethis = be32_to_cpup(p++);

 DECODE_TAIL;
}
