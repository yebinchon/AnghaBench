
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_opt_hdr {int nd_opt_type; int nd_opt_len; } ;



__attribute__((used)) static struct nd_opt_hdr *ndisc_next_option(struct nd_opt_hdr *cur,
         struct nd_opt_hdr *end)
{
 int type;
 if (!cur || !end || cur >= end)
  return ((void*)0);
 type = cur->nd_opt_type;
 do {
  cur = ((void *)cur) + (cur->nd_opt_len << 3);
 } while (cur < end && cur->nd_opt_type != type);
 return cur <= end && cur->nd_opt_type == type ? cur : ((void*)0);
}
