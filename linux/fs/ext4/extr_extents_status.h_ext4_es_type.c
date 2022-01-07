
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_status {unsigned int es_pblk; } ;


 unsigned int ES_SHIFT ;
 unsigned int ES_TYPE_MASK ;

__attribute__((used)) static inline unsigned int ext4_es_type(struct extent_status *es)
{
 return (es->es_pblk & ES_TYPE_MASK) >> ES_SHIFT;
}
