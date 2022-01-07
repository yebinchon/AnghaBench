
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_delegation {int type; int flags; } ;
typedef int fmode_t ;
typedef enum open_claim_type4 { ____Placeholder_open_claim_type4 } open_claim_type4 ;





 int NFS_DELEGATION_NEED_RECLAIM ;
 int nfs_mark_delegation_referenced (struct nfs_delegation*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int can_open_delegated(struct nfs_delegation *delegation, fmode_t fmode,
  enum open_claim_type4 claim)
{
 if (delegation == ((void*)0))
  return 0;
 if ((delegation->type & fmode) != fmode)
  return 0;
 switch (claim) {
 case 129:
 case 130:
  break;
 case 128:
  if (!test_bit(NFS_DELEGATION_NEED_RECLAIM, &delegation->flags))
   break;

 default:
  return 0;
 }
 nfs_mark_delegation_referenced(delegation);
 return 1;
}
