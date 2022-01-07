
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int substring_t ;


 int match_u64int (int *,int *,int ) ;

int match_u64(substring_t *s, u64 *result)
{
 return match_u64int(s, result, 0);
}
