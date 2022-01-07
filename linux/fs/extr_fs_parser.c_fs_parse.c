
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_parse_result {int has_value; int negated; int boolean; int uint_32; scalar_t__ uint_64; int int_32; } ;
struct fs_parameter_spec {int flags; int type; int opt; } ;
struct fs_parameter_enum {int opt; int value; int * name; } ;
struct fs_parameter_description {int name; struct fs_parameter_enum* enums; } ;
struct fs_parameter {char* key; int type; int dirfd; int string; int size; } ;
struct fs_context {int dummy; } ;


 int BUG () ;
 int EINVAL ;
 int ENOPARAM ;
 int INT_MAX ;

 int bool_names ;
 struct fs_parameter_spec* fs_lookup_key (struct fs_parameter_description const*,char*) ;
 int fs_param_deprecated ;
 int fs_param_neg_with_no ;
 int fs_param_v_optional ;
 int fs_value_is_blob ;



 int invalf (struct fs_context*,char*,int ,char*) ;
 int kstrtoint (int ,int ,int *) ;
 int kstrtouint (int ,int,int *) ;
 int kstrtoull (int ,int ,scalar_t__*) ;
 int lookup_constant (int ,int ,int) ;
 int strcmp (int *,int ) ;
 int warnf (struct fs_context*,char*,int ,char*) ;

int fs_parse(struct fs_context *fc,
      const struct fs_parameter_description *desc,
      struct fs_parameter *param,
      struct fs_parse_result *result)
{
 const struct fs_parameter_spec *p;
 const struct fs_parameter_enum *e;
 int ret = -ENOPARAM, b;

 result->has_value = !!param->string;
 result->negated = 0;
 result->uint_64 = 0;

 p = fs_lookup_key(desc, param->key);
 if (!p) {




  if (result->has_value)
   goto unknown_parameter;
  if (param->key[0] != 'n' || param->key[1] != 'o' || !param->key[2])
   goto unknown_parameter;

  p = fs_lookup_key(desc, param->key + 2);
  if (!p)
   goto unknown_parameter;
  if (!(p->flags & fs_param_neg_with_no))
   goto unknown_parameter;
  result->boolean = 0;
  result->negated = 1;
 }

 if (p->flags & fs_param_deprecated)
  warnf(fc, "%s: Deprecated parameter '%s'",
        desc->name, param->key);

 if (result->negated)
  goto okay;


 switch (p->type) {
 case 144:
  return -EINVAL;
 case 134:
 case 132:
 case 133:
 case 136:
 case 131:
 case 140:
 case 135:
  if (param->type != 128)
   goto bad_value;
  if (!result->has_value) {
   if (p->flags & fs_param_v_optional)
    goto okay;
   goto bad_value;
  }

 default:
  break;
 }




 switch (p->type) {
 case 138:
  if (param->type != 129 &&
      (param->type != 128 || result->has_value))
   return invalf(fc, "%s: Unexpected value for '%s'",
          desc->name, param->key);
  result->boolean = 1;
  goto okay;

 case 141:
  switch (param->type) {
  case 129:
   result->boolean = 1;
   goto okay;
  case 128:
   if (param->size == 0) {
    result->boolean = 1;
    goto okay;
   }
   b = lookup_constant(bool_names, param->string, -1);
   if (b == -1)
    goto bad_value;
   result->boolean = b;
   goto okay;
  default:
   goto bad_value;
  }

 case 134:
  ret = kstrtouint(param->string, 0, &result->uint_32);
  goto maybe_okay;
 case 132:
  ret = kstrtouint(param->string, 8, &result->uint_32);
  goto maybe_okay;
 case 133:
  ret = kstrtouint(param->string, 16, &result->uint_32);
  goto maybe_okay;
 case 136:
  ret = kstrtoint(param->string, 0, &result->int_32);
  goto maybe_okay;
 case 131:
  ret = kstrtoull(param->string, 0, &result->uint_64);
  goto maybe_okay;

 case 140:
  for (e = desc->enums; e->name[0]; e++) {
   if (e->opt == p->opt &&
       strcmp(e->name, param->string) == 0) {
    result->uint_32 = e->value;
    goto okay;
   }
  }
  goto bad_value;

 case 135:
  goto okay;
 case 143:
  if (param->type != fs_value_is_blob)
   goto bad_value;
  goto okay;

 case 139: {
  switch (param->type) {
  case 128:
   if (!result->has_value)
    goto bad_value;

   ret = kstrtouint(param->string, 0, &result->uint_32);
   break;
  case 130:
   result->uint_32 = param->dirfd;
   ret = 0;
  default:
   goto bad_value;
  }

  if (result->uint_32 > INT_MAX)
   goto bad_value;
  goto maybe_okay;
 }

 case 142:
 case 137:
  goto okay;
 default:
  BUG();
 }

maybe_okay:
 if (ret < 0)
  goto bad_value;
okay:
 return p->opt;

bad_value:
 return invalf(fc, "%s: Bad value for '%s'", desc->name, param->key);
unknown_parameter:
 return -ENOPARAM;
}
