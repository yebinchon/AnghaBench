
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_super_block {int dummy; } ;


 scalar_t__ is_reiserfs_3_5 (struct reiserfs_super_block*) ;
 scalar_t__ is_reiserfs_3_6 (struct reiserfs_super_block*) ;
 scalar_t__ is_reiserfs_jr (struct reiserfs_super_block*) ;

__attribute__((used)) static int is_any_reiserfs_magic_string(struct reiserfs_super_block *rs)
{
 return (is_reiserfs_3_5(rs) || is_reiserfs_3_6(rs) ||
  is_reiserfs_jr(rs));
}
