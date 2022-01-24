#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hpfs_dirent {int /*<<< orphan*/  length; int /*<<< orphan*/  down; } ;
typedef  int /*<<< orphan*/  dnode_secno ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline dnode_secno FUNC3 (struct hpfs_dirent *de)
{
  FUNC0(de->down,("HPFS: de_down_pointer: !de->down\n"));
  return FUNC2(*(__le32 *) ((void *) de + FUNC1(de->length) - 4));
}