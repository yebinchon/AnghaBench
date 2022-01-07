
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum amic_micbias { ____Placeholder_amic_micbias } amic_micbias ;





__attribute__((used)) static inline const char *amic_micbias_str(enum amic_micbias micbias)
{
 switch (micbias) {
 case 129:
  return "VAMIC1";
 case 128:
  return "VAMIC2";
 default:
  return "Unknown";
 }
}
