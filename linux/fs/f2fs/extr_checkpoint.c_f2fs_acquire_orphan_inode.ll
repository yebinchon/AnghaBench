; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_acquire_orphan_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_acquire_orphan_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i64, %struct.inode_management* }
%struct.inode_management = type { i64, i32 }

@ORPHAN_INO = common dso_local global i64 0, align 8
@FAULT_ORPHAN = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_acquire_orphan_inode(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.inode_management*, align 8
  %5 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %6 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %7 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %6, i32 0, i32 1
  %8 = load %struct.inode_management*, %struct.inode_management** %7, align 8
  %9 = load i64, i64* @ORPHAN_INO, align 8
  %10 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %8, i64 %9
  store %struct.inode_management* %10, %struct.inode_management** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.inode_management*, %struct.inode_management** %4, align 8
  %12 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %15 = load i32, i32* @FAULT_ORPHAN, align 4
  %16 = call i64 @time_to_inject(%struct.f2fs_sb_info* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.inode_management*, %struct.inode_management** %4, align 8
  %20 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load i32, i32* @FAULT_ORPHAN, align 4
  %23 = call i32 @f2fs_show_injection_info(i32 %22)
  %24 = load i32, i32* @ENOSPC, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %50

26:                                               ; preds = %1
  %27 = load %struct.inode_management*, %struct.inode_management** %4, align 8
  %28 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %31 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* @ENOSPC, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %45

40:                                               ; preds = %26
  %41 = load %struct.inode_management*, %struct.inode_management** %4, align 8
  %42 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.inode_management*, %struct.inode_management** %4, align 8
  %47 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %18
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @time_to_inject(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @f2fs_show_injection_info(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
