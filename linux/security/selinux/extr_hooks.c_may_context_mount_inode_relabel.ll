; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_may_context_mount_inode_relabel.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_may_context_mount_inode_relabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.superblock_security_struct = type { i32 }
%struct.cred = type { i32 }
%struct.task_security_struct = type { i32 }

@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_FILESYSTEM = common dso_local global i32 0, align 4
@FILESYSTEM__RELABELFROM = common dso_local global i32 0, align 4
@FILESYSTEM__ASSOCIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.superblock_security_struct*, %struct.cred*)* @may_context_mount_inode_relabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_context_mount_inode_relabel(i32 %0, %struct.superblock_security_struct* %1, %struct.cred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.superblock_security_struct*, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca %struct.task_security_struct*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.superblock_security_struct* %1, %struct.superblock_security_struct** %6, align 8
  store %struct.cred* %2, %struct.cred** %7, align 8
  %10 = load %struct.cred*, %struct.cred** %7, align 8
  %11 = call %struct.task_security_struct* @selinux_cred(%struct.cred* %10)
  store %struct.task_security_struct* %11, %struct.task_security_struct** %8, align 8
  %12 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %13 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %16 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SECCLASS_FILESYSTEM, align 4
  %19 = load i32, i32* @FILESYSTEM__RELABELFROM, align 4
  %20 = call i32 @avc_has_perm(i32* @selinux_state, i32 %14, i32 %17, i32 %18, i32 %19, i32* null)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %34

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %28 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SECCLASS_FILESYSTEM, align 4
  %31 = load i32, i32* @FILESYSTEM__ASSOCIATE, align 4
  %32 = call i32 @avc_has_perm(i32* @selinux_state, i32 %26, i32 %29, i32 %30, i32 %31, i32* null)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %25, %23
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.task_security_struct* @selinux_cred(%struct.cred*) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
