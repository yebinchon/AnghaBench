
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cmd_to_page (char const*) ;
 scalar_t__ get_html_page_path (char**,char const*) ;
 int open_html (char*) ;

__attribute__((used)) static int show_html_page(const char *perf_cmd)
{
 const char *page = cmd_to_page(perf_cmd);
 char *page_path;

 if (get_html_page_path(&page_path, page) < 0)
  return -1;

 open_html(page_path);

 return 0;
}
