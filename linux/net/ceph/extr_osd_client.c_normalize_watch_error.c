
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int ENOTCONN ;

__attribute__((used)) static int normalize_watch_error(int err)
{





 if (err == -ENOENT)
  err = -ENOTCONN;

 return err;
}
