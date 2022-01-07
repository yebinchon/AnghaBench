
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfs4_ol_stateid {int dummy; } ;





 int WARN_ON_ONCE (int) ;
 int nfs4_stateid_downgrade_bit (struct nfs4_ol_stateid*,int const) ;

__attribute__((used)) static inline void nfs4_stateid_downgrade(struct nfs4_ol_stateid *stp, u32 to_access)
{
 switch (to_access) {
 case 129:
  nfs4_stateid_downgrade_bit(stp, 128);
  nfs4_stateid_downgrade_bit(stp, 130);
  break;
 case 128:
  nfs4_stateid_downgrade_bit(stp, 129);
  nfs4_stateid_downgrade_bit(stp, 130);
  break;
 case 130:
  break;
 default:
  WARN_ON_ONCE(1);
 }
}
