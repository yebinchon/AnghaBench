
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int name; int len; } ;


 unsigned int __vfat_striptail_len (int ,int ) ;

__attribute__((used)) static unsigned int vfat_striptail_len(const struct qstr *qstr)
{
 return __vfat_striptail_len(qstr->len, qstr->name);
}
