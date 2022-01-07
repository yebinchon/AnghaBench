
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int dummy; } ;
typedef enum ima_hooks { ____Placeholder_ima_hooks } ima_hooks ;


 int IMA_APPRAISE ;
 int IMA_HASH ;
 int current ;
 int current_cred () ;
 int ima_appraise ;
 int ima_match_policy (struct inode*,int ,int ,int,int,int,int *,int *) ;
 int security_task_getsecid (int ,int *) ;

int ima_must_appraise(struct inode *inode, int mask, enum ima_hooks func)
{
 u32 secid;

 if (!ima_appraise)
  return 0;

 security_task_getsecid(current, &secid);
 return ima_match_policy(inode, current_cred(), secid, func, mask,
    IMA_APPRAISE | IMA_HASH, ((void*)0), ((void*)0));
}
