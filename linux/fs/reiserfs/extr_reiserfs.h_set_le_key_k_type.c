
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int k_uniqueness; } ;
struct TYPE_4__ {int k_offset_v2; TYPE_1__ k_offset_v1; } ;
struct reiserfs_key {TYPE_2__ u; } ;


 int KEY_FORMAT_3_5 ;
 int cpu_to_le32 (int) ;
 int set_offset_v2_k_type (int *,int) ;
 int type2uniqueness (int) ;

__attribute__((used)) static inline void set_le_key_k_type(int version, struct reiserfs_key *key,
         int type)
{
 if (version == KEY_FORMAT_3_5) {
  type = type2uniqueness(type);
  key->u.k_offset_v1.k_uniqueness = cpu_to_le32(type);
 } else
        set_offset_v2_k_type(&key->u.k_offset_v2, type);
}
