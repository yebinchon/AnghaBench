
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int platform_get_drvdata (struct platform_device*) ;
 int snd_card_free (int ) ;

__attribute__((used)) static int snd_ml403_ac97cr_remove(struct platform_device *pfdev)
{
 snd_card_free(platform_get_drvdata(pfdev));
 return 0;
}
