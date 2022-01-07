
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct str_node {int s; } ;


 int free (struct str_node*) ;
 int zfree (char**) ;

__attribute__((used)) static void str_node__delete(struct str_node *snode, bool dupstr)
{
 if (dupstr)
  zfree((char **)&snode->s);
 free(snode);
}
