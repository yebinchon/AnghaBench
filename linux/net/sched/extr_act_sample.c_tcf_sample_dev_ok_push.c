
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int type; } ;
__attribute__((used)) static bool tcf_sample_dev_ok_push(struct net_device *dev)
{
 switch (dev->type) {
 case 130:
 case 129:
 case 131:
 case 133:
 case 134:
 case 128:
 case 132:
  return 0;
 default:
  return 1;
 }
}
