
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum intel_pt_pkt_state { ____Placeholder_intel_pt_pkt_state } intel_pt_pkt_state ;
__attribute__((used)) static inline bool intel_pt_sample_time(enum intel_pt_pkt_state pkt_state)
{
 switch (pkt_state) {
 case 132:
 case 133:
 case 137:
 case 134:
 case 128:
  return 1;
 case 129:
 case 131:
 case 130:
 case 136:
 case 135:
  return 0;
 default:
  return 1;
 };
}
