
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcb_app_type {int ifindex; int list; int app; } ;
struct dcb_app {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int dcb_app_list ;
 struct dcb_app_type* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (int *,struct dcb_app const*,int) ;

__attribute__((used)) static int dcb_app_add(const struct dcb_app *app, int ifindex)
{
 struct dcb_app_type *entry;

 entry = kmalloc(sizeof(*entry), GFP_ATOMIC);
 if (!entry)
  return -ENOMEM;

 memcpy(&entry->app, app, sizeof(*app));
 entry->ifindex = ifindex;
 list_add(&entry->list, &dcb_app_list);

 return 0;
}
