
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct batadv_dat_entry {int vid; int ip; } ;



__attribute__((used)) static u32 batadv_hash_dat(const void *data, u32 size)
{
 u32 hash = 0;
 const struct batadv_dat_entry *dat = data;
 const unsigned char *key;
 u32 i;

 key = (const unsigned char *)&dat->ip;
 for (i = 0; i < sizeof(dat->ip); i++) {
  hash += key[i];
  hash += (hash << 10);
  hash ^= (hash >> 6);
 }

 key = (const unsigned char *)&dat->vid;
 for (i = 0; i < sizeof(dat->vid); i++) {
  hash += key[i];
  hash += (hash << 10);
  hash ^= (hash >> 6);
 }

 hash += (hash << 3);
 hash ^= (hash >> 11);
 hash += (hash << 15);

 return hash % size;
}
