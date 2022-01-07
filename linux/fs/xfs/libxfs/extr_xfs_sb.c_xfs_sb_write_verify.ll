; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_sb_write_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_sb_write_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_buf_log_item*, %struct.xfs_mount* }
%struct.xfs_buf_log_item = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xfs_mount = type { i32 }
%struct.xfs_sb = type { i32 }
%struct.TYPE_5__ = type { i32 }

@XFS_SB_CRC_OFF = common dso_local global i32 0, align 4
@__this_address = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_buf*)* @xfs_sb_write_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_sb_write_verify(%struct.xfs_buf* %0) #0 {
  %2 = alloca %struct.xfs_buf*, align 8
  %3 = alloca %struct.xfs_sb, align 4
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_buf_log_item*, align 8
  %6 = alloca i32, align 4
  store %struct.xfs_buf* %0, %struct.xfs_buf** %2, align 8
  %7 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %8 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %7, i32 0, i32 1
  %9 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  store %struct.xfs_mount* %9, %struct.xfs_mount** %4, align 8
  %10 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %11 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %10, i32 0, i32 0
  %12 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %11, align 8
  store %struct.xfs_buf_log_item* %12, %struct.xfs_buf_log_item** %5, align 8
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %14 = call %struct.TYPE_5__* @XFS_BUF_TO_SBP(%struct.xfs_buf* %13)
  %15 = call i32 @__xfs_sb_from_disk(%struct.xfs_sb* %3, %struct.TYPE_5__* %14, i32 0)
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %17 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %18 = call i32 @xfs_validate_sb_common(%struct.xfs_mount* %16, %struct.xfs_buf* %17, %struct.xfs_sb* %3)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %51

22:                                               ; preds = %1
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %24 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %25 = call i32 @xfs_validate_sb_write(%struct.xfs_mount* %23, %struct.xfs_buf* %24, %struct.xfs_sb* %3)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %51

29:                                               ; preds = %22
  %30 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %31 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %30, i32 0, i32 0
  %32 = call i32 @xfs_sb_version_hascrc(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %56

35:                                               ; preds = %29
  %36 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %37 = icmp ne %struct.xfs_buf_log_item* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %40 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cpu_to_be64(i32 %42)
  %44 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %45 = call %struct.TYPE_5__* @XFS_BUF_TO_SBP(%struct.xfs_buf* %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %38, %35
  %48 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %49 = load i32, i32* @XFS_SB_CRC_OFF, align 4
  %50 = call i32 @xfs_buf_update_cksum(%struct.xfs_buf* %48, i32 %49)
  br label %56

51:                                               ; preds = %28, %21
  %52 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @__this_address, align 4
  %55 = call i32 @xfs_verifier_error(%struct.xfs_buf* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %47, %34
  ret void
}

declare dso_local i32 @__xfs_sb_from_disk(%struct.xfs_sb*, %struct.TYPE_5__*, i32) #1

declare dso_local %struct.TYPE_5__* @XFS_BUF_TO_SBP(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_validate_sb_common(%struct.xfs_mount*, %struct.xfs_buf*, %struct.xfs_sb*) #1

declare dso_local i32 @xfs_validate_sb_write(%struct.xfs_mount*, %struct.xfs_buf*, %struct.xfs_sb*) #1

declare dso_local i32 @xfs_sb_version_hascrc(i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @xfs_buf_update_cksum(%struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_verifier_error(%struct.xfs_buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
