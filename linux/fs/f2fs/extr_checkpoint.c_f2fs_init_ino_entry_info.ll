; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_init_ino_entry_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_init_ino_entry_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32, %struct.inode_management* }
%struct.inode_management = type { i64, i32, i32, i32 }

@MAX_INO_ENTRY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@F2FS_CP_PACKS = common dso_local global i32 0, align 4
@NR_CURSEG_TYPE = common dso_local global i32 0, align 4
@F2FS_ORPHANS_PER_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_init_ino_entry_info(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode_management*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MAX_INO_ENTRY, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %31

9:                                                ; preds = %5
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %11 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %10, i32 0, i32 2
  %12 = load %struct.inode_management*, %struct.inode_management** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %12, i64 %14
  store %struct.inode_management* %15, %struct.inode_management** %4, align 8
  %16 = load %struct.inode_management*, %struct.inode_management** %4, align 8
  %17 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %16, i32 0, i32 3
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call i32 @INIT_RADIX_TREE(i32* %17, i32 %18)
  %20 = load %struct.inode_management*, %struct.inode_management** %4, align 8
  %21 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %20, i32 0, i32 2
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.inode_management*, %struct.inode_management** %4, align 8
  %24 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %23, i32 0, i32 1
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.inode_management*, %struct.inode_management** %4, align 8
  %27 = getelementptr inbounds %struct.inode_management, %struct.inode_management* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %9
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %5

31:                                               ; preds = %5
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %33 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @F2FS_CP_PACKS, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32, i32* @NR_CURSEG_TYPE, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %40 = call i32 @__cp_payload(%struct.f2fs_sb_info* %39)
  %41 = sub nsw i32 %38, %40
  %42 = load i32, i32* @F2FS_ORPHANS_PER_BLOCK, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %45 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  ret void
}

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @__cp_payload(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
