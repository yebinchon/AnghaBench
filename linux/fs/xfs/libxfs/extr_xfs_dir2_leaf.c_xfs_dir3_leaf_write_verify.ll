; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_write_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_write_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_dir3_leaf_hdr*, %struct.xfs_buf_log_item*, %struct.xfs_mount* }
%struct.xfs_dir3_leaf_hdr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_buf_log_item = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xfs_mount = type { i32 }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@XFS_DIR3_LEAF_CRC_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_buf*)* @xfs_dir3_leaf_write_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_dir3_leaf_write_verify(%struct.xfs_buf* %0) #0 {
  %2 = alloca %struct.xfs_buf*, align 8
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.xfs_buf_log_item*, align 8
  %5 = alloca %struct.xfs_dir3_leaf_hdr*, align 8
  %6 = alloca i64, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %2, align 8
  %7 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %8 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %7, i32 0, i32 2
  %9 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  store %struct.xfs_mount* %9, %struct.xfs_mount** %3, align 8
  %10 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %11 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %10, i32 0, i32 1
  %12 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %11, align 8
  store %struct.xfs_buf_log_item* %12, %struct.xfs_buf_log_item** %4, align 8
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %14 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %13, i32 0, i32 0
  %15 = load %struct.xfs_dir3_leaf_hdr*, %struct.xfs_dir3_leaf_hdr** %14, align 8
  store %struct.xfs_dir3_leaf_hdr* %15, %struct.xfs_dir3_leaf_hdr** %5, align 8
  %16 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %17 = call i64 @xfs_dir3_leaf_verify(%struct.xfs_buf* %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %22 = load i32, i32* @EFSCORRUPTED, align 4
  %23 = sub nsw i32 0, %22
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @xfs_verifier_error(%struct.xfs_buf* %21, i32 %23, i64 %24)
  br label %48

26:                                               ; preds = %1
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %28 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %27, i32 0, i32 0
  %29 = call i32 @xfs_sb_version_hascrc(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %48

32:                                               ; preds = %26
  %33 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %4, align 8
  %34 = icmp ne %struct.xfs_buf_log_item* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %4, align 8
  %37 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cpu_to_be64(i32 %39)
  %41 = load %struct.xfs_dir3_leaf_hdr*, %struct.xfs_dir3_leaf_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.xfs_dir3_leaf_hdr, %struct.xfs_dir3_leaf_hdr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %35, %32
  %45 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %46 = load i32, i32* @XFS_DIR3_LEAF_CRC_OFF, align 4
  %47 = call i32 @xfs_buf_update_cksum(%struct.xfs_buf* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %31, %20
  ret void
}

declare dso_local i64 @xfs_dir3_leaf_verify(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_verifier_error(%struct.xfs_buf*, i32, i64) #1

declare dso_local i32 @xfs_sb_version_hascrc(i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @xfs_buf_update_cksum(%struct.xfs_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
