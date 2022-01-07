; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_ioc_write_checkpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_ioc_write_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Skipping Checkpoint. Checkpoints currently disabled.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i64)* @f2fs_ioc_write_checkpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_ioc_write_checkpoint(%struct.file* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.f2fs_sb_info*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.inode* @file_inode(%struct.file* %9)
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %11)
  store %struct.f2fs_sb_info* %12, %struct.f2fs_sb_info** %7, align 8
  %13 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %14 = call i32 @capable(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %54

19:                                               ; preds = %2
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %21 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @f2fs_readonly(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EROFS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %54

28:                                               ; preds = %19
  %29 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %30 = load i32, i32* @SBI_CP_DISABLED, align 4
  %31 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %29, i32 %30)
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %36 = call i32 @f2fs_info(%struct.f2fs_sb_info* %35, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %54

39:                                               ; preds = %28
  %40 = load %struct.file*, %struct.file** %4, align 8
  %41 = call i32 @mnt_want_write_file(%struct.file* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %54

46:                                               ; preds = %39
  %47 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %48 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @f2fs_sync_fs(i32 %49, i32 1)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.file*, %struct.file** %4, align 8
  %52 = call i32 @mnt_drop_write_file(%struct.file* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %46, %44, %34, %25, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @f2fs_readonly(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_info(%struct.f2fs_sb_info*, i8*) #1

declare dso_local i32 @mnt_want_write_file(%struct.file*) #1

declare dso_local i32 @f2fs_sync_fs(i32, i32) #1

declare dso_local i32 @mnt_drop_write_file(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
