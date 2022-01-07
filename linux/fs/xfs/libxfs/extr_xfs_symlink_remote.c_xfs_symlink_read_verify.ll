; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_symlink_remote.c_xfs_symlink_read_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_symlink_remote.c_xfs_symlink_read_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }

@XFS_SYMLINK_CRC_OFF = common dso_local global i32 0, align 4
@EFSBADCRC = common dso_local global i32 0, align 4
@__this_address = common dso_local global i64 0, align 8
@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_buf*)* @xfs_symlink_read_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_symlink_read_verify(%struct.xfs_buf* %0) #0 {
  %2 = alloca %struct.xfs_buf*, align 8
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca i64, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %2, align 8
  %5 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %6 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %5, i32 0, i32 0
  %7 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  store %struct.xfs_mount* %7, %struct.xfs_mount** %3, align 8
  %8 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %9 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %8, i32 0, i32 0
  %10 = call i32 @xfs_sb_version_hascrc(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %15 = load i32, i32* @XFS_SYMLINK_CRC_OFF, align 4
  %16 = call i32 @xfs_buf_verify_cksum(%struct.xfs_buf* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %20 = load i32, i32* @EFSBADCRC, align 4
  %21 = sub nsw i32 0, %20
  %22 = load i64, i64* @__this_address, align 8
  %23 = call i32 @xfs_verifier_error(%struct.xfs_buf* %19, i32 %21, i64 %22)
  br label %36

24:                                               ; preds = %13
  %25 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %26 = call i64 @xfs_symlink_verify(%struct.xfs_buf* %25)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %31 = load i32, i32* @EFSCORRUPTED, align 4
  %32 = sub nsw i32 0, %31
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @xfs_verifier_error(%struct.xfs_buf* %30, i32 %32, i64 %33)
  br label %35

35:                                               ; preds = %29, %24
  br label %36

36:                                               ; preds = %12, %35, %18
  ret void
}

declare dso_local i32 @xfs_sb_version_hascrc(i32*) #1

declare dso_local i32 @xfs_buf_verify_cksum(%struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_verifier_error(%struct.xfs_buf*, i32, i64) #1

declare dso_local i64 @xfs_symlink_verify(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
