
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
struct isst_pbf_info {int p1_high; int p1_low; int t_prochot; int tdp; int core_cpumask; int core_cpumask_size; } ;
typedef int header ;
typedef int FILE ;


 int DISP_FREQ_MULTIPLIER ;
 int format_and_print (int *,int,char*,char*) ;
 int printcpulist (int,char*,int ,int ) ;
 int printcpumask (int,char*,int ,int ) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static void _isst_pbf_display_information(int cpu, FILE *outf, int level,
       struct isst_pbf_info *pbf_info,
       int disp_level)
{
 char header[256];
 char value[256];

 snprintf(header, sizeof(header), "speed-select-base-freq");
 format_and_print(outf, disp_level, header, ((void*)0));

 snprintf(header, sizeof(header), "high-priority-base-frequency(MHz)");
 snprintf(value, sizeof(value), "%d",
   pbf_info->p1_high * DISP_FREQ_MULTIPLIER);
 format_and_print(outf, disp_level + 1, header, value);

 snprintf(header, sizeof(header), "high-priority-cpu-mask");
 printcpumask(sizeof(value), value, pbf_info->core_cpumask_size,
       pbf_info->core_cpumask);
 format_and_print(outf, disp_level + 1, header, value);

 snprintf(header, sizeof(header), "high-priority-cpu-list");
 printcpulist(sizeof(value), value,
       pbf_info->core_cpumask_size,
       pbf_info->core_cpumask);
 format_and_print(outf, disp_level + 1, header, value);

 snprintf(header, sizeof(header), "low-priority-base-frequency(MHz)");
 snprintf(value, sizeof(value), "%d",
   pbf_info->p1_low * DISP_FREQ_MULTIPLIER);
 format_and_print(outf, disp_level + 1, header, value);

 snprintf(header, sizeof(header), "tjunction-temperature(C)");
 snprintf(value, sizeof(value), "%d", pbf_info->t_prochot);
 format_and_print(outf, disp_level + 1, header, value);

 snprintf(header, sizeof(header), "thermal-design-power(W)");
 snprintf(value, sizeof(value), "%d", pbf_info->tdp);
 format_and_print(outf, disp_level + 1, header, value);
}
