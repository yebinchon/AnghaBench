
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct sbitmap {unsigned int depth; unsigned int shift; unsigned int map_nr; } ;


 unsigned int sbitmap_cleared (struct sbitmap*) ;
 unsigned int sbitmap_weight (struct sbitmap*) ;
 int seq_printf (struct seq_file*,char*,unsigned int) ;

void sbitmap_show(struct sbitmap *sb, struct seq_file *m)
{
 seq_printf(m, "depth=%u\n", sb->depth);
 seq_printf(m, "busy=%u\n", sbitmap_weight(sb) - sbitmap_cleared(sb));
 seq_printf(m, "cleared=%u\n", sbitmap_cleared(sb));
 seq_printf(m, "bits_per_word=%u\n", 1U << sb->shift);
 seq_printf(m, "map_nr=%u\n", sb->map_nr);
}
