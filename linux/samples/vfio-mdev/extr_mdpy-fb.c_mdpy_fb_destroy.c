
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {scalar_t__ screen_base; } ;


 int iounmap (scalar_t__) ;

__attribute__((used)) static void mdpy_fb_destroy(struct fb_info *info)
{
 if (info->screen_base)
  iounmap(info->screen_base);
}
