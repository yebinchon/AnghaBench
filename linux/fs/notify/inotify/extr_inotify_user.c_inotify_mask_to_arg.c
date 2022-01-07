
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __u32 ;


 int IN_ALL_EVENTS ;
 int IN_IGNORED ;
 int IN_ISDIR ;
 int IN_Q_OVERFLOW ;
 int IN_UNMOUNT ;

__attribute__((used)) static inline u32 inotify_mask_to_arg(__u32 mask)
{
 return mask & (IN_ALL_EVENTS | IN_ISDIR | IN_UNMOUNT | IN_IGNORED |
         IN_Q_OVERFLOW);
}
