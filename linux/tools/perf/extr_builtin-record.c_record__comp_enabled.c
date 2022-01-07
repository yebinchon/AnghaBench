
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ comp_level; } ;
struct record {TYPE_1__ opts; } ;



__attribute__((used)) static int record__comp_enabled(struct record *rec)
{
 return rec->opts.comp_level > 0;
}
