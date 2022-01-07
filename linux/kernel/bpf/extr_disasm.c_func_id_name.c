
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __BPF_FUNC_MAX_ID ;
 char const** func_id_str ;

const char *func_id_name(int id)
{
 if (id >= 0 && id < __BPF_FUNC_MAX_ID && func_id_str[id])
  return func_id_str[id];
 else
  return "unknown";
}
