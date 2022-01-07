
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct fei_attr* symbol_name; } ;
struct fei_attr {TYPE_1__ kp; } ;


 int kfree (struct fei_attr*) ;

__attribute__((used)) static void fei_attr_free(struct fei_attr *attr)
{
 if (attr) {
  kfree(attr->kp.symbol_name);
  kfree(attr);
 }
}
