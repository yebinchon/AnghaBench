
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addr_location {int thread; } ;


 int thread__zput (int ) ;

void addr_location__put(struct addr_location *al)
{
 thread__zput(al->thread);
}
