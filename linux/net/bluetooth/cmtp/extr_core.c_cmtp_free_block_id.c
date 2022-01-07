
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmtp_session {int blockids; } ;


 int clear_bit (int,int *) ;

__attribute__((used)) static inline void cmtp_free_block_id(struct cmtp_session *session, int id)
{
 clear_bit(id, &session->blockids);
}
