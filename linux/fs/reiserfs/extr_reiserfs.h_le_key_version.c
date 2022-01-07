
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int k_offset_v2; } ;
struct reiserfs_key {TYPE_1__ u; } ;


 int KEY_FORMAT_3_5 ;
 int KEY_FORMAT_3_6 ;
 int TYPE_DIRECT ;
 int TYPE_DIRENTRY ;
 int TYPE_INDIRECT ;
 int offset_v2_k_type (int *) ;

__attribute__((used)) static inline int le_key_version(const struct reiserfs_key *key)
{
 int type;

 type = offset_v2_k_type(&(key->u.k_offset_v2));
 if (type != TYPE_DIRECT && type != TYPE_INDIRECT
     && type != TYPE_DIRENTRY)
  return KEY_FORMAT_3_5;

 return KEY_FORMAT_3_6;

}
