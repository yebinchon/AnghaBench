
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* saved_cmdlines; } ;


 int TASK_COMM_LEN ;
 TYPE_1__* savedcmd ;

__attribute__((used)) static inline char *get_saved_cmdlines(int idx)
{
 return &savedcmd->saved_cmdlines[idx * TASK_COMM_LEN];
}
