
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *ceph_entity_type_name(int type)
{
 switch (type) {
 case 130: return "mds";
 case 128: return "osd";
 case 129: return "mon";
 case 131: return "client";
 case 132: return "auth";
 default: return "unknown";
 }
}
