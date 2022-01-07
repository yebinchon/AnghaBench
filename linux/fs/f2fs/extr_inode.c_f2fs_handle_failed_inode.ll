; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_handle_failed_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_handle_failed_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.node_info = type { i64 }

@SBI_NEED_FSCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"May loss orphan inode, run fsck to fix.\00", align 1
@NULL_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Too many orphan inodes, run fsck to fix.\00", align 1
@FI_FREE_NID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_handle_failed_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.node_info, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %6)
  store %struct.f2fs_sb_info* %7, %struct.f2fs_sb_info** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call i32 @clear_nlink(%struct.inode* %8)
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = call i32 @f2fs_update_inode_page(%struct.inode* %10)
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call i32 @f2fs_inode_synced(%struct.inode* %12)
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = call i32 @unlock_new_inode(%struct.inode* %14)
  %16 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @f2fs_get_node_info(%struct.f2fs_sb_info* %16, i32 %19, %struct.node_info* %4)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %25 = load i32, i32* @SBI_NEED_FSCK, align 4
  %26 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %24, i32 %25)
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %28 = call i32 @f2fs_warn(%struct.f2fs_sb_info* %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %59

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.node_info, %struct.node_info* %4, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NULL_ADDR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %36 = call i32 @f2fs_acquire_orphan_inode(%struct.f2fs_sb_info* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %41 = load i32, i32* @SBI_NEED_FSCK, align 4
  %42 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %40, i32 %41)
  %43 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %44 = call i32 @f2fs_warn(%struct.f2fs_sb_info* %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %48

45:                                               ; preds = %34
  %46 = load %struct.inode*, %struct.inode** %2, align 8
  %47 = call i32 @f2fs_add_orphan_inode(%struct.inode* %46)
  br label %48

48:                                               ; preds = %45, %39
  %49 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %50 = load %struct.inode*, %struct.inode** %2, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @f2fs_alloc_nid_done(%struct.f2fs_sb_info* %49, i32 %52)
  br label %58

54:                                               ; preds = %29
  %55 = load %struct.inode*, %struct.inode** %2, align 8
  %56 = load i32, i32* @FI_FREE_NID, align 4
  %57 = call i32 @set_inode_flag(%struct.inode* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %48
  br label %59

59:                                               ; preds = %58, %23
  %60 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %61 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %60)
  %62 = load %struct.inode*, %struct.inode** %2, align 8
  %63 = call i32 @iput(%struct.inode* %62)
  ret void
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @f2fs_update_inode_page(%struct.inode*) #1

declare dso_local i32 @f2fs_inode_synced(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @f2fs_get_node_info(%struct.f2fs_sb_info*, i32, %struct.node_info*) #1

declare dso_local i32 @set_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_warn(%struct.f2fs_sb_info*, i8*) #1

declare dso_local i32 @f2fs_acquire_orphan_inode(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_add_orphan_inode(%struct.inode*) #1

declare dso_local i32 @f2fs_alloc_nid_done(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
