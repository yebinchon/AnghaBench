
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport {int dummy; } ;
struct mts64 {TYPE_1__* pardev; } ;
struct TYPE_2__ {struct parport* port; } ;


 int MTS64_CMD_COM_CLOSE1 ;
 int MTS64_CMD_COM_CLOSE2 ;
 int mts64_write_command (struct parport*,int ) ;

__attribute__((used)) static int mts64_device_close(struct mts64 *mts)
{
 int i;
 struct parport *p = mts->pardev->port;

 for (i = 0; i < 5; ++i) {
  mts64_write_command(p, MTS64_CMD_COM_CLOSE1);
  mts64_write_command(p, MTS64_CMD_COM_CLOSE2);
 }

 return 0;
}
