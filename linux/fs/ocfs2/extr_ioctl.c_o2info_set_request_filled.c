
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_info_request {int ir_flags; } ;


 int OCFS2_INFO_FL_FILLED ;

__attribute__((used)) static inline void o2info_set_request_filled(struct ocfs2_info_request *req)
{
 req->ir_flags |= OCFS2_INFO_FL_FILLED;
}
