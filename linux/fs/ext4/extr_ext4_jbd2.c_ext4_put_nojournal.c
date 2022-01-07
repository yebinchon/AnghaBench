
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int handle_t ;
struct TYPE_2__ {int * journal_info; } ;


 int BUG_ON (int) ;
 TYPE_1__* current ;

__attribute__((used)) static void ext4_put_nojournal(handle_t *handle)
{
 unsigned long ref_cnt = (unsigned long)handle;

 BUG_ON(ref_cnt == 0);

 ref_cnt--;
 handle = (handle_t *)ref_cnt;

 current->journal_info = handle;
}
