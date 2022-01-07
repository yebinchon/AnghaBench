
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_LOG_NAME ;
 int log_name ;
 int strcat (int ,char*) ;
 int strncpy (int ,char const*,scalar_t__) ;

void intel_pt_log_set_name(const char *name)
{
 strncpy(log_name, name, MAX_LOG_NAME - 5);
 strcat(log_name, ".log");
}
