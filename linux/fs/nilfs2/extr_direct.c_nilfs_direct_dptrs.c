
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_direct_node {int dummy; } ;
struct TYPE_2__ {scalar_t__ u_data; } ;
struct nilfs_bmap {TYPE_1__ b_u; } ;
typedef int __le64 ;



__attribute__((used)) static inline __le64 *nilfs_direct_dptrs(const struct nilfs_bmap *direct)
{
 return (__le64 *)
  ((struct nilfs_direct_node *)direct->b_u.u_data + 1);
}
