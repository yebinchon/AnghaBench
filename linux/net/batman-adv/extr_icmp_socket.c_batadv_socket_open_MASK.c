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
struct inode {int /*<<< orphan*/  i_private; } ;
struct file {struct batadv_socket_client* private_data; } ;
struct batadv_socket_client {unsigned int index; int /*<<< orphan*/  queue_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  bat_priv; scalar_t__ queue_len; int /*<<< orphan*/  queue_list; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct batadv_socket_client**) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int EXFULL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct file*,char*) ; 
 struct batadv_socket_client** batadv_socket_client_hash ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_socket_client*) ; 
 struct batadv_socket_client* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, struct file *file)
{
	unsigned int i;
	struct batadv_socket_client *socket_client;

	if (!FUNC10(THIS_MODULE))
		return -EBUSY;

	FUNC2(file, "");

	FUNC9(inode, file);

	socket_client = FUNC5(sizeof(*socket_client), GFP_KERNEL);
	if (!socket_client) {
		FUNC6(THIS_MODULE);
		return -ENOMEM;
	}

	for (i = 0; i < FUNC0(batadv_socket_client_hash); i++) {
		if (!batadv_socket_client_hash[i]) {
			batadv_socket_client_hash[i] = socket_client;
			break;
		}
	}

	if (i == FUNC0(batadv_socket_client_hash)) {
		FUNC7("Error - can't add another packet client: maximum number of clients reached\n");
		FUNC4(socket_client);
		FUNC6(THIS_MODULE);
		return -EXFULL;
	}

	FUNC1(&socket_client->queue_list);
	socket_client->queue_len = 0;
	socket_client->index = i;
	socket_client->bat_priv = inode->i_private;
	FUNC8(&socket_client->lock);
	FUNC3(&socket_client->queue_wait);

	file->private_data = socket_client;

	return 0;
}