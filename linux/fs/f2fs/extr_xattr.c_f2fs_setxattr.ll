; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_xattr.c_f2fs_setxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_xattr.c_f2fs_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@REQ_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_setxattr(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4, %struct.page* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.f2fs_sb_info*, align 8
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.page* %5, %struct.page** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.inode*, %struct.inode** %9, align 8
  %19 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %18)
  store %struct.f2fs_sb_info* %19, %struct.f2fs_sb_info** %16, align 8
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %21 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %88

27:                                               ; preds = %7
  %28 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %29 = call i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @ENOSPC, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %88

34:                                               ; preds = %27
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = call i32 @dquot_initialize(%struct.inode* %35)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %17, align 4
  store i32 %40, i32* %8, align 4
  br label %88

41:                                               ; preds = %34
  %42 = load %struct.page*, %struct.page** %14, align 8
  %43 = icmp ne %struct.page* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.inode*, %struct.inode** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load %struct.page*, %struct.page** %14, align 8
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @__f2fs_setxattr(%struct.inode* %45, i32 %46, i8* %47, i8* %48, i64 %49, %struct.page* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  br label %88

53:                                               ; preds = %41
  %54 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %55 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %54, i32 1)
  %56 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %57 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %56)
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @down_write(i32* %60)
  %62 = load %struct.inode*, %struct.inode** %9, align 8
  %63 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = call i32 @down_write(i32* %64)
  %66 = load %struct.inode*, %struct.inode** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load %struct.page*, %struct.page** %14, align 8
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @__f2fs_setxattr(%struct.inode* %66, i32 %67, i8* %68, i8* %69, i64 %70, %struct.page* %71, i32 %72)
  store i32 %73, i32* %17, align 4
  %74 = load %struct.inode*, %struct.inode** %9, align 8
  %75 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = call i32 @up_write(i32* %76)
  %78 = load %struct.inode*, %struct.inode** %9, align 8
  %79 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %78)
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = call i32 @up_write(i32* %80)
  %82 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %83 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %82)
  %84 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %85 = load i32, i32* @REQ_TIME, align 4
  %86 = call i32 @f2fs_update_time(%struct.f2fs_sb_info* %84, i32 %85)
  %87 = load i32, i32* %17, align 4
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %53, %44, %39, %31, %24
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @__f2fs_setxattr(%struct.inode*, i32, i8*, i8*, i64, %struct.page*, i32) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_update_time(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
