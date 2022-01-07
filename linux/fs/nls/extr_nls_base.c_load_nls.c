
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int dummy; } ;


 int find_nls (char*) ;
 struct nls_table* try_then_request_module (int ,char*,char*) ;

struct nls_table *load_nls(char *charset)
{
 return try_then_request_module(find_nls(charset), "nls_%s", charset);
}
