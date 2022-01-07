
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addr_filter {int action; int start; int range; } ;


 int EINVAL ;
 int strcmp (int,char*) ;

__attribute__((used)) static int parse_action(struct addr_filter *filt)
{
 if (!strcmp(filt->action, "filter")) {
  filt->start = 1;
  filt->range = 1;
 } else if (!strcmp(filt->action, "start")) {
  filt->start = 1;
 } else if (!strcmp(filt->action, "stop")) {
  filt->start = 0;
 } else if (!strcmp(filt->action, "tracestop")) {
  filt->start = 0;
  filt->range = 1;
  filt->action += 5;
 } else {
  return -EINVAL;
 }
 return 0;
}
