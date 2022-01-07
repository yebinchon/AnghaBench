
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 int rm_rf_depth_pat (char const*,int ,int *) ;

int rm_rf(const char *path)
{
 return rm_rf_depth_pat(path, INT_MAX, ((void*)0));
}
