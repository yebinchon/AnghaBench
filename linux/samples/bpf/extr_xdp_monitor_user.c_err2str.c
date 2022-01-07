
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REDIR_RES_MAX ;
 char const** redir_names ;

__attribute__((used)) static const char *err2str(int err)
{
 if (err < REDIR_RES_MAX)
  return redir_names[err];
 return ((void*)0);
}
