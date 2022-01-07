
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int nodetype; union jffs2_sum_mem* next; } ;
struct TYPE_7__ {int version; int xid; } ;
struct TYPE_6__ {int ino; int nsize; } ;
struct TYPE_5__ {int inode; } ;
union jffs2_sum_mem {TYPE_4__ u; TYPE_3__ x; TYPE_2__ d; TYPE_1__ i; } ;
struct jffs2_summary {int sum_num; int sum_size; union jffs2_sum_mem* sum_list_tail; union jffs2_sum_mem* sum_list_head; } ;






 int JFFS2_SUMMARY_DIRENT_SIZE (int ) ;
 int JFFS2_SUMMARY_INODE_SIZE ;
 int JFFS2_SUMMARY_XATTR_SIZE ;
 int JFFS2_SUMMARY_XREF_SIZE ;
 int JFFS2_WARNING (char*,int) ;
 int dbg_summary (char*,...) ;
 int je16_to_cpu (int ) ;
 int je32_to_cpu (int ) ;

__attribute__((used)) static int jffs2_sum_add_mem(struct jffs2_summary *s, union jffs2_sum_mem *item)
{
 if (!s->sum_list_head)
  s->sum_list_head = (union jffs2_sum_mem *) item;
 if (s->sum_list_tail)
  s->sum_list_tail->u.next = (union jffs2_sum_mem *) item;
 s->sum_list_tail = (union jffs2_sum_mem *) item;

 switch (je16_to_cpu(item->u.nodetype)) {
  case 130:
   s->sum_size += JFFS2_SUMMARY_INODE_SIZE;
   s->sum_num++;
   dbg_summary("inode (%u) added to summary\n",
      je32_to_cpu(item->i.inode));
   break;
  case 131:
   s->sum_size += JFFS2_SUMMARY_DIRENT_SIZE(item->d.nsize);
   s->sum_num++;
   dbg_summary("dirent (%u) added to summary\n",
      je32_to_cpu(item->d.ino));
   break;
  default:
   JFFS2_WARNING("UNKNOWN node type %u\n",
         je16_to_cpu(item->u.nodetype));
   return 1;
 }
 return 0;
}
