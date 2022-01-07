
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int symfs; } ;


 int path__join (char*,size_t,int ,char const*) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static inline int __symbol__join_symfs(char *bf, size_t size, const char *path)
{
 return path__join(bf, size, symbol_conf.symfs, path);
}
