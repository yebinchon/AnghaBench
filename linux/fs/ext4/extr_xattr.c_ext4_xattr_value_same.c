
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ext4_xattr_search {TYPE_1__* here; scalar_t__ base; } ;
struct ext4_xattr_info {int value_len; int value; } ;
struct TYPE_2__ {int e_value_offs; int e_value_size; scalar_t__ e_value_inum; } ;


 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memcmp (void*,int ,int ) ;

__attribute__((used)) static int ext4_xattr_value_same(struct ext4_xattr_search *s,
     struct ext4_xattr_info *i)
{
 void *value;


 if (s->here->e_value_inum)
  return 0;
 if (le32_to_cpu(s->here->e_value_size) != i->value_len)
  return 0;
 value = ((void *)s->base) + le16_to_cpu(s->here->e_value_offs);
 return !memcmp(value, i->value, i->value_len);
}
