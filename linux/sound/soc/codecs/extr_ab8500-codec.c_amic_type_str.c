
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum amic_type { ____Placeholder_amic_type } amic_type ;





__attribute__((used)) static inline const char *amic_type_str(enum amic_type type)
{
 switch (type) {
 case 129:
  return "DIFFERENTIAL";
 case 128:
  return "SINGLE ENDED";
 default:
  return "Unknown";
 }
}
