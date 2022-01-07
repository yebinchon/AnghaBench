
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct parport {int dummy; } ;
struct mts64 {int current_midi_output_port; TYPE_1__* pardev; } ;
struct TYPE_2__ {struct parport* port; } ;


 int mts64_write_command (struct parport*,int) ;
 int mts64_write_data (struct parport*,int ) ;

__attribute__((used)) static void mts64_write_midi(struct mts64 *mts, u8 c,
        int midiport)
{
 struct parport *p = mts->pardev->port;


 if (mts->current_midi_output_port != midiport)
  mts64_write_command(p, midiport);


 mts64_write_data(p, c);
}
