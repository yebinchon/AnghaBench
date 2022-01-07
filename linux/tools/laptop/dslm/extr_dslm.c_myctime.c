
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 char* ctime (int *) ;
 int strlen (char*) ;

__attribute__((used)) static char *myctime(time_t time)
{
    char *ts = ctime(&time);
    ts[strlen(ts) - 1] = 0;

    return ts;
}
