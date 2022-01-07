
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
struct isst_pkg_ctdp_level_info {int level; int tdp_ratio; int pkg_tdp; int t_proc_hot; int buckets_info; int* trl_sse_active_cores; int* trl_avx_active_cores; int* trl_avx_512_active_cores; int fact_info; scalar_t__ fact_support; int pbf_info; scalar_t__ pbf_support; scalar_t__ pbf_enabled; scalar_t__ fact_enabled; int core_cpumask; int core_cpumask_size; int processed; } ;
struct isst_pkg_ctdp {int levels; struct isst_pkg_ctdp_level_info* ctdp_level; } ;
typedef int header ;
typedef int FILE ;


 int DISP_FREQ_MULTIPLIER ;
 int _isst_fact_display_information (int,int *,int,int,int,int *,int) ;
 int _isst_pbf_display_information (int,int *,int,int *,int) ;
 int format_and_print (int *,int,char*,char*) ;
 int get_cpu_count (int ,int ) ;
 int get_physical_die_id (int) ;
 int print_package_info (int,int *) ;
 int printcpulist (int,char*,int ,int ) ;
 int printcpumask (int,char*,int ,int ) ;
 int snprintf (char*,int,char*,...) ;

void isst_ctdp_display_information(int cpu, FILE *outf, int tdp_level,
       struct isst_pkg_ctdp *pkg_dev)
{
 char header[256];
 char value[256];
 int i, base_level = 1;

 print_package_info(cpu, outf);

 for (i = 0; i <= pkg_dev->levels; ++i) {
  struct isst_pkg_ctdp_level_info *ctdp_level;
  int j;

  ctdp_level = &pkg_dev->ctdp_level[i];
  if (!ctdp_level->processed)
   continue;

  snprintf(header, sizeof(header), "perf-profile-level-%d",
    ctdp_level->level);
  format_and_print(outf, base_level + 3, header, ((void*)0));

  snprintf(header, sizeof(header), "cpu-count");
  j = get_cpu_count(get_physical_die_id(cpu),
      get_physical_die_id(cpu));
  snprintf(value, sizeof(value), "%d", j);
  format_and_print(outf, base_level + 4, header, value);

  snprintf(header, sizeof(header), "enable-cpu-mask");
  printcpumask(sizeof(value), value,
        ctdp_level->core_cpumask_size,
        ctdp_level->core_cpumask);
  format_and_print(outf, base_level + 4, header, value);

  snprintf(header, sizeof(header), "enable-cpu-list");
  printcpulist(sizeof(value), value,
        ctdp_level->core_cpumask_size,
        ctdp_level->core_cpumask);
  format_and_print(outf, base_level + 4, header, value);

  snprintf(header, sizeof(header), "thermal-design-power-ratio");
  snprintf(value, sizeof(value), "%d", ctdp_level->tdp_ratio);
  format_and_print(outf, base_level + 4, header, value);

  snprintf(header, sizeof(header), "base-frequency(MHz)");
  snprintf(value, sizeof(value), "%d",
    ctdp_level->tdp_ratio * DISP_FREQ_MULTIPLIER);
  format_and_print(outf, base_level + 4, header, value);

  snprintf(header, sizeof(header),
    "speed-select-turbo-freq");
  if (ctdp_level->fact_support) {
   if (ctdp_level->fact_enabled)
    snprintf(value, sizeof(value), "enabled");
   else
    snprintf(value, sizeof(value), "disabled");
  } else
   snprintf(value, sizeof(value), "unsupported");
  format_and_print(outf, base_level + 4, header, value);

  snprintf(header, sizeof(header),
    "speed-select-base-freq");
  if (ctdp_level->pbf_support) {
   if (ctdp_level->pbf_enabled)
    snprintf(value, sizeof(value), "enabled");
   else
    snprintf(value, sizeof(value), "disabled");
  } else
   snprintf(value, sizeof(value), "unsupported");
  format_and_print(outf, base_level + 4, header, value);

  snprintf(header, sizeof(header), "thermal-design-power(W)");
  snprintf(value, sizeof(value), "%d", ctdp_level->pkg_tdp);
  format_and_print(outf, base_level + 4, header, value);

  snprintf(header, sizeof(header), "tjunction-max(C)");
  snprintf(value, sizeof(value), "%d", ctdp_level->t_proc_hot);
  format_and_print(outf, base_level + 4, header, value);

  snprintf(header, sizeof(header), "turbo-ratio-limits-sse");
  format_and_print(outf, base_level + 4, header, ((void*)0));
  for (j = 0; j < 8; ++j) {
   snprintf(header, sizeof(header), "bucket-%d", j);
   format_and_print(outf, base_level + 5, header, ((void*)0));

   snprintf(header, sizeof(header), "core-count");
   snprintf(value, sizeof(value), "%llu", (ctdp_level->buckets_info >> (j * 8)) & 0xff);
   format_and_print(outf, base_level + 6, header, value);

   snprintf(header, sizeof(header),
    "max-turbo-frequency(MHz)");
   snprintf(value, sizeof(value), "%d",
     ctdp_level->trl_sse_active_cores[j] *
      DISP_FREQ_MULTIPLIER);
   format_and_print(outf, base_level + 6, header, value);
  }
  snprintf(header, sizeof(header), "turbo-ratio-limits-avx");
  format_and_print(outf, base_level + 4, header, ((void*)0));
  for (j = 0; j < 8; ++j) {
   snprintf(header, sizeof(header), "bucket-%d", j);
   format_and_print(outf, base_level + 5, header, ((void*)0));

   snprintf(header, sizeof(header), "core-count");
   snprintf(value, sizeof(value), "%llu", (ctdp_level->buckets_info >> (j * 8)) & 0xff);
   format_and_print(outf, base_level + 6, header, value);

   snprintf(header, sizeof(header),
    "max-turbo-frequency(MHz)");
   snprintf(value, sizeof(value), "%d",
     ctdp_level->trl_avx_active_cores[j] *
      DISP_FREQ_MULTIPLIER);
   format_and_print(outf, base_level + 6, header, value);
  }

  snprintf(header, sizeof(header), "turbo-ratio-limits-avx512");
  format_and_print(outf, base_level + 4, header, ((void*)0));
  for (j = 0; j < 8; ++j) {
   snprintf(header, sizeof(header), "bucket-%d", j);
   format_and_print(outf, base_level + 5, header, ((void*)0));

   snprintf(header, sizeof(header), "core-count");
   snprintf(value, sizeof(value), "%llu", (ctdp_level->buckets_info >> (j * 8)) & 0xff);
   format_and_print(outf, base_level + 6, header, value);

   snprintf(header, sizeof(header),
    "max-turbo-frequency(MHz)");
   snprintf(value, sizeof(value), "%d",
     ctdp_level->trl_avx_512_active_cores[j] *
      DISP_FREQ_MULTIPLIER);
   format_and_print(outf, base_level + 6, header, value);
  }
  if (ctdp_level->pbf_support)
   _isst_pbf_display_information(cpu, outf, i,
            &ctdp_level->pbf_info,
            base_level + 4);
  if (ctdp_level->fact_support)
   _isst_fact_display_information(cpu, outf, i, 0xff, 0xff,
             &ctdp_level->fact_info,
             base_level + 4);
 }

 format_and_print(outf, 1, ((void*)0), ((void*)0));
}
