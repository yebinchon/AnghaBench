
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEP_EVENT_ITEM ;
 int TEP_EVENT_OP ;
 int free_token (char*) ;
 scalar_t__ read_expect_type (int ,char**) ;
 scalar_t__ read_expected (int ,char*) ;
 scalar_t__ read_expected_item (int ,char*) ;
 int strtoul (char*,int *,int ) ;

__attribute__((used)) static int event_read_id(void)
{
 char *token;
 int id;

 if (read_expected_item(TEP_EVENT_ITEM, "ID") < 0)
  return -1;

 if (read_expected(TEP_EVENT_OP, ":") < 0)
  return -1;

 if (read_expect_type(TEP_EVENT_ITEM, &token) < 0)
  goto fail;

 id = strtoul(token, ((void*)0), 0);
 free_token(token);
 return id;

 fail:
 free_token(token);
 return -1;
}
