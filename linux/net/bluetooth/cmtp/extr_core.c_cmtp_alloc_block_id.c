
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmtp_session {int blockids; } ;


 int test_and_set_bit (int,int *) ;

__attribute__((used)) static inline int cmtp_alloc_block_id(struct cmtp_session *session)
{
 int i, id = -1;

 for (i = 0; i < 16; i++)
  if (!test_and_set_bit(i, &session->blockids)) {
   id = i;
   break;
  }

 return id;
}
