
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_open {scalar_t__ op_claim_type; } ;


 scalar_t__ NFS4_OPEN_CLAIM_DELEGATE_CUR ;
 scalar_t__ NFS4_OPEN_CLAIM_DELEG_CUR_FH ;

__attribute__((used)) static bool nfsd4_is_deleg_cur(struct nfsd4_open *open)
{
 return open->op_claim_type == NFS4_OPEN_CLAIM_DELEGATE_CUR ||
        open->op_claim_type == NFS4_OPEN_CLAIM_DELEG_CUR_FH;
}
