
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_info_request {int ir_flags; } ;


 int OCFS2_INFO_FL_NON_COHERENT ;

__attribute__((used)) static inline int o2info_coherent(struct ocfs2_info_request *req)
{
 return (!(req->ir_flags & OCFS2_INFO_FL_NON_COHERENT));
}
