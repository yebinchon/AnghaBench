; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.f2fs_sb_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@FI_PROJ_INHERIT = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@FI_INC_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @f2fs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.f2fs_sb_info*, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = call %struct.inode* @d_inode(%struct.dentry* %11)
  store %struct.inode* %12, %struct.inode** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %13)
  store %struct.f2fs_sb_info* %14, %struct.f2fs_sb_info** %9, align 8
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %16 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %15)
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %110

22:                                               ; preds = %3
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %24 = call i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOSPC, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %110

29:                                               ; preds = %22
  %30 = load %struct.dentry*, %struct.dentry** %5, align 8
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = call i32 @fscrypt_prepare_link(%struct.dentry* %30, %struct.inode* %31, %struct.dentry* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %110

38:                                               ; preds = %29
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = load i32, i32* @FI_PROJ_INHERIT, align 4
  %41 = call i64 @is_inode_flag_set(%struct.inode* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dentry*, %struct.dentry** %5, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  %50 = load %struct.inode*, %struct.inode** %49, align 8
  %51 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @projid_eq(i32 %47, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %43
  %57 = load i32, i32* @EXDEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %110

59:                                               ; preds = %43, %38
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = call i32 @dquot_initialize(%struct.inode* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %110

66:                                               ; preds = %59
  %67 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %68 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %67, i32 1)
  %69 = load %struct.inode*, %struct.inode** %8, align 8
  %70 = call i32 @current_time(%struct.inode* %69)
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.inode*, %struct.inode** %8, align 8
  %74 = call i32 @ihold(%struct.inode* %73)
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = load i32, i32* @FI_INC_LINK, align 4
  %77 = call i32 @set_inode_flag(%struct.inode* %75, i32 %76)
  %78 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %79 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %78)
  %80 = load %struct.dentry*, %struct.dentry** %7, align 8
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = call i32 @f2fs_add_link(%struct.dentry* %80, %struct.inode* %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %66
  br label %101

86:                                               ; preds = %66
  %87 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %88 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %87)
  %89 = load %struct.dentry*, %struct.dentry** %7, align 8
  %90 = load %struct.inode*, %struct.inode** %8, align 8
  %91 = call i32 @d_instantiate(%struct.dentry* %89, %struct.inode* %90)
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = call i64 @IS_DIRSYNC(%struct.inode* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %86
  %96 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %97 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @f2fs_sync_fs(i32 %98, i32 1)
  br label %100

100:                                              ; preds = %95, %86
  store i32 0, i32* %4, align 4
  br label %110

101:                                              ; preds = %85
  %102 = load %struct.inode*, %struct.inode** %8, align 8
  %103 = load i32, i32* @FI_INC_LINK, align 4
  %104 = call i32 @clear_inode_flag(%struct.inode* %102, i32 %103)
  %105 = load %struct.inode*, %struct.inode** %8, align 8
  %106 = call i32 @iput(%struct.inode* %105)
  %107 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %108 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %107)
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %101, %100, %64, %56, %36, %26, %19
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info*) #1

declare dso_local i32 @fscrypt_prepare_link(%struct.dentry*, %struct.inode*, %struct.dentry*) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i32 @projid_eq(i32, i32) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @f2fs_sync_fs(i32, i32) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
