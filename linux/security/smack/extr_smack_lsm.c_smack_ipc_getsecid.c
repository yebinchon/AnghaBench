
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smack_known {int smk_secid; } ;
struct kern_ipc_perm {int dummy; } ;


 struct smack_known** smack_ipc (struct kern_ipc_perm*) ;

__attribute__((used)) static void smack_ipc_getsecid(struct kern_ipc_perm *ipp, u32 *secid)
{
 struct smack_known **blob = smack_ipc(ipp);
 struct smack_known *iskp = *blob;

 *secid = iskp->smk_secid;
}
