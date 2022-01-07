
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strfilter_node {scalar_t__ r; } ;


 int strfilter_node__sprint (struct strfilter_node*,char*) ;

__attribute__((used)) static int strfilter_node__sprint_pt(struct strfilter_node *node, char *buf)
{
 int len;
 int pt = node->r ? 2 : 0;

 if (buf && pt)
  *buf++ = '(';
 len = strfilter_node__sprint(node, buf);
 if (len < 0)
  return len;
 if (buf && pt)
  *(buf + len) = ')';
 return len + pt;
}
