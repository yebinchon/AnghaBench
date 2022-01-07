
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OUTPUT_TYPE_SYNTH ;


__attribute__((used)) static inline int output_type(unsigned int type)
{
 switch (type) {
 case 128:
  return OUTPUT_TYPE_SYNTH;
 default:
  return type;
 }
}
