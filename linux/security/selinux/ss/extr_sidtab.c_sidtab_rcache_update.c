
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct sidtab {int * rcache; } ;


 size_t READ_ONCE (int ) ;
 int WRITE_ONCE (int ,size_t) ;

__attribute__((used)) static void sidtab_rcache_update(struct sidtab *s, u32 index, u32 pos)
{
 while (pos > 0) {
  WRITE_ONCE(s->rcache[pos], READ_ONCE(s->rcache[pos - 1]));
  --pos;
 }
 WRITE_ONCE(s->rcache[0], index);
}
