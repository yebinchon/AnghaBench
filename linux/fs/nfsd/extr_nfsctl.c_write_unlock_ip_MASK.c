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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct net {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  address ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct net* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*) ; 
 scalar_t__ FUNC2 (char**,char*,size_t) ; 
 scalar_t__ FUNC3 (struct net*,char*,size_t,struct sockaddr*,size_t) ; 

__attribute__((used)) static ssize_t FUNC4(struct file *file, char *buf, size_t size)
{
	struct sockaddr_storage address;
	struct sockaddr *sap = (struct sockaddr *)&address;
	size_t salen = sizeof(address);
	char *fo_path;
	struct net *net = FUNC0(file);

	/* sanity check */
	if (size == 0)
		return -EINVAL;

	if (buf[size-1] != '\n')
		return -EINVAL;

	fo_path = buf;
	if (FUNC2(&buf, fo_path, size) < 0)
		return -EINVAL;

	if (FUNC3(net, fo_path, size, sap, salen) == 0)
		return -EINVAL;

	return FUNC1(sap);
}