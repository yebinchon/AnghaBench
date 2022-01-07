
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int ICEMT1724 (struct snd_ice1712*,int ) ;
 int ROUTE_PLAYBACK ;
 unsigned int inl (int ) ;
 int outl (unsigned int,int ) ;

int snd_ice1724_put_route_val(struct snd_ice1712 *ice, unsigned int val,
        int shift)
{
 unsigned int old_val, nval;
 int change;
 static const unsigned char xroute[8] = {
  0,
  2,
  3,
  6,
  7,
 };

 nval = xroute[val % 5];
 val = old_val = inl(ICEMT1724(ice, ROUTE_PLAYBACK));
 val &= ~(0x07 << shift);
 val |= nval << shift;
 change = val != old_val;
 if (change)
  outl(val, ICEMT1724(ice, ROUTE_PLAYBACK));
 return change;
}
