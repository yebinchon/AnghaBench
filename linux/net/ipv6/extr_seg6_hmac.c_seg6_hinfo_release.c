
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg6_hmac_info {int dummy; } ;


 int kfree_rcu (struct seg6_hmac_info*,int ) ;
 int rcu ;

__attribute__((used)) static inline void seg6_hinfo_release(struct seg6_hmac_info *hinfo)
{
 kfree_rcu(hinfo, rcu);
}
