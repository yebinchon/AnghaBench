
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct resource {int start; } ;
struct TYPE_4__ {int ecc_size; } ;
struct ramoops_platform_data {int dump_oops; int record_size; int pmsg_size; int console_size; TYPE_1__ ecc_info; int ftrace_size; int flags; int mem_type; int mem_address; int mem_size; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int IORESOURCE_MEM ;
 int dev_dbg (TYPE_2__*,char*) ;
 int dev_err (TYPE_2__*,char*) ;
 struct device_node* of_get_parent (struct device_node*) ;
 int of_node_name_eq (struct device_node*,char*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int parse_size (char*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int ramoops_parse_dt(struct platform_device *pdev,
       struct ramoops_platform_data *pdata)
{
 struct device_node *of_node = pdev->dev.of_node;
 struct device_node *parent_node;
 struct resource *res;
 u32 value;
 int ret;

 dev_dbg(&pdev->dev, "using Device Tree\n");

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev,
   "failed to locate DT /reserved-memory resource\n");
  return -EINVAL;
 }

 pdata->mem_size = resource_size(res);
 pdata->mem_address = res->start;
 pdata->mem_type = of_property_read_bool(of_node, "unbuffered");
 pdata->dump_oops = !of_property_read_bool(of_node, "no-dump-oops");
 { ret = ramoops_parse_dt_size(pdev, "record-size", &value); if (ret < 0) return ret; pdata->record_size = value; };
 { ret = ramoops_parse_dt_size(pdev, "console-size", &value); if (ret < 0) return ret; pdata->console_size = value; };
 { ret = ramoops_parse_dt_size(pdev, "ftrace-size", &value); if (ret < 0) return ret; pdata->ftrace_size = value; };
 { ret = ramoops_parse_dt_size(pdev, "pmsg-size", &value); if (ret < 0) return ret; pdata->pmsg_size = value; };
 { ret = ramoops_parse_dt_size(pdev, "ecc-size", &value); if (ret < 0) return ret; pdata->ecc_info.ecc_size = value; };
 { ret = ramoops_parse_dt_size(pdev, "flags", &value); if (ret < 0) return ret; pdata->flags = value; };
 parent_node = of_get_parent(of_node);
 if (!of_node_name_eq(parent_node, "reserved-memory") &&
     !pdata->console_size && !pdata->ftrace_size &&
     !pdata->pmsg_size && !pdata->ecc_info.ecc_size) {
  pdata->console_size = pdata->record_size;
  pdata->pmsg_size = pdata->record_size;
 }
 of_node_put(parent_node);

 return 0;
}
