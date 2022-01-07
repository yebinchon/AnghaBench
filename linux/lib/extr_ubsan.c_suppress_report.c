
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct source_location {int dummy; } ;
struct TYPE_2__ {scalar_t__ in_ubsan; } ;


 TYPE_1__* current ;
 scalar_t__ was_reported (struct source_location*) ;

__attribute__((used)) static bool suppress_report(struct source_location *loc)
{
 return current->in_ubsan || was_reported(loc);
}
