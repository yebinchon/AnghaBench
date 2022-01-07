; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_agf_write_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_agf_write_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_buf_log_item*, %struct.xfs_mount* }
%struct.xfs_buf_log_item = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_mount = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@XFS_AGF_CRC_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_buf*)* @xfs_agf_write_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_agf_write_verify(%struct.xfs_buf* %0) #0 {
  %2 = alloca %struct.xfs_buf*, align 8
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.xfs_buf_log_item*, align 8
  %5 = alloca i64, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %2, align 8
  %6 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %7 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %6, i32 0, i32 1
  %8 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  store %struct.xfs_mount* %8, %struct.xfs_mount** %3, align 8
  %9 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %10 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %9, i32 0, i32 0
  %11 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %10, align 8
  store %struct.xfs_buf_log_item* %11, %struct.xfs_buf_log_item** %4, align 8
  %12 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %13 = call i64 @xfs_agf_verify(%struct.xfs_buf* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %18 = load i32, i32* @EFSCORRUPTED, align 4
  %19 = sub nsw i32 0, %18
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @xfs_verifier_error(%struct.xfs_buf* %17, i32 %19, i64 %20)
  br label %44

22:                                               ; preds = %1
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %24 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %23, i32 0, i32 0
  %25 = call i32 @xfs_sb_version_hascrc(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %44

28:                                               ; preds = %22
  %29 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %4, align 8
  %30 = icmp ne %struct.xfs_buf_log_item* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %4, align 8
  %33 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cpu_to_be64(i32 %35)
  %37 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %38 = call %struct.TYPE_4__* @XFS_BUF_TO_AGF(%struct.xfs_buf* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  br label %40

40:                                               ; preds = %31, %28
  %41 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %42 = load i32, i32* @XFS_AGF_CRC_OFF, align 4
  %43 = call i32 @xfs_buf_update_cksum(%struct.xfs_buf* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %27, %16
  ret void
}

declare dso_local i64 @xfs_agf_verify(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_verifier_error(%struct.xfs_buf*, i32, i64) #1

declare dso_local i32 @xfs_sb_version_hascrc(i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local %struct.TYPE_4__* @XFS_BUF_TO_AGF(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_update_cksum(%struct.xfs_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
