
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audit_field {int type; int val; int op; } ;
struct TYPE_2__ {int listnr; } ;
struct audit_entry {TYPE_1__ rule; } ;


 int AF_MAX ;
 int AUDIT_FILTER_EXCLUDE ;

 int AUDIT_FILTER_USER ;







 int AUDIT_MAX_FIELD_COMPARE ;
 int Audit_bitmask ;
 int Audit_bittest ;
 int Audit_equal ;
 int Audit_not_equal ;
 int EINVAL ;
 int S_IFMT ;

__attribute__((used)) static int audit_field_valid(struct audit_entry *entry, struct audit_field *f)
{
 switch (f->type) {
 case 151:
  if (entry->rule.listnr != AUDIT_FILTER_EXCLUDE &&
      entry->rule.listnr != AUDIT_FILTER_USER)
   return -EINVAL;
  break;
 case 157:
  if (entry->rule.listnr != 159)
   return -EINVAL;
  break;
 }

 switch (entry->rule.listnr) {
 case 159:
  switch(f->type) {
  case 157:
  case 160:
   break;
  default:
   return -EINVAL;
  }
 }


 switch (f->type) {
 case 173:
 case 172:
 case 171:
 case 170:
 case 142:
 case 168:

  break;
 case 129:
 case 165:
 case 130:
 case 156:
 case 153:
 case 145:
 case 155:
 case 166:
 case 137:
 case 158:
 case 150:
 case 141:
 case 151:
 case 140:
 case 169:
 case 163:
 case 131:
 case 154:
 case 138:
 case 134:
 case 136:
 case 148:
 case 149:
 case 139:

  if (f->op == Audit_bitmask || f->op == Audit_bittest)
   return -EINVAL;
  break;
 case 132:
 case 135:
 case 133:
 case 144:
 case 147:
 case 146:
 case 128:
 case 167:
 case 160:
 case 152:
 case 174:
 case 157:
 case 143:
 case 161:
 case 162:
 case 164:

  if (f->op != Audit_not_equal && f->op != Audit_equal)
   return -EINVAL;
  break;
 default:

  return -EINVAL;
 }


 switch (f->type) {
 case 152:
  if ((f->val != 0) && (f->val != 1))
   return -EINVAL;
  break;
 case 143:
  if (f->val & ~15)
   return -EINVAL;
  break;
 case 161:
  if (f->val & ~S_IFMT)
   return -EINVAL;
  break;
 case 162:
  if (f->val > AUDIT_MAX_FIELD_COMPARE)
   return -EINVAL;
  break;
 case 139:
  if (f->val >= AF_MAX)
   return -EINVAL;
  break;
 default:
  break;
 }

 return 0;
}
