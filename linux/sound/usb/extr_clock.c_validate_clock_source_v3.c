
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uac3_clock_source_descriptor {int bClockID; } ;



__attribute__((used)) static bool validate_clock_source_v3(void *p, int id)
{
 struct uac3_clock_source_descriptor *cs = p;
 return cs->bClockID == id;
}
