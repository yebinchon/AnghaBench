
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
struct scan_control {int reclaim_idx; int order; } ;
typedef enum compact_result { ____Placeholder_compact_result } compact_result ;


 int COMPACT_SKIPPED ;
 int COMPACT_SUCCESS ;
 unsigned long compact_gap (int ) ;
 int compaction_suitable (struct zone*,int ,int ,int ) ;
 unsigned long high_wmark_pages (struct zone*) ;
 int zone_watermark_ok_safe (struct zone*,int ,unsigned long,int ) ;

__attribute__((used)) static inline bool compaction_ready(struct zone *zone, struct scan_control *sc)
{
 unsigned long watermark;
 enum compact_result suitable;

 suitable = compaction_suitable(zone, sc->order, 0, sc->reclaim_idx);
 if (suitable == COMPACT_SUCCESS)

  return 1;
 if (suitable == COMPACT_SKIPPED)

  return 0;
 watermark = high_wmark_pages(zone) + compact_gap(sc->order);

 return zone_watermark_ok_safe(zone, 0, watermark, sc->reclaim_idx);
}
