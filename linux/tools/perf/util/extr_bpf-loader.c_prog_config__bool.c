
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int strtobool (char const*,int*) ;

__attribute__((used)) static int
prog_config__bool(const char *value, bool *pbool, bool invert)
{
 int err;
 bool bool_value;

 if (!pbool)
  return -EINVAL;

 err = strtobool(value, &bool_value);
 if (err)
  return err;

 *pbool = invert ? !bool_value : bool_value;
 return 0;
}
