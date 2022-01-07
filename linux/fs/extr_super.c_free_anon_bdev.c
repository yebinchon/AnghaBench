
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int MINOR (int ) ;
 int ida_free (int *,int ) ;
 int unnamed_dev_ida ;

void free_anon_bdev(dev_t dev)
{
 ida_free(&unnamed_dev_ida, MINOR(dev));
}
