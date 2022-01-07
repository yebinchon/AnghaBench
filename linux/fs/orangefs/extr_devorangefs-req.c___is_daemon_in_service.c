
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int open_access_count ;

bool __is_daemon_in_service(void)
{
 return open_access_count == 1;
}
