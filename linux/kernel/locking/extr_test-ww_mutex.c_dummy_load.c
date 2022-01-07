
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stress {int dummy; } ;


 int usleep_range (int,int) ;

__attribute__((used)) static void dummy_load(struct stress *stress)
{
 usleep_range(1000, 2000);
}
