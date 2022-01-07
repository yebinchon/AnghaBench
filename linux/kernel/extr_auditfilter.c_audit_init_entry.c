
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct audit_field {int dummy; } ;
struct TYPE_2__ {struct audit_field* fields; } ;
struct audit_entry {TYPE_1__ rule; } ;


 int GFP_KERNEL ;
 struct audit_field* kcalloc (int ,int,int ) ;
 int kfree (struct audit_entry*) ;
 struct audit_entry* kzalloc (int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct audit_entry *audit_init_entry(u32 field_count)
{
 struct audit_entry *entry;
 struct audit_field *fields;

 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (unlikely(!entry))
  return ((void*)0);

 fields = kcalloc(field_count, sizeof(*fields), GFP_KERNEL);
 if (unlikely(!fields)) {
  kfree(entry);
  return ((void*)0);
 }
 entry->rule.fields = fields;

 return entry;
}
