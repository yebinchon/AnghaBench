
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nr_file_filters; } ;
struct perf_event {TYPE_1__ addr_filters; TYPE_3__* pmu; int parent; TYPE_2__* ctx; } ;
struct TYPE_6__ {int (* addr_filters_validate ) (int *) ;} ;
struct TYPE_5__ {int mutex; } ;


 int EINVAL ;
 int LIST_HEAD (int ) ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int filters ;
 int free_filters_list (int *) ;
 int lockdep_assert_held (int *) ;
 int perf_addr_filters_splice (struct perf_event*,int *) ;
 int perf_event_addr_filters_apply ;
 int perf_event_for_each_child (struct perf_event*,int ) ;
 int perf_event_parse_addr_filter (struct perf_event*,char*,int *) ;
 int stub1 (int *) ;

__attribute__((used)) static int
perf_event_set_addr_filter(struct perf_event *event, char *filter_str)
{
 LIST_HEAD(filters);
 int ret;





 lockdep_assert_held(&event->ctx->mutex);

 if (WARN_ON_ONCE(event->parent))
  return -EINVAL;

 ret = perf_event_parse_addr_filter(event, filter_str, &filters);
 if (ret)
  goto fail_clear_files;

 ret = event->pmu->addr_filters_validate(&filters);
 if (ret)
  goto fail_free_filters;


 perf_addr_filters_splice(event, &filters);


 perf_event_for_each_child(event, perf_event_addr_filters_apply);

 return ret;

fail_free_filters:
 free_filters_list(&filters);

fail_clear_files:
 event->addr_filters.nr_file_filters = 0;

 return ret;
}
