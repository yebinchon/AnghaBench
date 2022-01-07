
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;


 int __read_expected (int,char const*,int) ;

__attribute__((used)) static int read_expected(enum tep_event_type expect, const char *str)
{
 return __read_expected(expect, str, 1);
}
