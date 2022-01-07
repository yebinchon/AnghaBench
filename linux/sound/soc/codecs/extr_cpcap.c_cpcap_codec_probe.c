
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct device_node* of_node; TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int of_node; } ;


 int ARRAY_SIZE (int ) ;
 int cpcap_dai ;
 int devm_snd_soc_register_component (TYPE_2__*,int *,int ,int ) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int soc_codec_dev_cpcap ;

__attribute__((used)) static int cpcap_codec_probe(struct platform_device *pdev)
{
 struct device_node *codec_node =
  of_get_child_by_name(pdev->dev.parent->of_node, "audio-codec");

 pdev->dev.of_node = codec_node;

 return devm_snd_soc_register_component(&pdev->dev, &soc_codec_dev_cpcap,
          cpcap_dai, ARRAY_SIZE(cpcap_dai));
}
