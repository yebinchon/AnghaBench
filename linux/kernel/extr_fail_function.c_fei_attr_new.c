
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int post_handler; int pre_handler; int symbol_name; } ;
struct fei_attr {int list; int retval; TYPE_1__ kp; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int adjust_error_retval (unsigned long,int ) ;
 int fei_kprobe_handler ;
 int fei_post_handler ;
 int kfree (struct fei_attr*) ;
 int kstrdup (char const*,int ) ;
 struct fei_attr* kzalloc (int,int ) ;

__attribute__((used)) static struct fei_attr *fei_attr_new(const char *sym, unsigned long addr)
{
 struct fei_attr *attr;

 attr = kzalloc(sizeof(*attr), GFP_KERNEL);
 if (attr) {
  attr->kp.symbol_name = kstrdup(sym, GFP_KERNEL);
  if (!attr->kp.symbol_name) {
   kfree(attr);
   return ((void*)0);
  }
  attr->kp.pre_handler = fei_kprobe_handler;
  attr->kp.post_handler = fei_post_handler;
  attr->retval = adjust_error_retval(addr, 0);
  INIT_LIST_HEAD(&attr->list);
 }
 return attr;
}
