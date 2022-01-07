
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_entry {int type; } ;
__attribute__((used)) static inline int trace_valid_entry(struct trace_entry *entry)
{
 switch (entry->type) {
 case 133:
 case 134:
 case 128:
 case 129:
 case 130:
 case 135:
 case 132:
 case 131:
  return 1;
 }
 return 0;
}
