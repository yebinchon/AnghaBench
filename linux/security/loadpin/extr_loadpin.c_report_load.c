
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int GFP_KERNEL ;
 int current ;
 int kfree (char*) ;
 char* kstrdup_quotable_cmdline (int ,int ) ;
 char* kstrdup_quotable_file (struct file*,int ) ;
 int pr_notice (char*,char const*,char*,char*,char*,char*,int ,char*,char*,char*) ;
 int task_pid_nr (int ) ;

__attribute__((used)) static void report_load(const char *origin, struct file *file, char *operation)
{
 char *cmdline, *pathname;

 pathname = kstrdup_quotable_file(file, GFP_KERNEL);
 cmdline = kstrdup_quotable_cmdline(current, GFP_KERNEL);

 pr_notice("%s %s obj=%s%s%s pid=%d cmdline=%s%s%s\n",
    origin, operation,
    (pathname && pathname[0] != '<') ? "\"" : "",
    pathname,
    (pathname && pathname[0] != '<') ? "\"" : "",
    task_pid_nr(current),
    cmdline ? "\"" : "", cmdline, cmdline ? "\"" : "");

 kfree(cmdline);
 kfree(pathname);
}
