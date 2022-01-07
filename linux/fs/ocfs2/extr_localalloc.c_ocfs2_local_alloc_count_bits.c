
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_local_alloc {int la_size; int la_bitmap; } ;
struct ocfs2_dinode {int dummy; } ;


 struct ocfs2_local_alloc* OCFS2_LOCAL_ALLOC (struct ocfs2_dinode*) ;
 int le16_to_cpu (int ) ;
 int memweight (int ,int ) ;
 int trace_ocfs2_local_alloc_count_bits (int ) ;

__attribute__((used)) static u32 ocfs2_local_alloc_count_bits(struct ocfs2_dinode *alloc)
{
 u32 count;
 struct ocfs2_local_alloc *la = OCFS2_LOCAL_ALLOC(alloc);

 count = memweight(la->la_bitmap, le16_to_cpu(la->la_size));

 trace_ocfs2_local_alloc_count_bits(count);
 return count;
}
