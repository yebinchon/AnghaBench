
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_key {int dummy; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ le_key_k_offset (int,struct reiserfs_key*) ;
 int set_le_key_k_offset (int,struct reiserfs_key*,scalar_t__) ;

__attribute__((used)) static inline void add_le_key_k_offset(int version, struct reiserfs_key *key,
           loff_t offset)
{
 set_le_key_k_offset(version, key,
       le_key_k_offset(version, key) + offset);
}
