
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_item {int dummy; } ;


 int indirect_check_left (struct virtual_item*,int,int ,int ) ;

__attribute__((used)) static int indirect_check_right(struct virtual_item *vi, int free)
{
 return indirect_check_left(vi, free, 0, 0);
}
