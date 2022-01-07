
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_command {int flags; } ;


 int EVENT_CMD_FL_POST_TRIGGER ;

__attribute__((used)) static inline bool event_command_post_trigger(struct event_command *cmd_ops)
{
 return cmd_ops->flags & EVENT_CMD_FL_POST_TRIGGER;
}
