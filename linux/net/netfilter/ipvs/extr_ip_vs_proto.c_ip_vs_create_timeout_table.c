
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int* kmemdup (int*,int,int ) ;

int *
ip_vs_create_timeout_table(int *table, int size)
{
 return kmemdup(table, size, GFP_KERNEL);
}
