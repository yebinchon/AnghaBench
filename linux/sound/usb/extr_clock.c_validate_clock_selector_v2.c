
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uac_clock_selector_descriptor {int bClockID; } ;



__attribute__((used)) static bool validate_clock_selector_v2(void *p, int id)
{
 struct uac_clock_selector_descriptor *cs = p;
 return cs->bClockID == id;
}
