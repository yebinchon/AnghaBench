
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_i2s {int dummy; } ;
typedef int s8 ;


 int EINVAL ;

__attribute__((used)) static s8 sun4i_i2s_get_wss(const struct sun4i_i2s *i2s, int width)
{
 if (width < 16 || width > 32)
  return -EINVAL;

 if (width % 4)
  return -EINVAL;

 return (width - 16) / 4;
}
