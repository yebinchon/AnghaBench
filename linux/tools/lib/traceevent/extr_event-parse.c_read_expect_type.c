
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;


 int __read_expect_type (int,char**,int) ;

__attribute__((used)) static int read_expect_type(enum tep_event_type expect, char **tok)
{
 return __read_expect_type(expect, tok, 1);
}
