
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t ARRAY_SIZE (char const* const*) ;

__attribute__((used)) static const char *get_pwr_state(u32 state)
{
 static const char * const buf[] = {
  "D0", "D1", "D2", "D3", "D3cold"
 };
 if (state < ARRAY_SIZE(buf))
  return buf[state];
 return "UNKNOWN";
}
