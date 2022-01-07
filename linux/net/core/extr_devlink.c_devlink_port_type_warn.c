
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int WARN (int,char*) ;

__attribute__((used)) static void devlink_port_type_warn(struct work_struct *work)
{
 WARN(1, "Type was not set for devlink port.");
}
