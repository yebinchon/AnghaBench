
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLM_LKF_NOQUEUE ;
 int DLM_LOCK_EX ;
 int DLM_LOCK_PR ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int O_WRONLY ;

__attribute__((used)) static int dlmfs_decode_open_flags(int open_flags,
       int *level,
       int *flags)
{
 if (open_flags & (O_WRONLY|O_RDWR))
  *level = DLM_LOCK_EX;
 else
  *level = DLM_LOCK_PR;

 *flags = 0;
 if (open_flags & O_NONBLOCK)
  *flags |= DLM_LKF_NOQUEUE;

 return 0;
}
