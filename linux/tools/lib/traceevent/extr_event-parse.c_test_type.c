
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;


 int do_warning (char*,int,int) ;

__attribute__((used)) static int test_type(enum tep_event_type type, enum tep_event_type expect)
{
 if (type != expect) {
  do_warning("Error: expected type %d but read %d",
      expect, type);
  return -1;
 }
 return 0;
}
