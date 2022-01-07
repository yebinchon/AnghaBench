
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int sb_rdonly (struct super_block*) ;

__attribute__((used)) static inline bool f2fs_readonly(struct super_block *sb)
{
 return sb_rdonly(sb);
}
