
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* format; int * args; } ;
struct tep_event {TYPE_1__ print_fmt; } ;
typedef enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;


 int TEP_EVENT_DELIM ;
 int TEP_EVENT_DQUOTE ;
 int TEP_EVENT_ITEM ;
 int TEP_EVENT_NONE ;
 int TEP_EVENT_OP ;
 scalar_t__ asprintf (char**,char*,char*,char*) ;
 int event_read_print_args (struct tep_event*,int **) ;
 int free_token (char*) ;
 scalar_t__ read_expect_type (int,char**) ;
 scalar_t__ read_expected (int ,char*) ;
 scalar_t__ read_expected_item (int ,char*) ;
 int read_token_item (char**) ;
 scalar_t__ test_type_token (int,char*,int ,char*) ;

__attribute__((used)) static int event_read_print(struct tep_event *event)
{
 enum tep_event_type type;
 char *token;
 int ret;

 if (read_expected_item(TEP_EVENT_ITEM, "print") < 0)
  return -1;

 if (read_expected(TEP_EVENT_ITEM, "fmt") < 0)
  return -1;

 if (read_expected(TEP_EVENT_OP, ":") < 0)
  return -1;

 if (read_expect_type(TEP_EVENT_DQUOTE, &token) < 0)
  goto fail;

 concat:
 event->print_fmt.format = token;
 event->print_fmt.args = ((void*)0);


 type = read_token_item(&token);

 if (type == TEP_EVENT_NONE)
  return 0;


 if (type == TEP_EVENT_DQUOTE) {
  char *cat;

  if (asprintf(&cat, "%s%s", event->print_fmt.format, token) < 0)
   goto fail;
  free_token(token);
  free_token(event->print_fmt.format);
  event->print_fmt.format = ((void*)0);
  token = cat;
  goto concat;
 }

 if (test_type_token(type, token, TEP_EVENT_DELIM, ","))
  goto fail;

 free_token(token);

 ret = event_read_print_args(event, &event->print_fmt.args);
 if (ret < 0)
  return -1;

 return ret;

 fail:
 free_token(token);
 return -1;
}
