
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int period_bytes; } ;


 int hdspm_get_latency (struct hdspm*) ;

__attribute__((used)) static inline void hdspm_compute_period_size(struct hdspm *hdspm)
{
 hdspm->period_bytes = 4 * hdspm_get_latency(hdspm);
}
