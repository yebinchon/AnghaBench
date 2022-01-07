
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct portman {TYPE_1__* pardev; } ;
struct TYPE_2__ {int port; } ;


 int parport_write_data (int ,int ) ;

__attribute__((used)) static inline void portman_write_data(struct portman *pm, u8 value)
{
 parport_write_data(pm->pardev->port, value);
}
