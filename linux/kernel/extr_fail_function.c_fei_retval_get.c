
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fei_attr {int retval; } ;


 int ENOENT ;
 int fei_attr_is_valid (struct fei_attr*) ;
 int fei_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int fei_retval_get(void *data, u64 *val)
{
 struct fei_attr *attr = data;
 int err = 0;

 mutex_lock(&fei_lock);

 if (!fei_attr_is_valid(attr))
  err = -ENOENT;
 else
  *val = attr->retval;
 mutex_unlock(&fei_lock);

 return err;
}
