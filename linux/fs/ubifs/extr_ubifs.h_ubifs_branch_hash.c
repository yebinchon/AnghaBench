
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
struct ubifs_info {int key_len; } ;
struct ubifs_branch {int dummy; } ;



__attribute__((used)) static inline u8 *ubifs_branch_hash(struct ubifs_info *c,
        struct ubifs_branch *br)
{
 return (void *)br + sizeof(*br) + c->key_len;
}
