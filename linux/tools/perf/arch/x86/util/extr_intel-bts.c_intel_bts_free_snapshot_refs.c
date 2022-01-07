
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_bts_recording {int snapshot_ref_cnt; TYPE_1__* snapshot_refs; } ;
struct TYPE_2__ {struct TYPE_2__* ref_buf; } ;


 int zfree (TYPE_1__**) ;

__attribute__((used)) static void intel_bts_free_snapshot_refs(struct intel_bts_recording *btsr)
{
 int i;

 for (i = 0; i < btsr->snapshot_ref_cnt; i++)
  zfree(&btsr->snapshot_refs[i].ref_buf);
 zfree(&btsr->snapshot_refs);
}
