
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint ;
struct xfs_log_vec {int dummy; } ;
struct xfs_log_iovec {int dummy; } ;


 int round_up (int,int) ;

__attribute__((used)) static inline int
xlog_cil_iovec_space(
 uint niovecs)
{
 return round_up((sizeof(struct xfs_log_vec) +
     niovecs * sizeof(struct xfs_log_iovec)),
   sizeof(uint64_t));
}
