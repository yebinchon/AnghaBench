
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
struct isst_fact_info {int lp_clipping_ratio_license_sse; int lp_clipping_ratio_license_avx2; int lp_clipping_ratio_license_avx512; struct isst_fact_bucket_info* bucket_info; } ;
struct isst_fact_bucket_info {int high_priority_cores_count; int sse_trl; int avx_trl; int avx512_trl; } ;
typedef int header ;
typedef int FILE ;


 int DISP_FREQ_MULTIPLIER ;
 int ISST_FACT_MAX_BUCKETS ;
 int format_and_print (int *,int,char*,char*) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static void _isst_fact_display_information(int cpu, FILE *outf, int level,
        int fact_bucket, int fact_avx,
        struct isst_fact_info *fact_info,
        int base_level)
{
 struct isst_fact_bucket_info *bucket_info = fact_info->bucket_info;
 char header[256];
 char value[256];
 int j;

 snprintf(header, sizeof(header), "speed-select-turbo-freq");
 format_and_print(outf, base_level, header, ((void*)0));
 for (j = 0; j < ISST_FACT_MAX_BUCKETS; ++j) {
  if (fact_bucket != 0xff && fact_bucket != j)
   continue;

  if (!bucket_info[j].high_priority_cores_count)
   break;

  snprintf(header, sizeof(header), "bucket-%d", j);
  format_and_print(outf, base_level + 1, header, ((void*)0));

  snprintf(header, sizeof(header), "high-priority-cores-count");
  snprintf(value, sizeof(value), "%d",
    bucket_info[j].high_priority_cores_count);
  format_and_print(outf, base_level + 2, header, value);

  if (fact_avx & 0x01) {
   snprintf(header, sizeof(header),
     "high-priority-max-frequency(MHz)");
   snprintf(value, sizeof(value), "%d",
     bucket_info[j].sse_trl * DISP_FREQ_MULTIPLIER);
   format_and_print(outf, base_level + 2, header, value);
  }

  if (fact_avx & 0x02) {
   snprintf(header, sizeof(header),
     "high-priority-max-avx2-frequency(MHz)");
   snprintf(value, sizeof(value), "%d",
     bucket_info[j].avx_trl * DISP_FREQ_MULTIPLIER);
   format_and_print(outf, base_level + 2, header, value);
  }

  if (fact_avx & 0x04) {
   snprintf(header, sizeof(header),
     "high-priority-max-avx512-frequency(MHz)");
   snprintf(value, sizeof(value), "%d",
     bucket_info[j].avx512_trl *
      DISP_FREQ_MULTIPLIER);
   format_and_print(outf, base_level + 2, header, value);
  }
 }
 snprintf(header, sizeof(header),
   "speed-select-turbo-freq-clip-frequencies");
 format_and_print(outf, base_level + 1, header, ((void*)0));
 snprintf(header, sizeof(header), "low-priority-max-frequency(MHz)");
 snprintf(value, sizeof(value), "%d",
   fact_info->lp_clipping_ratio_license_sse *
    DISP_FREQ_MULTIPLIER);
 format_and_print(outf, base_level + 2, header, value);
 snprintf(header, sizeof(header),
   "low-priority-max-avx2-frequency(MHz)");
 snprintf(value, sizeof(value), "%d",
   fact_info->lp_clipping_ratio_license_avx2 *
    DISP_FREQ_MULTIPLIER);
 format_and_print(outf, base_level + 2, header, value);
 snprintf(header, sizeof(header),
   "low-priority-max-avx512-frequency(MHz)");
 snprintf(value, sizeof(value), "%d",
   fact_info->lp_clipping_ratio_license_avx512 *
    DISP_FREQ_MULTIPLIER);
 format_and_print(outf, base_level + 2, header, value);
}
