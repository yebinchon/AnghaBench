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
typedef  void* u8 ;
struct smp_ltk {void* type; void* enc_size; int /*<<< orphan*/  rand; int /*<<< orphan*/  ediv; void* authenticated; int /*<<< orphan*/  val; void* bdaddr_type; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  list; } ;
struct hci_dev {int /*<<< orphan*/  long_term_keys; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
typedef  int /*<<< orphan*/  __le64 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct smp_ltk* FUNC1 (struct hci_dev*,int /*<<< orphan*/ *,void*,void*) ; 
 struct smp_ltk* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void**,int) ; 

struct smp_ltk *FUNC6(struct hci_dev *hdev, bdaddr_t *bdaddr,
			    u8 addr_type, u8 type, u8 authenticated,
			    u8 tk[16], u8 enc_size, __le16 ediv, __le64 rand)
{
	struct smp_ltk *key, *old_key;
	u8 role = FUNC4(type);

	old_key = FUNC1(hdev, bdaddr, addr_type, role);
	if (old_key)
		key = old_key;
	else {
		key = FUNC2(sizeof(*key), GFP_KERNEL);
		if (!key)
			return NULL;
		FUNC3(&key->list, &hdev->long_term_keys);
	}

	FUNC0(&key->bdaddr, bdaddr);
	key->bdaddr_type = addr_type;
	FUNC5(key->val, tk, sizeof(key->val));
	key->authenticated = authenticated;
	key->ediv = ediv;
	key->rand = rand;
	key->enc_size = enc_size;
	key->type = type;

	return key;
}