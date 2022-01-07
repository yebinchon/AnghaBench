
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rate_bytes_ps; } ;
struct tbf_sched_data {TYPE_1__ peak; } ;



__attribute__((used)) static bool tbf_peak_present(const struct tbf_sched_data *q)
{
 return q->peak.rate_bytes_ps;
}
