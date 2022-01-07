; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.dentry = type { i32 }
%struct.f2fs_sb_info = type { i32 }

@EIO = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@f2fs_dir_inode_operations = common dso_local global i32 0, align 4
@f2fs_dir_operations = common dso_local global i32 0, align 4
@f2fs_dblock_aops = common dso_local global i32 0, align 4
@FI_INC_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @f2fs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.f2fs_sb_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %11)
  store %struct.f2fs_sb_info* %12, %struct.f2fs_sb_info** %8, align 8
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %14 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %13)
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %90

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i32 @dquot_initialize(%struct.inode* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %90

27:                                               ; preds = %20
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load i32, i32* @S_IFDIR, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.inode* @f2fs_new_inode(%struct.inode* %28, i32 %31)
  store %struct.inode* %32, %struct.inode** %9, align 8
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = call i64 @IS_ERR(%struct.inode* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.inode*, %struct.inode** %9, align 8
  %38 = call i32 @PTR_ERR(%struct.inode* %37)
  store i32 %38, i32* %4, align 4
  br label %90

39:                                               ; preds = %27
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 3
  store i32* @f2fs_dir_inode_operations, i32** %41, align 8
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 2
  store i32* @f2fs_dir_operations, i32** %43, align 8
  %44 = load %struct.inode*, %struct.inode** %9, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32* @f2fs_dblock_aops, i32** %47, align 8
  %48 = load %struct.inode*, %struct.inode** %9, align 8
  %49 = call i32 @inode_nohighmem(%struct.inode* %48)
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = load i32, i32* @FI_INC_LINK, align 4
  %52 = call i32 @set_inode_flag(%struct.inode* %50, i32 %51)
  %53 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %54 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %53)
  %55 = load %struct.dentry*, %struct.dentry** %6, align 8
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = call i32 @f2fs_add_link(%struct.dentry* %55, %struct.inode* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %39
  br label %83

61:                                               ; preds = %39
  %62 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %63 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %62)
  %64 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %65 = load %struct.inode*, %struct.inode** %9, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @f2fs_alloc_nid_done(%struct.f2fs_sb_info* %64, i32 %67)
  %69 = load %struct.dentry*, %struct.dentry** %6, align 8
  %70 = load %struct.inode*, %struct.inode** %9, align 8
  %71 = call i32 @d_instantiate_new(%struct.dentry* %69, %struct.inode* %70)
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = call i64 @IS_DIRSYNC(%struct.inode* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %61
  %76 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %77 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @f2fs_sync_fs(i32 %78, i32 1)
  br label %80

80:                                               ; preds = %75, %61
  %81 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %82 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %81, i32 1)
  store i32 0, i32* %4, align 4
  br label %90

83:                                               ; preds = %60
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = load i32, i32* @FI_INC_LINK, align 4
  %86 = call i32 @clear_inode_flag(%struct.inode* %84, i32 %85)
  %87 = load %struct.inode*, %struct.inode** %9, align 8
  %88 = call i32 @f2fs_handle_failed_inode(%struct.inode* %87)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %83, %80, %36, %25, %17
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local %struct.inode* @f2fs_new_inode(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_alloc_nid_done(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @f2fs_sync_fs(i32, i32) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_handle_failed_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
