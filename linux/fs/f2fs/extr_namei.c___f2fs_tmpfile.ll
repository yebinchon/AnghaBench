; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c___f2fs_tmpfile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c___f2fs_tmpfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__*, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.dentry = type { i32 }
%struct.f2fs_sb_info = type { i32 }

@WHITEOUT_DEV = common dso_local global i32 0, align 4
@f2fs_special_inode_operations = common dso_local global i32 0, align 4
@f2fs_file_inode_operations = common dso_local global i32 0, align 4
@f2fs_file_operations = common dso_local global i32 0, align 4
@f2fs_dblock_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.inode**)* @__f2fs_tmpfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__f2fs_tmpfile(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.inode** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode**, align 8
  %10 = alloca %struct.f2fs_sb_info*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.inode** %3, %struct.inode*** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %13)
  store %struct.f2fs_sb_info* %14, %struct.f2fs_sb_info** %10, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call i32 @dquot_initialize(%struct.inode* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %100

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.inode* @f2fs_new_inode(%struct.inode* %22, i32 %23)
  store %struct.inode* %24, %struct.inode** %11, align 8
  %25 = load %struct.inode*, %struct.inode** %11, align 8
  %26 = call i64 @IS_ERR(%struct.inode* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %11, align 8
  %30 = call i32 @PTR_ERR(%struct.inode* %29)
  store i32 %30, i32* %5, align 4
  br label %100

31:                                               ; preds = %21
  %32 = load %struct.inode**, %struct.inode*** %9, align 8
  %33 = icmp ne %struct.inode** %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.inode*, %struct.inode** %11, align 8
  %36 = load %struct.inode*, %struct.inode** %11, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @WHITEOUT_DEV, align 4
  %40 = call i32 @init_special_inode(%struct.inode* %35, i32 %38, i32 %39)
  %41 = load %struct.inode*, %struct.inode** %11, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 3
  store i32* @f2fs_special_inode_operations, i32** %42, align 8
  br label %52

43:                                               ; preds = %31
  %44 = load %struct.inode*, %struct.inode** %11, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 3
  store i32* @f2fs_file_inode_operations, i32** %45, align 8
  %46 = load %struct.inode*, %struct.inode** %11, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 2
  store i32* @f2fs_file_operations, i32** %47, align 8
  %48 = load %struct.inode*, %struct.inode** %11, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32* @f2fs_dblock_aops, i32** %51, align 8
  br label %52

52:                                               ; preds = %43, %34
  %53 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %54 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %53)
  %55 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %56 = call i32 @f2fs_acquire_orphan_inode(%struct.f2fs_sb_info* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %96

60:                                               ; preds = %52
  %61 = load %struct.inode*, %struct.inode** %11, align 8
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = call i32 @f2fs_do_tmpfile(%struct.inode* %61, %struct.inode* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %93

67:                                               ; preds = %60
  %68 = load %struct.inode*, %struct.inode** %11, align 8
  %69 = call i32 @f2fs_add_orphan_inode(%struct.inode* %68)
  %70 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %71 = load %struct.inode*, %struct.inode** %11, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @f2fs_alloc_nid_done(%struct.f2fs_sb_info* %70, i32 %73)
  %75 = load %struct.inode**, %struct.inode*** %9, align 8
  %76 = icmp ne %struct.inode** %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load %struct.inode*, %struct.inode** %11, align 8
  %79 = call i32 @f2fs_i_links_write(%struct.inode* %78, i32 0)
  %80 = load %struct.inode*, %struct.inode** %11, align 8
  %81 = load %struct.inode**, %struct.inode*** %9, align 8
  store %struct.inode* %80, %struct.inode** %81, align 8
  br label %86

82:                                               ; preds = %67
  %83 = load %struct.dentry*, %struct.dentry** %7, align 8
  %84 = load %struct.inode*, %struct.inode** %11, align 8
  %85 = call i32 @d_tmpfile(%struct.dentry* %83, %struct.inode* %84)
  br label %86

86:                                               ; preds = %82, %77
  %87 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %88 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %87)
  %89 = load %struct.inode*, %struct.inode** %11, align 8
  %90 = call i32 @unlock_new_inode(%struct.inode* %89)
  %91 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %92 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %91, i32 1)
  store i32 0, i32* %5, align 4
  br label %100

93:                                               ; preds = %66
  %94 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %95 = call i32 @f2fs_release_orphan_inode(%struct.f2fs_sb_info* %94)
  br label %96

96:                                               ; preds = %93, %59
  %97 = load %struct.inode*, %struct.inode** %11, align 8
  %98 = call i32 @f2fs_handle_failed_inode(%struct.inode* %97)
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %96, %86, %28, %19
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local %struct.inode* @f2fs_new_inode(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_acquire_orphan_inode(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_do_tmpfile(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @f2fs_add_orphan_inode(%struct.inode*) #1

declare dso_local i32 @f2fs_alloc_nid_done(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_i_links_write(%struct.inode*, i32) #1

declare dso_local i32 @d_tmpfile(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_release_orphan_inode(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_handle_failed_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
