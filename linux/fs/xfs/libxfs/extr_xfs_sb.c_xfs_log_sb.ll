; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_log_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_log_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { %struct.xfs_mount* }
%struct.xfs_mount = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8* }
%struct.xfs_buf = type { i32 }

@XFS_BLFT_SB_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_log_sb(%struct.xfs_trans* %0) #0 {
  %2 = alloca %struct.xfs_trans*, align 8
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %2, align 8
  %5 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %6 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %5, i32 0, i32 0
  %7 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  store %struct.xfs_mount* %7, %struct.xfs_mount** %3, align 8
  %8 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %9 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %10 = call %struct.xfs_buf* @xfs_trans_getsb(%struct.xfs_trans* %8, %struct.xfs_mount* %9)
  store %struct.xfs_buf* %10, %struct.xfs_buf** %4, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %12 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %11, i32 0, i32 3
  %13 = call i8* @percpu_counter_sum(i32* %12)
  %14 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %15 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i8* %13, i8** %16, align 8
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %18 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %17, i32 0, i32 2
  %19 = call i8* @percpu_counter_sum(i32* %18)
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %21 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %24 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %23, i32 0, i32 1
  %25 = call i8* @percpu_counter_sum(i32* %24)
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %27 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %30 = call i32 @XFS_BUF_TO_SBP(%struct.xfs_buf* %29)
  %31 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %32 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %31, i32 0, i32 0
  %33 = call i32 @xfs_sb_to_disk(i32 %30, %struct.TYPE_2__* %32)
  %34 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %35 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %36 = load i32, i32* @XFS_BLFT_SB_BUF, align 4
  %37 = call i32 @xfs_trans_buf_set_type(%struct.xfs_trans* %34, %struct.xfs_buf* %35, i32 %36)
  %38 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %39 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %40 = call i32 @xfs_trans_log_buf(%struct.xfs_trans* %38, %struct.xfs_buf* %39, i32 0, i32 3)
  ret void
}

declare dso_local %struct.xfs_buf* @xfs_trans_getsb(%struct.xfs_trans*, %struct.xfs_mount*) #1

declare dso_local i8* @percpu_counter_sum(i32*) #1

declare dso_local i32 @xfs_sb_to_disk(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @XFS_BUF_TO_SBP(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_trans_buf_set_type(%struct.xfs_trans*, %struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_trans_log_buf(%struct.xfs_trans*, %struct.xfs_buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
