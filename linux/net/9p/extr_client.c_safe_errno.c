
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPROTO ;
 int MAX_ERRNO ;
 int P9_DEBUG_ERROR ;
 int p9_debug (int ,char*,int) ;

__attribute__((used)) static int safe_errno(int err)
{
 if ((err > 0) || (err < -MAX_ERRNO)) {
  p9_debug(P9_DEBUG_ERROR, "Invalid error code %d\n", err);
  return -EPROTO;
 }
 return err;
}
