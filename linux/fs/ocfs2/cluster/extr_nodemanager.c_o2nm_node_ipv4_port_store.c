
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u16 ;
struct o2nm_node {int nd_ipv4_port; int nd_set_attributes; } ;
struct config_item {int dummy; } ;
typedef size_t ssize_t ;


 size_t EBUSY ;
 size_t EINVAL ;
 size_t ERANGE ;
 int O2NM_NODE_ATTR_PORT ;
 int htons (unsigned long) ;
 unsigned long simple_strtoul (char*,char**,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 struct o2nm_node* to_o2nm_node (struct config_item*) ;

__attribute__((used)) static ssize_t o2nm_node_ipv4_port_store(struct config_item *item,
      const char *page, size_t count)
{
 struct o2nm_node *node = to_o2nm_node(item);
 unsigned long tmp;
 char *p = (char *)page;

 tmp = simple_strtoul(p, &p, 0);
 if (!p || (*p && (*p != '\n')))
  return -EINVAL;

 if (tmp == 0)
  return -EINVAL;
 if (tmp >= (u16)-1)
  return -ERANGE;

 if (test_and_set_bit(O2NM_NODE_ATTR_PORT, &node->nd_set_attributes))
  return -EBUSY;
 node->nd_ipv4_port = htons(tmp);

 return count;
}
