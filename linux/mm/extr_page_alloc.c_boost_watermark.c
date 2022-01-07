
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {scalar_t__ watermark_boost; int * _watermark; } ;


 size_t WMARK_HIGH ;
 unsigned long max (scalar_t__,unsigned long) ;
 scalar_t__ min (scalar_t__,unsigned long) ;
 unsigned long mult_frac (int ,int ,int) ;
 scalar_t__ pageblock_nr_pages ;
 int watermark_boost_factor ;

__attribute__((used)) static inline void boost_watermark(struct zone *zone)
{
 unsigned long max_boost;

 if (!watermark_boost_factor)
  return;

 max_boost = mult_frac(zone->_watermark[WMARK_HIGH],
   watermark_boost_factor, 10000);
 if (!max_boost)
  return;

 max_boost = max(pageblock_nr_pages, max_boost);

 zone->watermark_boost = min(zone->watermark_boost + pageblock_nr_pages,
  max_boost);
}
