
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsc {int dummy; } ;
struct amixer {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* commit_write ) (struct amixer*) ;int (* set_input ) (struct amixer*,struct rsc*) ;} ;


 int stub1 (struct amixer*,struct rsc*) ;
 int stub2 (struct amixer*) ;

__attribute__((used)) static int mixer_set_input_port(struct amixer *amixer, struct rsc *rsc)
{
 amixer->ops->set_input(amixer, rsc);
 amixer->ops->commit_write(amixer);

 return 0;
}
