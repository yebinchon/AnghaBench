
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct find_path_data {int index; int path; } ;
struct buffer_head {int dummy; } ;


 int get_bh (struct buffer_head*) ;
 int ocfs2_path_insert_eb (int ,int ,struct buffer_head*) ;

__attribute__((used)) static void find_path_ins(void *data, struct buffer_head *bh)
{
 struct find_path_data *fp = data;

 get_bh(bh);
 ocfs2_path_insert_eb(fp->path, fp->index, bh);
 fp->index++;
}
