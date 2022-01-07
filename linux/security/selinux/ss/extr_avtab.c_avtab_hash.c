
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct avtab_key {int source_type; int target_type; int target_class; } ;


 int mix (int ) ;

__attribute__((used)) static inline int avtab_hash(struct avtab_key *keyp, u32 mask)
{
 static const u32 c1 = 0xcc9e2d51;
 static const u32 c2 = 0x1b873593;
 static const u32 r1 = 15;
 static const u32 r2 = 13;
 static const u32 m = 5;
 static const u32 n = 0xe6546b64;

 u32 hash = 0;
 { u32 v = keyp->target_class; v *= c1; v = (v << r1) | (v >> (32 - r1)); v *= c2; hash ^= v; hash = (hash << r2) | (hash >> (32 - r2)); hash = hash * m + n; };
 { u32 v = keyp->target_type; v *= c1; v = (v << r1) | (v >> (32 - r1)); v *= c2; hash ^= v; hash = (hash << r2) | (hash >> (32 - r2)); hash = hash * m + n; };
 { u32 v = keyp->source_type; v *= c1; v = (v << r1) | (v >> (32 - r1)); v *= c2; hash ^= v; hash = (hash << r2) | (hash >> (32 - r2)); hash = hash * m + n; };



 hash ^= hash >> 16;
 hash *= 0x85ebca6b;
 hash ^= hash >> 13;
 hash *= 0xc2b2ae35;
 hash ^= hash >> 16;

 return hash & mask;
}
