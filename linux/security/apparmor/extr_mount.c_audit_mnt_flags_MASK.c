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
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 unsigned long MS_BIND ; 
 unsigned long MS_DIRSYNC ; 
 unsigned long MS_I_VERSION ; 
 unsigned long MS_MANDLOCK ; 
 unsigned long MS_MOVE ; 
 unsigned long MS_NOATIME ; 
 unsigned long MS_NODEV ; 
 unsigned long MS_NODIRATIME ; 
 unsigned long MS_NOEXEC ; 
 unsigned long MS_NOSUID ; 
 unsigned long MS_NOUSER ; 
 unsigned long MS_POSIXACL ; 
 unsigned long MS_PRIVATE ; 
 unsigned long MS_RDONLY ; 
 unsigned long MS_REC ; 
 unsigned long MS_RELATIME ; 
 unsigned long MS_REMOUNT ; 
 unsigned long MS_SHARED ; 
 unsigned long MS_SILENT ; 
 unsigned long MS_SLAVE ; 
 unsigned long MS_STRICTATIME ; 
 unsigned long MS_SYNCHRONOUS ; 
 unsigned long MS_UNBINDABLE ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,char*) ; 

__attribute__((used)) static void FUNC1(struct audit_buffer *ab, unsigned long flags)
{
	if (flags & MS_RDONLY)
		FUNC0(ab, "ro");
	else
		FUNC0(ab, "rw");
	if (flags & MS_NOSUID)
		FUNC0(ab, ", nosuid");
	if (flags & MS_NODEV)
		FUNC0(ab, ", nodev");
	if (flags & MS_NOEXEC)
		FUNC0(ab, ", noexec");
	if (flags & MS_SYNCHRONOUS)
		FUNC0(ab, ", sync");
	if (flags & MS_REMOUNT)
		FUNC0(ab, ", remount");
	if (flags & MS_MANDLOCK)
		FUNC0(ab, ", mand");
	if (flags & MS_DIRSYNC)
		FUNC0(ab, ", dirsync");
	if (flags & MS_NOATIME)
		FUNC0(ab, ", noatime");
	if (flags & MS_NODIRATIME)
		FUNC0(ab, ", nodiratime");
	if (flags & MS_BIND)
		FUNC0(ab, flags & MS_REC ? ", rbind" : ", bind");
	if (flags & MS_MOVE)
		FUNC0(ab, ", move");
	if (flags & MS_SILENT)
		FUNC0(ab, ", silent");
	if (flags & MS_POSIXACL)
		FUNC0(ab, ", acl");
	if (flags & MS_UNBINDABLE)
		FUNC0(ab, flags & MS_REC ? ", runbindable" :
				 ", unbindable");
	if (flags & MS_PRIVATE)
		FUNC0(ab, flags & MS_REC ? ", rprivate" :
				 ", private");
	if (flags & MS_SLAVE)
		FUNC0(ab, flags & MS_REC ? ", rslave" :
				 ", slave");
	if (flags & MS_SHARED)
		FUNC0(ab, flags & MS_REC ? ", rshared" :
				 ", shared");
	if (flags & MS_RELATIME)
		FUNC0(ab, ", relatime");
	if (flags & MS_I_VERSION)
		FUNC0(ab, ", iversion");
	if (flags & MS_STRICTATIME)
		FUNC0(ab, ", strictatime");
	if (flags & MS_NOUSER)
		FUNC0(ab, ", nouser");
}