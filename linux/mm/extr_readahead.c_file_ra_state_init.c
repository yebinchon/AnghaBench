
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_ra_state {int prev_pos; int ra_pages; } ;
struct address_space {int host; } ;
struct TYPE_2__ {int ra_pages; } ;


 TYPE_1__* inode_to_bdi (int ) ;

void
file_ra_state_init(struct file_ra_state *ra, struct address_space *mapping)
{
 ra->ra_pages = inode_to_bdi(mapping->host)->ra_pages;
 ra->prev_pos = -1;
}
