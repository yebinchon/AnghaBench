
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct fei_attr {scalar_t__ retval; TYPE_1__ kp; } ;


 int EINVAL ;
 int ENOENT ;
 unsigned long adjust_error_retval (unsigned long,scalar_t__) ;
 int fei_attr_is_valid (struct fei_attr*) ;
 int fei_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int fei_retval_set(void *data, u64 val)
{
 struct fei_attr *attr = data;
 unsigned long retv = (unsigned long)val;
 int err = 0;

 mutex_lock(&fei_lock);





 if (!fei_attr_is_valid(attr)) {
  err = -ENOENT;
  goto out;
 }

 if (attr->kp.addr) {
  if (adjust_error_retval((unsigned long)attr->kp.addr,
     val) != retv)
   err = -EINVAL;
 }
 if (!err)
  attr->retval = val;
out:
 mutex_unlock(&fei_lock);

 return err;
}
