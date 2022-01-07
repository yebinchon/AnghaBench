
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_status {int es_pblk; } ;
typedef int ext4_fsblk_t ;


 int ES_MASK ;
 int ES_SHIFT ;

__attribute__((used)) static inline void ext4_es_store_status(struct extent_status *es,
     unsigned int status)
{
 es->es_pblk = (((ext4_fsblk_t)status << ES_SHIFT) & ES_MASK) |
        (es->es_pblk & ~ES_MASK);
}
