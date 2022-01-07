
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
struct tep_filter_arg {TYPE_1__ boolean; int type; } ;
struct tep_event {int dummy; } ;
typedef enum tep_errno { ____Placeholder_tep_errno } tep_errno ;


 int TEP_ERRNO__MEM_ALLOC_FAILED ;
 int TEP_FILTER_ARG_BOOLEAN ;
 int TEP_FILTER_FALSE ;
 struct tep_filter_arg* allocate_arg () ;
 int process_filter (struct tep_event*,struct tep_filter_arg**,char*,int ) ;
 int strlen (char const*) ;
 int tep_buffer_init (char const*,int ) ;

__attribute__((used)) static enum tep_errno
process_event(struct tep_event *event, const char *filter_str,
       struct tep_filter_arg **parg, char *error_str)
{
 int ret;

 tep_buffer_init(filter_str, strlen(filter_str));

 ret = process_filter(event, parg, error_str, 0);
 if (ret < 0)
  return ret;


 if (!*parg) {
  *parg = allocate_arg();
  if (*parg == ((void*)0))
   return TEP_ERRNO__MEM_ALLOC_FAILED;

  (*parg)->type = TEP_FILTER_ARG_BOOLEAN;
  (*parg)->boolean.value = TEP_FILTER_FALSE;
 }

 return 0;
}
