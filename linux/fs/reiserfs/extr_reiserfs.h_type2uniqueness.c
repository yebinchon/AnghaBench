
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;







 int V1_ANY_UNIQUENESS ;
 int V1_DIRECT_UNIQUENESS ;
 int V1_DIRENTRY_UNIQUENESS ;
 int V1_INDIRECT_UNIQUENESS ;
 int V1_SD_UNIQUENESS ;

__attribute__((used)) static inline __u32 type2uniqueness(int type)
{
 switch (type) {
 case 128:
  return V1_SD_UNIQUENESS;
 case 129:
  return V1_INDIRECT_UNIQUENESS;
 case 131:
  return V1_DIRECT_UNIQUENESS;
 case 130:
  return V1_DIRENTRY_UNIQUENESS;
 case 132:
 default:
  return V1_ANY_UNIQUENESS;
 }
}
