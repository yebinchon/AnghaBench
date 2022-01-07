
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *ceph_osd_watch_op_name(int o)
{
 switch (o) {
 case 129:
  return "unwatch";
 case 128:
  return "watch";
 case 130:
  return "reconnect";
 case 131:
  return "ping";
 default:
  return "???";
 }
}
