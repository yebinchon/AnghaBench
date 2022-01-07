
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int diff_mode; } ;
struct wm8741_priv {TYPE_1__ pdata; } ;
struct wm8741_platform_data {int dummy; } ;
struct device {scalar_t__ of_node; } ;


 struct wm8741_platform_data* dev_get_platdata (struct device*) ;
 int memcpy (TYPE_1__*,struct wm8741_platform_data const*,int) ;
 scalar_t__ of_property_read_u32 (scalar_t__,char*,int *) ;

__attribute__((used)) static int wm8741_set_pdata(struct device *dev, struct wm8741_priv *wm8741)
{
 const struct wm8741_platform_data *pdata = dev_get_platdata(dev);
 u32 diff_mode;

 if (dev->of_node) {
  if (of_property_read_u32(dev->of_node, "diff-mode", &diff_mode)
    >= 0)
   wm8741->pdata.diff_mode = diff_mode;
 } else {
  if (pdata != ((void*)0))
   memcpy(&wm8741->pdata, pdata, sizeof(wm8741->pdata));
 }

 return 0;
}
