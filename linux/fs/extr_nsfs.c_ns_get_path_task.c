
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ns_get_path_task_args {int task; TYPE_1__* ns_ops; } ;
struct ns_common {int dummy; } ;
struct TYPE_2__ {struct ns_common* (* get ) (int ) ;} ;


 struct ns_common* stub1 (int ) ;

__attribute__((used)) static struct ns_common *ns_get_path_task(void *private_data)
{
 struct ns_get_path_task_args *args = private_data;

 return args->ns_ops->get(args->task);
}
