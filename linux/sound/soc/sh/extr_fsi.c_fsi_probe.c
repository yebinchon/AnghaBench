
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct sh_fsi_platform_info {int port_b; int port_a; } ;
struct resource {scalar_t__ start; } ;
struct platform_device_id {scalar_t__ driver_data; } ;
struct TYPE_13__ {int platform_data; struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; struct platform_device_id* id_entry; } ;
struct fsi_priv {struct fsi_master* master; scalar_t__ phys; scalar_t__ base; } ;
struct fsi_master {struct fsi_priv fsia; struct fsi_priv fsib; scalar_t__ base; int lock; struct fsi_core const* core; } ;
struct fsi_core {int dummy; } ;
struct device_node {int dummy; } ;
typedef int info ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_name (TYPE_1__*) ;
 int dev_set_drvdata (TYPE_1__*,struct fsi_master*) ;
 scalar_t__ devm_ioremap_nocache (TYPE_1__*,scalar_t__,int ) ;
 struct fsi_master* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_irq (TYPE_1__*,unsigned int,int *,int ,int ,struct fsi_master*) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,int ,int ) ;
 int fsi_handler_init (struct fsi_priv*,int *) ;
 int fsi_interrupt ;
 int fsi_of_parse (char*,struct device_node*,int *,TYPE_1__*) ;
 int fsi_port_info_init (struct fsi_priv*,int *) ;
 int fsi_soc_component ;
 int fsi_soc_dai ;
 int fsi_stream_probe (struct fsi_priv*,TYPE_1__*) ;
 int fsi_stream_remove (struct fsi_priv*) ;
 int memcpy (struct sh_fsi_platform_info*,int ,int) ;
 int memset (struct sh_fsi_platform_info*,int ,int) ;
 struct fsi_core* of_device_get_match_data (TYPE_1__*) ;
 unsigned int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_runtime_disable (TYPE_1__*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int fsi_probe(struct platform_device *pdev)
{
 struct fsi_master *master;
 struct device_node *np = pdev->dev.of_node;
 struct sh_fsi_platform_info info;
 const struct fsi_core *core;
 struct fsi_priv *fsi;
 struct resource *res;
 unsigned int irq;
 int ret;

 memset(&info, 0, sizeof(info));

 core = ((void*)0);
 if (np) {
  core = of_device_get_match_data(&pdev->dev);
  fsi_of_parse("fsia", np, &info.port_a, &pdev->dev);
  fsi_of_parse("fsib", np, &info.port_b, &pdev->dev);
 } else {
  const struct platform_device_id *id_entry = pdev->id_entry;
  if (id_entry)
   core = (struct fsi_core *)id_entry->driver_data;

  if (pdev->dev.platform_data)
   memcpy(&info, pdev->dev.platform_data, sizeof(info));
 }

 if (!core) {
  dev_err(&pdev->dev, "unknown fsi device\n");
  return -ENODEV;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 irq = platform_get_irq(pdev, 0);
 if (!res || (int)irq <= 0) {
  dev_err(&pdev->dev, "Not enough FSI platform resources.\n");
  return -ENODEV;
 }

 master = devm_kzalloc(&pdev->dev, sizeof(*master), GFP_KERNEL);
 if (!master)
  return -ENOMEM;

 master->base = devm_ioremap_nocache(&pdev->dev,
         res->start, resource_size(res));
 if (!master->base) {
  dev_err(&pdev->dev, "Unable to ioremap FSI registers.\n");
  return -ENXIO;
 }


 master->core = core;
 spin_lock_init(&master->lock);


 fsi = &master->fsia;
 fsi->base = master->base;
 fsi->phys = res->start;
 fsi->master = master;
 fsi_port_info_init(fsi, &info.port_a);
 fsi_handler_init(fsi, &info.port_a);
 ret = fsi_stream_probe(fsi, &pdev->dev);
 if (ret < 0) {
  dev_err(&pdev->dev, "FSIA stream probe failed\n");
  return ret;
 }


 fsi = &master->fsib;
 fsi->base = master->base + 0x40;
 fsi->phys = res->start + 0x40;
 fsi->master = master;
 fsi_port_info_init(fsi, &info.port_b);
 fsi_handler_init(fsi, &info.port_b);
 ret = fsi_stream_probe(fsi, &pdev->dev);
 if (ret < 0) {
  dev_err(&pdev->dev, "FSIB stream probe failed\n");
  goto exit_fsia;
 }

 pm_runtime_enable(&pdev->dev);
 dev_set_drvdata(&pdev->dev, master);

 ret = devm_request_irq(&pdev->dev, irq, &fsi_interrupt, 0,
          dev_name(&pdev->dev), master);
 if (ret) {
  dev_err(&pdev->dev, "irq request err\n");
  goto exit_fsib;
 }

 ret = devm_snd_soc_register_component(&pdev->dev, &fsi_soc_component,
        fsi_soc_dai, ARRAY_SIZE(fsi_soc_dai));
 if (ret < 0) {
  dev_err(&pdev->dev, "cannot snd component register\n");
  goto exit_fsib;
 }

 return ret;

exit_fsib:
 pm_runtime_disable(&pdev->dev);
 fsi_stream_remove(&master->fsib);
exit_fsia:
 fsi_stream_remove(&master->fsia);

 return ret;
}
