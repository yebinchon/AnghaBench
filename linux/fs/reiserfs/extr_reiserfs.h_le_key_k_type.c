
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int k_uniqueness; } ;
struct TYPE_4__ {int k_offset_v2; TYPE_1__ k_offset_v1; } ;
struct reiserfs_key {TYPE_2__ u; } ;
typedef int loff_t ;


 int KEY_FORMAT_3_5 ;
 int le32_to_cpu (int ) ;
 int offset_v2_k_type (int *) ;
 int uniqueness2type (int ) ;

__attribute__((used)) static inline loff_t le_key_k_type(int version, const struct reiserfs_key *key)
{
 if (version == KEY_FORMAT_3_5) {
  loff_t val = le32_to_cpu(key->u.k_offset_v1.k_uniqueness);
  return uniqueness2type(val);
 } else
  return offset_v2_k_type(&(key->u.k_offset_v2));
}
