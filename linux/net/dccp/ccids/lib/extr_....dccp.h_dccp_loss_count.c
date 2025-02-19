
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ s64 ;


 int WARN_ON (int) ;
 scalar_t__ dccp_delta_seqno (scalar_t__ const,scalar_t__ const) ;

__attribute__((used)) static inline u64 dccp_loss_count(const u64 s1, const u64 s2, const u64 ndp)
{
 s64 delta = dccp_delta_seqno(s1, s2);

 WARN_ON(delta < 0);
 delta -= ndp + 1;

 return delta > 0 ? delta : 0;
}
