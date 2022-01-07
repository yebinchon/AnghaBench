
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpnotify_globals {scalar_t__ ncalls; } ;


 scalar_t__ rx_callbacks ;

int verify_result(const struct tcpnotify_globals *result)
{
 return (result->ncalls > 0 && result->ncalls == rx_callbacks ? 0 : 1);
}
