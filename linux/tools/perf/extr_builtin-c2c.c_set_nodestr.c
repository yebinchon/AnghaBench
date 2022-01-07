
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct c2c_hist_entry {int nodestr; int nodeset; } ;
typedef int buf ;
struct TYPE_2__ {int nodes_cnt; } ;


 int ENOMEM ;
 int bitmap_scnprintf (int ,int ,char*,int) ;
 scalar_t__ bitmap_weight (int ,int ) ;
 TYPE_1__ c2c ;
 int scnprintf (char*,int,char*) ;
 int set_node_width (struct c2c_hist_entry*,int) ;
 int strdup (char*) ;

__attribute__((used)) static int set_nodestr(struct c2c_hist_entry *c2c_he)
{
 char buf[30];
 int len;

 if (c2c_he->nodestr)
  return 0;

 if (bitmap_weight(c2c_he->nodeset, c2c.nodes_cnt)) {
  len = bitmap_scnprintf(c2c_he->nodeset, c2c.nodes_cnt,
          buf, sizeof(buf));
 } else {
  len = scnprintf(buf, sizeof(buf), "N/A");
 }

 set_node_width(c2c_he, len);
 c2c_he->nodestr = strdup(buf);
 return c2c_he->nodestr ? 0 : -ENOMEM;
}
