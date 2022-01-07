
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_EXCL ;
 int O_RDWR ;
 int O_TMPFILE ;
 int open (char*,int) ;

int get_temp_fd(void)
{
 return open(".", O_TMPFILE | O_RDWR | O_EXCL);
}
