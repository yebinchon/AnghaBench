
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int PERF_HTML_PATH ;
 int S_ISREG (int ) ;
 int asprintf (char**,char*,char const*,char const*) ;
 int mkpath (char*,char const*) ;
 int pr_err (char*,char const*) ;
 scalar_t__ stat (int ,struct stat*) ;
 char* system_path (int ) ;

__attribute__((used)) static int get_html_page_path(char **page_path, const char *page)
{
 struct stat st;
 const char *html_path = system_path(PERF_HTML_PATH);


 if (stat(mkpath("%s/perf.html", html_path), &st)
     || !S_ISREG(st.st_mode)) {
  pr_err("'%s': not a documentation directory.", html_path);
  return -1;
 }

 return asprintf(page_path, "%s/%s.html", html_path, page);
}
