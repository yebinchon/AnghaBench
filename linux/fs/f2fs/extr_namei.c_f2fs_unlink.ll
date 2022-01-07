; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_dir_entry = type { i32 }
%struct.page = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @f2fs_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.f2fs_dir_entry*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %11)
  store %struct.f2fs_sb_info* %12, %struct.f2fs_sb_info** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.inode* @d_inode(%struct.dentry* %13)
  store %struct.inode* %14, %struct.inode** %7, align 8
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = call i32 @trace_f2fs_unlink_enter(%struct.inode* %17, %struct.dentry* %18)
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %21 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %92

27:                                               ; preds = %2
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call i32 @dquot_initialize(%struct.inode* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %3, align 4
  br label %92

34:                                               ; preds = %27
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = call i32 @dquot_initialize(%struct.inode* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %3, align 4
  br label %92

41:                                               ; preds = %34
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = load %struct.dentry*, %struct.dentry** %5, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  %45 = call %struct.f2fs_dir_entry* @f2fs_find_entry(%struct.inode* %42, i32* %44, %struct.page** %9)
  store %struct.f2fs_dir_entry* %45, %struct.f2fs_dir_entry** %8, align 8
  %46 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %8, align 8
  %47 = icmp ne %struct.f2fs_dir_entry* %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %41
  %49 = load %struct.page*, %struct.page** %9, align 8
  %50 = call i64 @IS_ERR(%struct.page* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.page*, %struct.page** %9, align 8
  %54 = call i32 @PTR_ERR(%struct.page* %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %52, %48
  br label %87

56:                                               ; preds = %41
  %57 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %58 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %57, i32 1)
  %59 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %60 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %59)
  %61 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %62 = call i32 @f2fs_acquire_orphan_inode(%struct.f2fs_sb_info* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %67 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %66)
  %68 = load %struct.page*, %struct.page** %9, align 8
  %69 = call i32 @f2fs_put_page(%struct.page* %68, i32 0)
  br label %87

70:                                               ; preds = %56
  %71 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %8, align 8
  %72 = load %struct.page*, %struct.page** %9, align 8
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = load %struct.inode*, %struct.inode** %7, align 8
  %75 = call i32 @f2fs_delete_entry(%struct.f2fs_dir_entry* %71, %struct.page* %72, %struct.inode* %73, %struct.inode* %74)
  %76 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %77 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %76)
  %78 = load %struct.inode*, %struct.inode** %4, align 8
  %79 = call i64 @IS_DIRSYNC(%struct.inode* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %70
  %82 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %83 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @f2fs_sync_fs(i32 %84, i32 1)
  br label %86

86:                                               ; preds = %81, %70
  br label %87

87:                                               ; preds = %86, %65, %55
  %88 = load %struct.inode*, %struct.inode** %7, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @trace_f2fs_unlink_exit(%struct.inode* %88, i32 %89)
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %87, %39, %32, %24
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @trace_f2fs_unlink_enter(%struct.inode*, %struct.dentry*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local %struct.f2fs_dir_entry* @f2fs_find_entry(%struct.inode*, i32*, %struct.page**) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_acquire_orphan_inode(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @f2fs_delete_entry(%struct.f2fs_dir_entry*, %struct.page*, %struct.inode*, %struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @f2fs_sync_fs(i32, i32) #1

declare dso_local i32 @trace_f2fs_unlink_exit(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
