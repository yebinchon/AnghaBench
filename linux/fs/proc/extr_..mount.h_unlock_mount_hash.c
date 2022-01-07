
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mount_lock ;
 int write_sequnlock (int *) ;

__attribute__((used)) static inline void unlock_mount_hash(void)
{
 write_sequnlock(&mount_lock);
}
