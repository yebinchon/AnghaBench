
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEP_EVENT_ITEM ;
 int TEP_EVENT_OP ;
 int free_token (char*) ;
 scalar_t__ read_expect_type (int ,char**) ;
 scalar_t__ read_expected (int ,char*) ;

__attribute__((used)) static char *event_read_name(void)
{
 char *token;

 if (read_expected(TEP_EVENT_ITEM, "name") < 0)
  return ((void*)0);

 if (read_expected(TEP_EVENT_OP, ":") < 0)
  return ((void*)0);

 if (read_expect_type(TEP_EVENT_ITEM, &token) < 0)
  goto fail;

 return token;

 fail:
 free_token(token);
 return ((void*)0);
}
