; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_recovery.c_add_fsync_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_recovery.c_add_fsync_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsync_inode_entry = type { i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.list_head = type { i32 }

@fsync_entry_slab = common dso_local global i32 0, align 4
@GFP_F2FS_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fsync_inode_entry* (%struct.f2fs_sb_info*, %struct.list_head*, i32, i32)* @add_fsync_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fsync_inode_entry* @add_fsync_inode(%struct.f2fs_sb_info* %0, %struct.list_head* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fsync_inode_entry*, align 8
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.fsync_inode_entry*, align 8
  %12 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %6, align 8
  store %struct.list_head* %1, %struct.list_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %14 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.inode* @f2fs_iget_retry(i32 %15, i32 %16)
  store %struct.inode* %17, %struct.inode** %10, align 8
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = call i64 @IS_ERR(%struct.inode* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = call %struct.fsync_inode_entry* @ERR_CAST(%struct.inode* %22)
  store %struct.fsync_inode_entry* %23, %struct.fsync_inode_entry** %5, align 8
  br label %57

24:                                               ; preds = %4
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = call i32 @dquot_initialize(%struct.inode* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %52

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = call i32 @dquot_alloc_inode(%struct.inode* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %52

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %30
  %41 = load i32, i32* @fsync_entry_slab, align 4
  %42 = load i32, i32* @GFP_F2FS_ZERO, align 4
  %43 = call %struct.fsync_inode_entry* @f2fs_kmem_cache_alloc(i32 %41, i32 %42)
  store %struct.fsync_inode_entry* %43, %struct.fsync_inode_entry** %11, align 8
  %44 = load %struct.inode*, %struct.inode** %10, align 8
  %45 = load %struct.fsync_inode_entry*, %struct.fsync_inode_entry** %11, align 8
  %46 = getelementptr inbounds %struct.fsync_inode_entry, %struct.fsync_inode_entry* %45, i32 0, i32 1
  store %struct.inode* %44, %struct.inode** %46, align 8
  %47 = load %struct.fsync_inode_entry*, %struct.fsync_inode_entry** %11, align 8
  %48 = getelementptr inbounds %struct.fsync_inode_entry, %struct.fsync_inode_entry* %47, i32 0, i32 0
  %49 = load %struct.list_head*, %struct.list_head** %7, align 8
  %50 = call i32 @list_add_tail(i32* %48, %struct.list_head* %49)
  %51 = load %struct.fsync_inode_entry*, %struct.fsync_inode_entry** %11, align 8
  store %struct.fsync_inode_entry* %51, %struct.fsync_inode_entry** %5, align 8
  br label %57

52:                                               ; preds = %38, %29
  %53 = load %struct.inode*, %struct.inode** %10, align 8
  %54 = call i32 @iput(%struct.inode* %53)
  %55 = load i32, i32* %12, align 4
  %56 = call %struct.fsync_inode_entry* @ERR_PTR(i32 %55)
  store %struct.fsync_inode_entry* %56, %struct.fsync_inode_entry** %5, align 8
  br label %57

57:                                               ; preds = %52, %40, %21
  %58 = load %struct.fsync_inode_entry*, %struct.fsync_inode_entry** %5, align 8
  ret %struct.fsync_inode_entry* %58
}

declare dso_local %struct.inode* @f2fs_iget_retry(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.fsync_inode_entry* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @dquot_alloc_inode(%struct.inode*) #1

declare dso_local %struct.fsync_inode_entry* @f2fs_kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.fsync_inode_entry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
