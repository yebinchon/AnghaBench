
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct the_nilfs {scalar_t__ ns_sbwtime; scalar_t__ ns_sb_update_freq; } ;


 scalar_t__ ktime_get_real_seconds () ;

__attribute__((used)) static inline int nilfs_sb_need_update(struct the_nilfs *nilfs)
{
 u64 t = ktime_get_real_seconds();

 return t < nilfs->ns_sbwtime ||
  t > nilfs->ns_sbwtime + nilfs->ns_sb_update_freq;
}
