
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 int TYPE_ANY ;
 int TYPE_DIRECT ;
 int TYPE_DIRENTRY ;
 int TYPE_INDIRECT ;
 int TYPE_STAT_DATA ;






__attribute__((used)) static inline int uniqueness2type(__u32 uniqueness)
{
 switch ((int)uniqueness) {
 case 128:
  return TYPE_STAT_DATA;
 case 129:
  return TYPE_INDIRECT;
 case 131:
  return TYPE_DIRECT;
 case 130:
  return TYPE_DIRENTRY;
 case 132:
 default:
  return TYPE_ANY;
 }
}
