
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct source_location {int reported; } ;


 int REPORTED_BIT ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static bool was_reported(struct source_location *location)
{
 return test_and_set_bit(REPORTED_BIT, &location->reported);
}
