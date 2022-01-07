; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32 }
%struct.dentry = type { i32 }
%struct.f2fs_sb_info = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@f2fs_special_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @f2fs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.f2fs_sb_info*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %13)
  store %struct.f2fs_sb_info* %14, %struct.f2fs_sb_info** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %16 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %15)
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %89

22:                                               ; preds = %4
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %24 = call i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOSPC, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %89

29:                                               ; preds = %22
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = call i32 @dquot_initialize(%struct.inode* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %89

36:                                               ; preds = %29
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call %struct.inode* @f2fs_new_inode(%struct.inode* %37, i32 %38)
  store %struct.inode* %39, %struct.inode** %11, align 8
  %40 = load %struct.inode*, %struct.inode** %11, align 8
  %41 = call i64 @IS_ERR(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.inode*, %struct.inode** %11, align 8
  %45 = call i32 @PTR_ERR(%struct.inode* %44)
  store i32 %45, i32* %5, align 4
  br label %89

46:                                               ; preds = %36
  %47 = load %struct.inode*, %struct.inode** %11, align 8
  %48 = load %struct.inode*, %struct.inode** %11, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @init_special_inode(%struct.inode* %47, i32 %50, i32 %51)
  %53 = load %struct.inode*, %struct.inode** %11, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 1
  store i32* @f2fs_special_inode_operations, i32** %54, align 8
  %55 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %56 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %55)
  %57 = load %struct.dentry*, %struct.dentry** %7, align 8
  %58 = load %struct.inode*, %struct.inode** %11, align 8
  %59 = call i32 @f2fs_add_link(%struct.dentry* %57, %struct.inode* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  br label %85

63:                                               ; preds = %46
  %64 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %65 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %64)
  %66 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %67 = load %struct.inode*, %struct.inode** %11, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @f2fs_alloc_nid_done(%struct.f2fs_sb_info* %66, i32 %69)
  %71 = load %struct.dentry*, %struct.dentry** %7, align 8
  %72 = load %struct.inode*, %struct.inode** %11, align 8
  %73 = call i32 @d_instantiate_new(%struct.dentry* %71, %struct.inode* %72)
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = call i64 @IS_DIRSYNC(%struct.inode* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %63
  %78 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %79 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @f2fs_sync_fs(i32 %80, i32 1)
  br label %82

82:                                               ; preds = %77, %63
  %83 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %10, align 8
  %84 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %83, i32 1)
  store i32 0, i32* %5, align 4
  br label %89

85:                                               ; preds = %62
  %86 = load %struct.inode*, %struct.inode** %11, align 8
  %87 = call i32 @f2fs_handle_failed_inode(%struct.inode* %86)
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %85, %82, %43, %34, %26, %19
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local %struct.inode* @f2fs_new_inode(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

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
