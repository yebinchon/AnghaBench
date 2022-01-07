
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fei_attr {int list; int kp; } ;


 int fei_attr_free (struct fei_attr*) ;
 int fei_debugfs_remove_attr (struct fei_attr*) ;
 int list_del (int *) ;
 int unregister_kprobe (int *) ;

__attribute__((used)) static void fei_attr_remove(struct fei_attr *attr)
{
 fei_debugfs_remove_attr(attr);
 unregister_kprobe(&attr->kp);
 list_del(&attr->list);
 fei_attr_free(attr);
}
