
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smack_known {int dummy; } ;
struct kern_ipc_perm {int dummy; } ;


 struct smack_known** smack_ipc (struct kern_ipc_perm*) ;

__attribute__((used)) static struct smack_known *smack_of_ipc(struct kern_ipc_perm *isp)
{
 struct smack_known **blob = smack_ipc(isp);

 return *blob;
}
