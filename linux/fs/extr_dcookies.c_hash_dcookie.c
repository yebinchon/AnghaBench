
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dcookie_struct {int hash_list; } ;


 int dcookie_hash (int ) ;
 struct list_head* dcookie_hashtable ;
 int dcookie_value (struct dcookie_struct*) ;
 int list_add (int *,struct list_head*) ;

__attribute__((used)) static void hash_dcookie(struct dcookie_struct * dcs)
{
 struct list_head * list = dcookie_hashtable + dcookie_hash(dcookie_value(dcs));
 list_add(&dcs->hash_list, list);
}
