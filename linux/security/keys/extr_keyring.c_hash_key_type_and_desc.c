
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct keyring_index_key {char* description; int desc_len; unsigned long hash; int * type; scalar_t__ domain_tag; } ;


 unsigned long ASSOC_ARRAY_FAN_MASK ;
 int ASSOC_ARRAY_KEY_CHUNK_SIZE ;
 unsigned int ASSOC_ARRAY_LEVEL_STEP ;
 int key_type_keyring ;
 int memcpy (int*,char const*,int) ;
 int mult_64x32_and_fold (int,int) ;

__attribute__((used)) static void hash_key_type_and_desc(struct keyring_index_key *index_key)
{
 const unsigned level_shift = ASSOC_ARRAY_LEVEL_STEP;
 const unsigned long fan_mask = ASSOC_ARRAY_FAN_MASK;
 const char *description = index_key->description;
 unsigned long hash, type;
 u32 piece;
 u64 acc;
 int n, desc_len = index_key->desc_len;

 type = (unsigned long)index_key->type;
 acc = mult_64x32_and_fold(type, desc_len + 13);
 acc = mult_64x32_and_fold(acc, 9207);
 piece = (unsigned long)index_key->domain_tag;
 acc = mult_64x32_and_fold(acc, piece);
 acc = mult_64x32_and_fold(acc, 9207);

 for (;;) {
  n = desc_len;
  if (n <= 0)
   break;
  if (n > 4)
   n = 4;
  piece = 0;
  memcpy(&piece, description, n);
  description += n;
  desc_len -= n;
  acc = mult_64x32_and_fold(acc, piece);
  acc = mult_64x32_and_fold(acc, 9207);
 }


 hash = acc;
 if (ASSOC_ARRAY_KEY_CHUNK_SIZE == 32)
  hash ^= acc >> 32;





 if (index_key->type != &key_type_keyring && (hash & fan_mask) == 0)
  hash |= (hash >> (ASSOC_ARRAY_KEY_CHUNK_SIZE - level_shift)) | 1;
 else if (index_key->type == &key_type_keyring && (hash & fan_mask) != 0)
  hash = (hash + (hash << level_shift)) & ~fan_mask;
 index_key->hash = hash;
}
