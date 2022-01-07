
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_status {int es_pblk; } ;
typedef int ext4_fsblk_t ;


 int ES_MASK ;

__attribute__((used)) static inline void ext4_es_store_pblock(struct extent_status *es,
     ext4_fsblk_t pb)
{
 ext4_fsblk_t block;

 block = (pb & ~ES_MASK) | (es->es_pblk & ES_MASK);
 es->es_pblk = block;
}
