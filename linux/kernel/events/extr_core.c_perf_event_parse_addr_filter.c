
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int from; int * to; } ;
typedef TYPE_4__ substring_t ;
struct TYPE_11__ {int nr_file_filters; } ;
struct TYPE_9__ {scalar_t__ exclude_kernel; } ;
struct perf_event {TYPE_3__ addr_filters; TYPE_2__* ctx; TYPE_1__ attr; } ;
struct TYPE_13__ {int dentry; } ;
struct perf_addr_filter {int action; TYPE_7__ path; int size; int offset; } ;
struct list_head {int dummy; } ;
typedef enum perf_addr_filter_action_t { ____Placeholder_perf_addr_filter_action_t } perf_addr_filter_action_t ;
struct TYPE_14__ {int i_mode; } ;
struct TYPE_10__ {int task; } ;


 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;







 int IF_STATE_ACTION ;
 int IF_STATE_END ;
 int IF_STATE_SOURCE ;
 int LOOKUP_FOLLOW ;
 int MAX_OPT_ARGS ;



 int S_ISREG (int ) ;
 TYPE_8__* d_inode (int ) ;
 int free_filters_list (struct list_head*) ;
 int if_tokens ;
 int kern_path (char*,int ,TYPE_7__*) ;
 int kfree (char*) ;
 char* kstrdup (char*,int ) ;
 int kstrtoul (int ,int ,int *) ;
 char* match_strdup (TYPE_4__*) ;
 int match_token (char*,int ,TYPE_4__*) ;
 struct perf_addr_filter* perf_addr_filter_new (struct perf_event*,struct list_head*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
perf_event_parse_addr_filter(struct perf_event *event, char *fstr,
        struct list_head *filters)
{
 struct perf_addr_filter *filter = ((void*)0);
 char *start, *orig, *filename = ((void*)0);
 substring_t args[MAX_OPT_ARGS];
 int state = IF_STATE_ACTION, token;
 unsigned int kernel = 0;
 int ret = -EINVAL;

 orig = fstr = kstrdup(fstr, GFP_KERNEL);
 if (!fstr)
  return -ENOMEM;

 while ((start = strsep(&fstr, " ,\n")) != ((void*)0)) {
  static const enum perf_addr_filter_action_t actions[] = {
   [137] = 130,
   [136] = 129,
   [135] = 128,
  };
  ret = -EINVAL;

  if (!*start)
   continue;


  if (state == IF_STATE_ACTION) {
   filter = perf_addr_filter_new(event, filters);
   if (!filter)
    goto fail;
  }

  token = match_token(start, if_tokens, args);
  switch (token) {
  case 137:
  case 136:
  case 135:
   if (state != IF_STATE_ACTION)
    goto fail;

   filter->action = actions[token];
   state = IF_STATE_SOURCE;
   break;

  case 131:
  case 132:
   kernel = 1;


  case 133:
  case 134:
   if (state != IF_STATE_SOURCE)
    goto fail;

   *args[0].to = 0;
   ret = kstrtoul(args[0].from, 0, &filter->offset);
   if (ret)
    goto fail;

   if (token == 132 || token == 134) {
    *args[1].to = 0;
    ret = kstrtoul(args[1].from, 0, &filter->size);
    if (ret)
     goto fail;
   }

   if (token == 134 || token == 133) {
    int fpos = token == 134 ? 2 : 1;

    filename = match_strdup(&args[fpos]);
    if (!filename) {
     ret = -ENOMEM;
     goto fail;
    }
   }

   state = IF_STATE_END;
   break;

  default:
   goto fail;
  }






  if (state == IF_STATE_END) {
   ret = -EINVAL;
   if (kernel && event->attr.exclude_kernel)
    goto fail;





   if (filter->action == 130 &&
       !filter->size)
    goto fail;

   if (!kernel) {
    if (!filename)
     goto fail;
    ret = -EOPNOTSUPP;
    if (!event->ctx->task)
     goto fail_free_name;


    ret = kern_path(filename, LOOKUP_FOLLOW,
      &filter->path);
    if (ret)
     goto fail_free_name;

    kfree(filename);
    filename = ((void*)0);

    ret = -EINVAL;
    if (!filter->path.dentry ||
        !S_ISREG(d_inode(filter->path.dentry)
          ->i_mode))
     goto fail;

    event->addr_filters.nr_file_filters++;
   }


   state = IF_STATE_ACTION;
   filter = ((void*)0);
  }
 }

 if (state != IF_STATE_ACTION)
  goto fail;

 kfree(orig);

 return 0;

fail_free_name:
 kfree(filename);
fail:
 free_filters_list(filters);
 kfree(orig);

 return ret;
}
