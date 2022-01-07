; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_drop_inmem_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_drop_inmem_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32* }
%struct.f2fs_inode_info = type { i32, i64*, i32, i32 }

@FI_ATOMIC_FILE = common dso_local global i32 0, align 4
@GC_FAILURE_ATOMIC = common dso_local global i64 0, align 8
@ATOMIC_FILE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_drop_inmem_pages(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.f2fs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %5)
  store %struct.f2fs_sb_info* %6, %struct.f2fs_sb_info** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %7)
  store %struct.f2fs_inode_info* %8, %struct.f2fs_inode_info** %4, align 8
  br label %9

9:                                                ; preds = %15, %1
  %10 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %11 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %10, i32 0, i32 3
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %17 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %21 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %20, i32 0, i32 3
  %22 = call i32 @__revoke_inmem_pages(%struct.inode* %19, i32* %21, i32 1, i32 0, i32 1)
  %23 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %24 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %23, i32 0, i32 2
  %25 = call i32 @mutex_unlock(i32* %24)
  br label %9

26:                                               ; preds = %9
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = load i32, i32* @FI_ATOMIC_FILE, align 4
  %29 = call i32 @clear_inode_flag(%struct.inode* %27, i32 %28)
  %30 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %31 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @GC_FAILURE_ATOMIC, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64 0, i64* %34, align 8
  %35 = load %struct.inode*, %struct.inode** %2, align 8
  %36 = call i32 @stat_dec_atomic_write(%struct.inode* %35)
  %37 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %38 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @ATOMIC_FILE, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %44 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %43, i32 0, i32 0
  %45 = call i32 @list_empty(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %26
  %48 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %49 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %48, i32 0, i32 0
  %50 = call i32 @list_del_init(i32* %49)
  br label %51

51:                                               ; preds = %47, %26
  %52 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %53 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @ATOMIC_FILE, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = call i32 @spin_unlock(i32* %56)
  ret void
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.f2fs_inode_info* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__revoke_inmem_pages(%struct.inode*, i32*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @stat_dec_atomic_write(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
