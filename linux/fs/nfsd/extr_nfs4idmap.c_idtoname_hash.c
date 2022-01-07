
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ent {int id; scalar_t__ type; int authname; } ;


 int ENT_HASHBITS ;
 scalar_t__ IDMAP_TYPE_GROUP ;
 int hash_long (int,int ) ;
 int hash_str (int ,int ) ;

__attribute__((used)) static uint32_t
idtoname_hash(struct ent *ent)
{
 uint32_t hash;

 hash = hash_str(ent->authname, ENT_HASHBITS);
 hash = hash_long(hash ^ ent->id, ENT_HASHBITS);


 if (ent->type == IDMAP_TYPE_GROUP)
  hash ^= 1;

 return hash;
}
