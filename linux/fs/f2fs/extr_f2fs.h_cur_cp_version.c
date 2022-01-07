
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_checkpoint {int checkpoint_ver; } ;


 unsigned long long le64_to_cpu (int ) ;

__attribute__((used)) static inline unsigned long long cur_cp_version(struct f2fs_checkpoint *cp)
{
 return le64_to_cpu(cp->checkpoint_ver);
}
