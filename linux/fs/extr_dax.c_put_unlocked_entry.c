
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_state {int dummy; } ;


 int dax_is_conflict (void*) ;
 int dax_wake_entry (struct xa_state*,void*,int) ;

__attribute__((used)) static void put_unlocked_entry(struct xa_state *xas, void *entry)
{

 if (entry && !dax_is_conflict(entry))
  dax_wake_entry(xas, entry, 0);
}
