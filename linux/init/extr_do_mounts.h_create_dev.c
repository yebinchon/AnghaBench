
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int S_IFBLK ;
 int ksys_mknod (char*,int,int ) ;
 int ksys_unlink (char*) ;
 int new_encode_dev (int ) ;

__attribute__((used)) static inline int create_dev(char *name, dev_t dev)
{
 ksys_unlink(name);
 return ksys_mknod(name, S_IFBLK|0600, new_encode_dev(dev));
}
