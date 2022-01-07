
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct idpair {scalar_t__ old; scalar_t__ cur; } ;


 unsigned int ID_MAP_SIZE ;
 int WARN_ON_ONCE (int) ;

__attribute__((used)) static bool check_ids(u32 old_id, u32 cur_id, struct idpair *idmap)
{
 unsigned int i;

 for (i = 0; i < ID_MAP_SIZE; i++) {
  if (!idmap[i].old) {

   idmap[i].old = old_id;
   idmap[i].cur = cur_id;
   return 1;
  }
  if (idmap[i].old == old_id)
   return idmap[i].cur == cur_id;
 }

 WARN_ON_ONCE(1);
 return 0;
}
