
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sym; } ;
struct hist_entry {TYPE_1__ ms; } ;
typedef int int64_t ;


 int _sort__sym_size_cmp (int ,int ) ;

__attribute__((used)) static int64_t
sort__sym_size_cmp(struct hist_entry *left, struct hist_entry *right)
{
 return _sort__sym_size_cmp(right->ms.sym, left->ms.sym);
}
