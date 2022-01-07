
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_parse_error {int dummy; } ;
struct event_filter {int filter_string; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __free_filter (struct event_filter*) ;
 int kfree (struct filter_parse_error*) ;
 int kstrdup (char*,int ) ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static int create_filter_start(char *filter_string, bool set_str,
          struct filter_parse_error **pse,
          struct event_filter **filterp)
{
 struct event_filter *filter;
 struct filter_parse_error *pe = ((void*)0);
 int err = 0;

 if (WARN_ON_ONCE(*pse || *filterp))
  return -EINVAL;

 filter = kzalloc(sizeof(*filter), GFP_KERNEL);
 if (filter && set_str) {
  filter->filter_string = kstrdup(filter_string, GFP_KERNEL);
  if (!filter->filter_string)
   err = -ENOMEM;
 }

 pe = kzalloc(sizeof(*pe), GFP_KERNEL);

 if (!filter || !pe || err) {
  kfree(pe);
  __free_filter(filter);
  return -ENOMEM;
 }


 *filterp = filter;
 *pse = pe;

 return 0;
}
