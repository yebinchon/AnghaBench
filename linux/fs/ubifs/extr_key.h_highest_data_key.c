
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;
typedef int ino_t ;


 int UBIFS_S_KEY_BLOCK_MASK ;
 int data_key_init (struct ubifs_info const*,union ubifs_key*,int ,int ) ;

__attribute__((used)) static inline void highest_data_key(const struct ubifs_info *c,
       union ubifs_key *key, ino_t inum)
{
 data_key_init(c, key, inum, UBIFS_S_KEY_BLOCK_MASK);
}
