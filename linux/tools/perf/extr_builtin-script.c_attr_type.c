
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PERF_TYPE_SYNTH ;

__attribute__((used)) static inline unsigned int attr_type(unsigned int type)
{
 switch (type) {
 case 128:
  return PERF_TYPE_SYNTH;
 default:
  return type;
 }
}
