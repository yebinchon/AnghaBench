
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comm {TYPE_1__* comm_str; } ;
struct TYPE_2__ {char const* str; } ;



const char *comm__str(const struct comm *comm)
{
 return comm->comm_str->str;
}
