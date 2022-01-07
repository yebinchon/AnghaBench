
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ext3_fs_type ;
 int unregister_filesystem (int *) ;

__attribute__((used)) static inline void unregister_as_ext3(void)
{
 unregister_filesystem(&ext3_fs_type);
}
