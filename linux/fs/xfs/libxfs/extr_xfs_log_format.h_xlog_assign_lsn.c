
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_lsn_t ;
typedef int uint ;



__attribute__((used)) static inline xfs_lsn_t xlog_assign_lsn(uint cycle, uint block)
{
 return ((xfs_lsn_t)cycle << 32) | block;
}
