
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct cygnus_audio {int * audio_clk; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PROP_LEN_MAX ;
 int PTR_ERR (int ) ;
 int devm_clk_get (int *,char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int audio_clk_init(struct platform_device *pdev,
      struct cygnus_audio *cygaud)
{
 int i;
 char clk_name[PROP_LEN_MAX];

 for (i = 0; i < ARRAY_SIZE(cygaud->audio_clk); i++) {
  snprintf(clk_name, PROP_LEN_MAX, "ch%d_audio", i);

  cygaud->audio_clk[i] = devm_clk_get(&pdev->dev, clk_name);
  if (IS_ERR(cygaud->audio_clk[i]))
   return PTR_ERR(cygaud->audio_clk[i]);
 }

 return 0;
}
