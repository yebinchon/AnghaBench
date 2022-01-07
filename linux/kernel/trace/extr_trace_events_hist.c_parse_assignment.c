
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;
struct hist_trigger_attrs {int map_bits; scalar_t__ n_assignments; char** assignment_str; void* clock; void* name; void* sort_key_str; void* vals_str; void* keys_str; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HIST_ERR_TOO_MANY_VARS ;
 scalar_t__ TRACING_MAP_VARS_MAX ;
 int errpos (char*) ;
 int hist_err (struct trace_array*,int ,int ) ;
 void* kstrdup (char*,int ) ;
 int parse_map_size (char*) ;
 scalar_t__ str_has_prefix (char*,char*) ;
 int strsep (char**,char*) ;
 char* strstrip (char*) ;

__attribute__((used)) static int parse_assignment(struct trace_array *tr,
       char *str, struct hist_trigger_attrs *attrs)
{
 int ret = 0;

 if ((str_has_prefix(str, "key=")) ||
     (str_has_prefix(str, "keys="))) {
  attrs->keys_str = kstrdup(str, GFP_KERNEL);
  if (!attrs->keys_str) {
   ret = -ENOMEM;
   goto out;
  }
 } else if ((str_has_prefix(str, "val=")) ||
     (str_has_prefix(str, "vals=")) ||
     (str_has_prefix(str, "values="))) {
  attrs->vals_str = kstrdup(str, GFP_KERNEL);
  if (!attrs->vals_str) {
   ret = -ENOMEM;
   goto out;
  }
 } else if (str_has_prefix(str, "sort=")) {
  attrs->sort_key_str = kstrdup(str, GFP_KERNEL);
  if (!attrs->sort_key_str) {
   ret = -ENOMEM;
   goto out;
  }
 } else if (str_has_prefix(str, "name=")) {
  attrs->name = kstrdup(str, GFP_KERNEL);
  if (!attrs->name) {
   ret = -ENOMEM;
   goto out;
  }
 } else if (str_has_prefix(str, "clock=")) {
  strsep(&str, "=");
  if (!str) {
   ret = -EINVAL;
   goto out;
  }

  str = strstrip(str);
  attrs->clock = kstrdup(str, GFP_KERNEL);
  if (!attrs->clock) {
   ret = -ENOMEM;
   goto out;
  }
 } else if (str_has_prefix(str, "size=")) {
  int map_bits = parse_map_size(str);

  if (map_bits < 0) {
   ret = map_bits;
   goto out;
  }
  attrs->map_bits = map_bits;
 } else {
  char *assignment;

  if (attrs->n_assignments == TRACING_MAP_VARS_MAX) {
   hist_err(tr, HIST_ERR_TOO_MANY_VARS, errpos(str));
   ret = -EINVAL;
   goto out;
  }

  assignment = kstrdup(str, GFP_KERNEL);
  if (!assignment) {
   ret = -ENOMEM;
   goto out;
  }

  attrs->assignment_str[attrs->n_assignments++] = assignment;
 }
 out:
 return ret;
}
