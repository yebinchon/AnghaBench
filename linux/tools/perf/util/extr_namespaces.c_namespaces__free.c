
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namespaces {int dummy; } ;


 int free (struct namespaces*) ;

void namespaces__free(struct namespaces *namespaces)
{
 free(namespaces);
}
