
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ dccp_loss_count (int const,int const,int const) ;

__attribute__((used)) static inline bool dccp_loss_free(const u64 s1, const u64 s2, const u64 ndp)
{
 return dccp_loss_count(s1, s2, ndp) == 0;
}
