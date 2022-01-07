
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_bebob {int dummy; } ;


 int SAFFIRE_OFFSET_CLOCK_SOURCE ;
 int saffire_read_quad (struct snd_bebob*,int ,int*) ;

__attribute__((used)) static int
saffire_both_clk_src_get(struct snd_bebob *bebob, unsigned int *id)
{
 int err;
 u32 value;

 err = saffire_read_quad(bebob, SAFFIRE_OFFSET_CLOCK_SOURCE, &value);
 if (err >= 0)
  *id = 0xff & value;

 return err;
}
