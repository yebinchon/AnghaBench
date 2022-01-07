
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int parse_num_or_str (char**,int *,char const**,char*) ;
 int parse_sym_idx (char**,int*) ;

__attribute__((used)) static int parse_addr_size(char **inp, u64 *num, const char **str, int *idx)
{
 int err = parse_num_or_str(inp, num, str, " ");

 if (!err && *str)
  err = parse_sym_idx(inp, idx);

 return err;
}
