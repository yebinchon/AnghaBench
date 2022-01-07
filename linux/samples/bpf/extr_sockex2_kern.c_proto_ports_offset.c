
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;
__attribute__((used)) static inline int proto_ports_offset(__u64 proto)
{
 switch (proto) {
 case 130:
 case 129:
 case 133:
 case 132:
 case 131:
 case 128:
  return 0;
 case 134:
  return 4;
 default:
  return 0;
 }
}
