; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_4__*, i32*, i32* }
%struct.TYPE_4__ = type { i32* }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.f2fs_sb_info = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@DISABLE_EXT_IDENTIFY = common dso_local global i32 0, align 4
@f2fs_file_inode_operations = common dso_local global i32 0, align 4
@f2fs_file_operations = common dso_local global i32 0, align 4
@f2fs_dblock_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @f2fs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.f2fs_sb_info*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %14)
  store %struct.f2fs_sb_info* %15, %struct.f2fs_sb_info** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %17 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %16)
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %104

23:                                               ; preds = %4
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %25 = call i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENOSPC, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %104

30:                                               ; preds = %23
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = call i32 @dquot_initialize(%struct.inode* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %5, align 4
  br label %104

37:                                               ; preds = %30
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call %struct.inode* @f2fs_new_inode(%struct.inode* %38, i32 %39)
  store %struct.inode* %40, %struct.inode** %11, align 8
  %41 = load %struct.inode*, %struct.inode** %11, align 8
  %42 = call i64 @IS_ERR(%struct.inode* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.inode*, %struct.inode** %11, align 8
  %46 = call i32 @PTR_ERR(%struct.inode* %45)
  store i32 %46, i32* %5, align 4
  br label %104

47:                                               ; preds = %37
  %48 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %49 = load i32, i32* @DISABLE_EXT_IDENTIFY, align 4
  %50 = call i32 @test_opt(%struct.f2fs_sb_info* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %54 = load %struct.inode*, %struct.inode** %11, align 8
  %55 = load %struct.dentry*, %struct.dentry** %7, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @set_file_temperature(%struct.f2fs_sb_info* %53, %struct.inode* %54, i32 %58)
  br label %60

60:                                               ; preds = %52, %47
  %61 = load %struct.inode*, %struct.inode** %11, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 3
  store i32* @f2fs_file_inode_operations, i32** %62, align 8
  %63 = load %struct.inode*, %struct.inode** %11, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 2
  store i32* @f2fs_file_operations, i32** %64, align 8
  %65 = load %struct.inode*, %struct.inode** %11, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32* @f2fs_dblock_aops, i32** %68, align 8
  %69 = load %struct.inode*, %struct.inode** %11, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %12, align 4
  %72 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %73 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %72)
  %74 = load %struct.dentry*, %struct.dentry** %7, align 8
  %75 = load %struct.inode*, %struct.inode** %11, align 8
  %76 = call i32 @f2fs_add_link(%struct.dentry* %74, %struct.inode* %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %60
  br label %100

80:                                               ; preds = %60
  %81 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %82 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %81)
  %83 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @f2fs_alloc_nid_done(%struct.f2fs_sb_info* %83, i32 %84)
  %86 = load %struct.dentry*, %struct.dentry** %7, align 8
  %87 = load %struct.inode*, %struct.inode** %11, align 8
  %88 = call i32 @d_instantiate_new(%struct.dentry* %86, %struct.inode* %87)
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = call i64 @IS_DIRSYNC(%struct.inode* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %80
  %93 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %94 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @f2fs_sync_fs(i32 %95, i32 1)
  br label %97

97:                                               ; preds = %92, %80
  %98 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %99 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %98, i32 1)
  store i32 0, i32* %5, align 4
  br label %104

100:                                              ; preds = %79
  %101 = load %struct.inode*, %struct.inode** %11, align 8
  %102 = call i32 @f2fs_handle_failed_inode(%struct.inode* %101)
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %100, %97, %44, %35, %27, %20
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local %struct.inode* @f2fs_new_inode(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @set_file_temperature(%struct.f2fs_sb_info*, %struct.inode*, i32) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_alloc_nid_done(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @f2fs_sync_fs(i32, i32) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_handle_failed_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
