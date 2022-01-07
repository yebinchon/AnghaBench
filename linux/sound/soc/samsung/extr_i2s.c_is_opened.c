
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2s_dai {int mode; } ;


 int DAI_OPENED ;

__attribute__((used)) static inline bool is_opened(struct i2s_dai *i2s)
{
 if (i2s && (i2s->mode & DAI_OPENED))
  return 1;
 else
  return 0;
}
