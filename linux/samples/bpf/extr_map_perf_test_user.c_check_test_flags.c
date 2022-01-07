
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum test_type { ____Placeholder_test_type } test_type ;


 int TEST_BIT (int) ;
 int test_flags ;

__attribute__((used)) static int check_test_flags(enum test_type t)
{
 return test_flags & TEST_BIT(t);
}
