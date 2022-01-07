; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_release_orphan_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_release_orphan_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { %struct.inode_management* }
%struct.inode_management = type { i64, i32 }

@ORPHAN_INO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_release_orphan_inode(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.inode_management*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %4 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %5 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %4, i32 0, i32 0
  %6 = load %struct.inode_management*, %struct.inode_management** %5, align 8
  %7 = load i64, i64* @ORPHAN_INO, align 8
  %8 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %6, i64 %7
  store %struct.inode_management* %8, %struct.inode_management** %3, align 8
  %9 = load %struct.inode_management*, %struct.inode_management** %3, align 8
  %10 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %13 = load %struct.inode_management*, %struct.inode_management** %3, align 8
  %14 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %12, i32 %17)
  %19 = load %struct.inode_management*, %struct.inode_management** %3, align 8
  %20 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.inode_management*, %struct.inode_management** %3, align 8
  %24 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %23, i32 0, i32 1
  %25 = call i32 @spin_unlock(i32* %24)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
