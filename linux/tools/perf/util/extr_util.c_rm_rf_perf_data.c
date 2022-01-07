
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rm_rf_depth_pat (char const*,int ,char const**) ;

int rm_rf_perf_data(const char *path)
{
 const char *pat[] = {
  "header",
  "data.*",
  ((void*)0),
 };

 return rm_rf_depth_pat(path, 0, pat);
}
