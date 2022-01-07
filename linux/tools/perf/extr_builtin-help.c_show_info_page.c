
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERF_INFO_PATH ;
 char* cmd_to_page (char const*) ;
 int execlp (char*,char*,char*,char const*,int *) ;
 int setenv (char*,int ,int) ;
 int system_path (int ) ;

__attribute__((used)) static int show_info_page(const char *perf_cmd)
{
 const char *page = cmd_to_page(perf_cmd);
 setenv("INFOPATH", system_path(PERF_INFO_PATH), 1);
 execlp("info", "info", "perfman", page, ((void*)0));
 return -1;
}
