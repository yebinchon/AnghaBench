
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;


 int match_number (int *,int*,int ) ;

int match_int(substring_t *s, int *result)
{
 return match_number(s, result, 0);
}
