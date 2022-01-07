
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int map; } ;
struct hist_entry {TYPE_1__ ms; } ;
typedef int int64_t ;


 int _sort__dso_cmp (int ,int ) ;

__attribute__((used)) static int64_t
sort__dso_cmp(struct hist_entry *left, struct hist_entry *right)
{
 return _sort__dso_cmp(right->ms.map, left->ms.map);
}
