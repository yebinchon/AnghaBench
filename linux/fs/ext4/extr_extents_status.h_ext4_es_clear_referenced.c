
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_status {int es_pblk; } ;
typedef int ext4_fsblk_t ;


 int ES_SHIFT ;
 scalar_t__ EXTENT_STATUS_REFERENCED ;

__attribute__((used)) static inline void ext4_es_clear_referenced(struct extent_status *es)
{
 es->es_pblk &= ~(((ext4_fsblk_t)EXTENT_STATUS_REFERENCED) << ES_SHIFT);
}
