
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ index; struct tep_format_field* field; } ;
struct tep_print_arg {TYPE_1__ dynarray; int type; } ;
struct tep_format_field {int dummy; } ;
struct tep_event {int dummy; } ;
typedef enum tep_event_type { ____Placeholder_tep_event_type } tep_event_type ;


 int TEP_EVENT_DELIM ;
 int TEP_EVENT_ERROR ;
 int TEP_EVENT_ITEM ;
 int TEP_PRINT_DYNAMIC_ARRAY_LEN ;
 int free_token (char*) ;
 scalar_t__ read_expect_type (int ,char**) ;
 scalar_t__ read_expected (int ,char*) ;
 int read_token (char**) ;
 struct tep_format_field* tep_find_field (struct tep_event*,char*) ;

__attribute__((used)) static enum tep_event_type
process_dynamic_array_len(struct tep_event *event, struct tep_print_arg *arg,
     char **tok)
{
 struct tep_format_field *field;
 enum tep_event_type type;
 char *token;

 if (read_expect_type(TEP_EVENT_ITEM, &token) < 0)
  goto out_free;

 arg->type = TEP_PRINT_DYNAMIC_ARRAY_LEN;


 field = tep_find_field(event, token);
 if (!field)
  goto out_free;

 arg->dynarray.field = field;
 arg->dynarray.index = 0;

 if (read_expected(TEP_EVENT_DELIM, ")") < 0)
  goto out_err;

 type = read_token(&token);
 *tok = token;

 return type;

 out_free:
 free_token(token);
 out_err:
 *tok = ((void*)0);
 return TEP_EVENT_ERROR;
}
