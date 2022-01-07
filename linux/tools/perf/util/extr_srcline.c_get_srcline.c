
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct symbol {int dummy; } ;
struct dso {int dummy; } ;


 char* __get_srcline (struct dso*,int ,struct symbol*,int,int,int,int ) ;

char *get_srcline(struct dso *dso, u64 addr, struct symbol *sym,
    bool show_sym, bool show_addr, u64 ip)
{
 return __get_srcline(dso, addr, sym, show_sym, show_addr, 0, ip);
}
