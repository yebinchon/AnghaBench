
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_open {scalar_t__ op_deleg_want; int op_why_no_deleg; void* op_delegate_type; } ;
struct nfs4_delegation {scalar_t__ dl_type; } ;


 void* NFS4_OPEN_DELEGATE_NONE_EXT ;
 scalar_t__ NFS4_OPEN_DELEGATE_WRITE ;
 scalar_t__ NFS4_SHARE_WANT_READ_DELEG ;
 scalar_t__ NFS4_SHARE_WANT_WRITE_DELEG ;
 int WND4_NOT_SUPP_DOWNGRADE ;
 int WND4_NOT_SUPP_UPGRADE ;

__attribute__((used)) static void nfsd4_deleg_xgrade_none_ext(struct nfsd4_open *open,
     struct nfs4_delegation *dp)
{
 if (open->op_deleg_want == NFS4_SHARE_WANT_READ_DELEG &&
     dp->dl_type == NFS4_OPEN_DELEGATE_WRITE) {
  open->op_delegate_type = NFS4_OPEN_DELEGATE_NONE_EXT;
  open->op_why_no_deleg = WND4_NOT_SUPP_DOWNGRADE;
 } else if (open->op_deleg_want == NFS4_SHARE_WANT_WRITE_DELEG &&
     dp->dl_type == NFS4_OPEN_DELEGATE_WRITE) {
  open->op_delegate_type = NFS4_OPEN_DELEGATE_NONE_EXT;
  open->op_why_no_deleg = WND4_NOT_SUPP_UPGRADE;
 }




}
