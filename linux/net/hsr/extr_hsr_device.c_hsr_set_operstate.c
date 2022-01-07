
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsr_port {int dev; } ;


 int IF_OPER_DOWN ;
 int IF_OPER_LOWERLAYERDOWN ;
 int IF_OPER_UP ;
 int __hsr_set_operstate (int ,int ) ;
 int is_admin_up (int ) ;

__attribute__((used)) static void hsr_set_operstate(struct hsr_port *master, bool has_carrier)
{
 if (!is_admin_up(master->dev)) {
  __hsr_set_operstate(master->dev, IF_OPER_DOWN);
  return;
 }

 if (has_carrier)
  __hsr_set_operstate(master->dev, IF_OPER_UP);
 else
  __hsr_set_operstate(master->dev, IF_OPER_LOWERLAYERDOWN);
}
