
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fs_context {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* parse_monolithic ) (struct fs_context*,void*) ;} ;


 int generic_parse_monolithic (struct fs_context*,void*) ;

int parse_monolithic_mount_data(struct fs_context *fc, void *data)
{
 int (*monolithic_mount_data)(struct fs_context *, void *);

 monolithic_mount_data = fc->ops->parse_monolithic;
 if (!monolithic_mount_data)
  monolithic_mount_data = generic_parse_monolithic;

 return monolithic_mount_data(fc, data);
}
