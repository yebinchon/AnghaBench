
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ABSCENT_RATIO ;
 int OFFSET_ABSCENT ;
 int snd_sf_linear_to_log (int,int ,int ) ;

__attribute__((used)) static int
freq_to_note(int mhz)
{
 return snd_sf_linear_to_log(mhz, OFFSET_ABSCENT, ABSCENT_RATIO);
}
