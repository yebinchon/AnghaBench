
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int hrtimer_interval_ms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ PAGE_SIZE ;
 struct pmu* dev_get_drvdata (struct device*) ;
 int snprintf (char*,scalar_t__,char*,int) ;

__attribute__((used)) static ssize_t
perf_event_mux_interval_ms_show(struct device *dev,
    struct device_attribute *attr,
    char *page)
{
 struct pmu *pmu = dev_get_drvdata(dev);

 return snprintf(page, PAGE_SIZE-1, "%d\n", pmu->hrtimer_interval_ms);
}
