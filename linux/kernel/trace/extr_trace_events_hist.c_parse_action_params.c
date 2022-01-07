
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;
struct action_data {scalar_t__ n_params; char* synth_event_name; char** params; scalar_t__ use_trace_keyword; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HIST_ERR_INVALID_PARAM ;
 int HIST_ERR_PARAM_NOT_FOUND ;
 int HIST_ERR_TOO_MANY_PARAMS ;
 scalar_t__ SYNTH_FIELDS_MAX ;
 int errpos (char*) ;
 int hist_err (struct trace_array*,int ,int ) ;
 char* kstrdup (char*,int ) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;
 char* strstrip (char*) ;

__attribute__((used)) static int parse_action_params(struct trace_array *tr, char *params,
          struct action_data *data)
{
 char *param, *saved_param;
 bool first_param = 1;
 int ret = 0;

 while (params) {
  if (data->n_params >= SYNTH_FIELDS_MAX) {
   hist_err(tr, HIST_ERR_TOO_MANY_PARAMS, 0);
   goto out;
  }

  param = strsep(&params, ",");
  if (!param) {
   hist_err(tr, HIST_ERR_PARAM_NOT_FOUND, 0);
   ret = -EINVAL;
   goto out;
  }

  param = strstrip(param);
  if (strlen(param) < 2) {
   hist_err(tr, HIST_ERR_INVALID_PARAM, errpos(param));
   ret = -EINVAL;
   goto out;
  }

  saved_param = kstrdup(param, GFP_KERNEL);
  if (!saved_param) {
   ret = -ENOMEM;
   goto out;
  }

  if (first_param && data->use_trace_keyword) {
   data->synth_event_name = saved_param;
   first_param = 0;
   continue;
  }
  first_param = 0;

  data->params[data->n_params++] = saved_param;
 }
 out:
 return ret;
}
