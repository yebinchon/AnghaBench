
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mount_lock ;
 int write_seqlock (int *) ;

__attribute__((used)) static inline void lock_mount_hash(void)
{
 write_seqlock(&mount_lock);
}
