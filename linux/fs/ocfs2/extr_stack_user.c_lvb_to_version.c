
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_protocol_version {int pv_minor; int pv_major; } ;



__attribute__((used)) static void lvb_to_version(char *lvb, struct ocfs2_protocol_version *ver)
{
 struct ocfs2_protocol_version *pv =
  (struct ocfs2_protocol_version *)lvb;




 ver->pv_major = pv->pv_major;
 ver->pv_minor = pv->pv_minor;
}
