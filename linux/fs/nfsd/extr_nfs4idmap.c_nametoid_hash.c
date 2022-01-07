
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ent {int name; } ;


 int ENT_HASHBITS ;
 int hash_str (int ,int ) ;

__attribute__((used)) static inline int
nametoid_hash(struct ent *ent)
{
 return hash_str(ent->name, ENT_HASHBITS);
}
