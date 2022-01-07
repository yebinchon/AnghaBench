
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TASK_COMM_LEN ;
 int get_saved_cmdlines (int) ;
 int strncpy (int ,char const*,int ) ;

__attribute__((used)) static inline void set_cmdline(int idx, const char *cmdline)
{
 strncpy(get_saved_cmdlines(idx), cmdline, TASK_COMM_LEN);
}
