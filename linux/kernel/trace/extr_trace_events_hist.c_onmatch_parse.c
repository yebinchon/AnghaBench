
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_array {int dummy; } ;
struct TYPE_2__ {void* event_system; void* event; } ;
struct action_data {TYPE_1__ match_data; } ;


 int EINVAL ;
 int ENOMEM ;
 struct action_data* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int HANDLER_ONMATCH ;
 int HIST_ERR_INVALID_SUBSYS_EVENT ;
 int HIST_ERR_NO_CLOSING_PAREN ;
 int HIST_ERR_SUBSYS_NOT_FOUND ;
 scalar_t__ IS_ERR (int ) ;
 int action_parse (struct trace_array*,char*,struct action_data*,int ) ;
 int errpos (char*) ;
 int event_file (struct trace_array*,char*,char*) ;
 int hist_err (struct trace_array*,int ,int ) ;
 void* kstrdup (char*,int ) ;
 struct action_data* kzalloc (int,int ) ;
 int onmatch_destroy (struct action_data*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static struct action_data *onmatch_parse(struct trace_array *tr, char *str)
{
 char *match_event, *match_event_system;
 struct action_data *data;
 int ret = -EINVAL;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return ERR_PTR(-ENOMEM);

 match_event = strsep(&str, ")");
 if (!match_event || !str) {
  hist_err(tr, HIST_ERR_NO_CLOSING_PAREN, errpos(match_event));
  goto free;
 }

 match_event_system = strsep(&match_event, ".");
 if (!match_event) {
  hist_err(tr, HIST_ERR_SUBSYS_NOT_FOUND, errpos(match_event_system));
  goto free;
 }

 if (IS_ERR(event_file(tr, match_event_system, match_event))) {
  hist_err(tr, HIST_ERR_INVALID_SUBSYS_EVENT, errpos(match_event));
  goto free;
 }

 data->match_data.event = kstrdup(match_event, GFP_KERNEL);
 if (!data->match_data.event) {
  ret = -ENOMEM;
  goto free;
 }

 data->match_data.event_system = kstrdup(match_event_system, GFP_KERNEL);
 if (!data->match_data.event_system) {
  ret = -ENOMEM;
  goto free;
 }

 ret = action_parse(tr, str, data, HANDLER_ONMATCH);
 if (ret)
  goto free;
 out:
 return data;
 free:
 onmatch_destroy(data);
 data = ERR_PTR(ret);
 goto out;
}
