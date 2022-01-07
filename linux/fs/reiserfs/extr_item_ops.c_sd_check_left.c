
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_item {int dummy; } ;


 int BUG_ON (int) ;

__attribute__((used)) static int sd_check_left(struct virtual_item *vi, int free,
    int start_skip, int end_skip)
{
 BUG_ON(start_skip || end_skip);
 return -1;
}
