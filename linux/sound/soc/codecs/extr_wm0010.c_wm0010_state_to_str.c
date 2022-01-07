
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wm0010_state { ____Placeholder_wm0010_state } wm0010_state ;


 int ARRAY_SIZE (char const* const*) ;

__attribute__((used)) static const char *wm0010_state_to_str(enum wm0010_state state)
{
 static const char * const state_to_str[] = {
  "Power off",
  "Out of reset",
  "Boot ROM",
  "Stage2",
  "Firmware"
 };

 if (state < 0 || state >= ARRAY_SIZE(state_to_str))
  return "null";
 return state_to_str[state];
}
