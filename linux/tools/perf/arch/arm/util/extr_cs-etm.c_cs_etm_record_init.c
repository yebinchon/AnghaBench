
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu {int dummy; } ;
struct auxtrace_record {int read_finish; int free; int reference; int snapshot_finish; int snapshot_start; int find_snapshot; int info_fill; int info_priv_size; int recording_options; int parse_snapshot_options; } ;
struct cs_etm_recording {struct auxtrace_record itr; struct perf_pmu* cs_etm_pmu; } ;


 int CORESIGHT_ETM_PMU_NAME ;
 int EINVAL ;
 int ENOMEM ;
 int cs_etm_find_snapshot ;
 int cs_etm_info_fill ;
 int cs_etm_info_priv_size ;
 int cs_etm_parse_snapshot_options ;
 int cs_etm_read_finish ;
 int cs_etm_recording_free ;
 int cs_etm_recording_options ;
 int cs_etm_reference ;
 int cs_etm_snapshot_finish ;
 int cs_etm_snapshot_start ;
 struct perf_pmu* perf_pmu__find (int ) ;
 struct cs_etm_recording* zalloc (int) ;

struct auxtrace_record *cs_etm_record_init(int *err)
{
 struct perf_pmu *cs_etm_pmu;
 struct cs_etm_recording *ptr;

 cs_etm_pmu = perf_pmu__find(CORESIGHT_ETM_PMU_NAME);

 if (!cs_etm_pmu) {
  *err = -EINVAL;
  goto out;
 }

 ptr = zalloc(sizeof(struct cs_etm_recording));
 if (!ptr) {
  *err = -ENOMEM;
  goto out;
 }

 ptr->cs_etm_pmu = cs_etm_pmu;
 ptr->itr.parse_snapshot_options = cs_etm_parse_snapshot_options;
 ptr->itr.recording_options = cs_etm_recording_options;
 ptr->itr.info_priv_size = cs_etm_info_priv_size;
 ptr->itr.info_fill = cs_etm_info_fill;
 ptr->itr.find_snapshot = cs_etm_find_snapshot;
 ptr->itr.snapshot_start = cs_etm_snapshot_start;
 ptr->itr.snapshot_finish = cs_etm_snapshot_finish;
 ptr->itr.reference = cs_etm_reference;
 ptr->itr.free = cs_etm_recording_free;
 ptr->itr.read_finish = cs_etm_read_finish;

 *err = 0;
 return &ptr->itr;
out:
 return ((void*)0);
}
