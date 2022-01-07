
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EACCES ;
 int EPERM ;

__attribute__((used)) static inline int complain_error(int error)
{
 if (error == -EPERM || error == -EACCES)
  return 0;
 return error;
}
