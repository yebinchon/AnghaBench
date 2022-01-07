
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_status {int es_pblk; } ;
typedef int ext4_fsblk_t ;


 int ES_MASK ;

__attribute__((used)) static inline ext4_fsblk_t ext4_es_pblock(struct extent_status *es)
{
 return es->es_pblk & ~ES_MASK;
}
