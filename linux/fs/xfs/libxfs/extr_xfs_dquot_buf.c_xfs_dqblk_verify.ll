; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dquot_buf.c_xfs_dqblk_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dquot_buf.c_xfs_dqblk_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_dqblk = type { i32, i32 }

@__this_address = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dqblk_verify(%struct.xfs_mount* %0, %struct.xfs_dqblk* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_dqblk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store %struct.xfs_dqblk* %1, %struct.xfs_dqblk** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %11 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %10, i32 0, i32 0
  %12 = call i64 @xfs_sb_version_hascrc(%struct.TYPE_2__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load %struct.xfs_dqblk*, %struct.xfs_dqblk** %7, align 8
  %16 = getelementptr inbounds %struct.xfs_dqblk, %struct.xfs_dqblk* %15, i32 0, i32 1
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %18 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @uuid_equal(i32* %16, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @__this_address, align 4
  store i32 %23, i32* %5, align 4
  br label %31

24:                                               ; preds = %14, %4
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %26 = load %struct.xfs_dqblk*, %struct.xfs_dqblk** %7, align 8
  %27 = getelementptr inbounds %struct.xfs_dqblk, %struct.xfs_dqblk* %26, i32 0, i32 0
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @xfs_dquot_verify(%struct.xfs_mount* %25, i32* %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %24, %22
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i64 @xfs_sb_version_hascrc(%struct.TYPE_2__*) #1

declare dso_local i32 @uuid_equal(i32*, i32*) #1

declare dso_local i32 @xfs_dquot_verify(%struct.xfs_mount*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
