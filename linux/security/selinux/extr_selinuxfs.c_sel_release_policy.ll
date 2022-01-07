; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_release_policy.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_release_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.selinux_fs_info* }
%struct.selinux_fs_info = type { i64 }
%struct.file = type { %struct.policy_load_memory* }
%struct.policy_load_memory = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @sel_release_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sel_release_policy(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.selinux_fs_info*, align 8
  %6 = alloca %struct.policy_load_memory*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %10, align 8
  store %struct.selinux_fs_info* %11, %struct.selinux_fs_info** %5, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.policy_load_memory*, %struct.policy_load_memory** %13, align 8
  store %struct.policy_load_memory* %14, %struct.policy_load_memory** %6, align 8
  %15 = load %struct.policy_load_memory*, %struct.policy_load_memory** %6, align 8
  %16 = icmp ne %struct.policy_load_memory* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %5, align 8
  %21 = getelementptr inbounds %struct.selinux_fs_info, %struct.selinux_fs_info* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.policy_load_memory*, %struct.policy_load_memory** %6, align 8
  %23 = getelementptr inbounds %struct.policy_load_memory, %struct.policy_load_memory* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vfree(i32 %24)
  %26 = load %struct.policy_load_memory*, %struct.policy_load_memory** %6, align 8
  %27 = call i32 @kfree(%struct.policy_load_memory* %26)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(%struct.policy_load_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
