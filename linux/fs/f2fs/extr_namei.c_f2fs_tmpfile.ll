; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_tmpfile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_tmpfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.f2fs_sb_info = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @f2fs_tmpfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_tmpfile(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.f2fs_sb_info*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %10)
  store %struct.f2fs_sb_info* %11, %struct.f2fs_sb_info** %8, align 8
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %13 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %12)
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %47

19:                                               ; preds = %3
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %21 = call i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @ENOSPC, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %47

26:                                               ; preds = %19
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call i64 @IS_ENCRYPTED(%struct.inode* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %32 = call i64 @DUMMY_ENCRYPTION_ENABLED(%struct.f2fs_sb_info* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30, %26
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = call i32 @fscrypt_get_encryption_info(%struct.inode* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %47

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %30
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = load %struct.dentry*, %struct.dentry** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @__f2fs_tmpfile(%struct.inode* %43, %struct.dentry* %44, i32 %45, i32* null)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %39, %23, %16
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info*) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i64 @DUMMY_ENCRYPTION_ENABLED(%struct.f2fs_sb_info*) #1

declare dso_local i32 @fscrypt_get_encryption_info(%struct.inode*) #1

declare dso_local i32 @__f2fs_tmpfile(%struct.inode*, %struct.dentry*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
