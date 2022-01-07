
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_key {int dummy; } ;


 scalar_t__ TYPE_STAT_DATA ;
 scalar_t__ le_key_k_type (int,struct reiserfs_key*) ;

__attribute__((used)) static inline int is_statdata_le_key(int version, struct reiserfs_key *key)
{
 return le_key_k_type(version, key) == TYPE_STAT_DATA;
}
