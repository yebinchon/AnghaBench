
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_key {int dummy; } ;


 int KEY_SIZE ;
 int memcpy (struct reiserfs_key*,struct reiserfs_key const*,int ) ;

__attribute__((used)) static inline void copy_key(struct reiserfs_key *to,
       const struct reiserfs_key *from)
{
 memcpy(to, from, KEY_SIZE);
}
