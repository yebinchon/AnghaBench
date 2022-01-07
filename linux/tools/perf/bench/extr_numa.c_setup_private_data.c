
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int init_random; int thp; int init_cpu0; } ;
struct TYPE_4__ {TYPE_1__ p; } ;


 int MAP_PRIVATE ;
 void* alloc_data (int ,int ,int ,int ,int ,int ) ;
 TYPE_2__* g ;

__attribute__((used)) static void * setup_private_data(ssize_t bytes)
{
 return alloc_data(bytes, MAP_PRIVATE, 0, g->p.init_cpu0, g->p.thp, g->p.init_random);
}
