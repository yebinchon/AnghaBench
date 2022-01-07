
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int XFS_BB_SHIFT ;

__attribute__((used)) static inline u64 quota_bbtob(u64 blocks)
{
 return blocks << XFS_BB_SHIFT;
}
