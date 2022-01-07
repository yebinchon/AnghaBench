
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2s_dai {int mode; } ;


 int DAI_MANAGER ;
 scalar_t__ is_opened (struct i2s_dai*) ;

__attribute__((used)) static inline bool is_manager(struct i2s_dai *i2s)
{
 if (is_opened(i2s) && (i2s->mode & DAI_MANAGER))
  return 1;
 else
  return 0;
}
