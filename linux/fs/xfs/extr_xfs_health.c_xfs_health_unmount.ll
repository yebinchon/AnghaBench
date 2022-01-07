; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_health.c_xfs_health_unmount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_health.c_xfs_health_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.xfs_perag = type { i32 }

@XFS_SICK_FS_COUNTERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Uncorrected metadata errors detected; please run xfs_repair.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_health_unmount(%struct.xfs_mount* %0) #0 {
  %2 = alloca %struct.xfs_mount*, align 8
  %3 = alloca %struct.xfs_perag*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %9 = call i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %75

12:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %13

13:                                               ; preds = %36, %12
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %16 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %14, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %13
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount* %21, i64 %22)
  store %struct.xfs_perag* %23, %struct.xfs_perag** %3, align 8
  %24 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %25 = call i32 @xfs_ag_measure_sickness(%struct.xfs_perag* %24, i32* %5, i32* %6)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @trace_xfs_ag_unfixed_corruption(%struct.xfs_mount* %29, i64 %30, i32 %31)
  store i32 1, i32* %7, align 4
  br label %33

33:                                               ; preds = %28, %20
  %34 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %35 = call i32 @xfs_perag_put(%struct.xfs_perag* %34)
  br label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %4, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %4, align 8
  br label %13

39:                                               ; preds = %13
  %40 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %41 = call i32 @xfs_rt_measure_sickness(%struct.xfs_mount* %40, i32* %5, i32* %6)
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @trace_xfs_rt_unfixed_corruption(%struct.xfs_mount* %45, i32 %46)
  store i32 1, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %50 = call i32 @xfs_fs_measure_sickness(%struct.xfs_mount* %49, i32* %5, i32* %6)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @XFS_SICK_FS_COUNTERS, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @trace_xfs_fs_unfixed_corruption(%struct.xfs_mount* %57, i32 %58)
  store i32 1, i32* %7, align 4
  br label %60

60:                                               ; preds = %56, %48
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %65 = call i32 @xfs_warn(%struct.xfs_mount* %64, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @XFS_SICK_FS_COUNTERS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %72 = load i32, i32* @XFS_SICK_FS_COUNTERS, align 4
  %73 = call i32 @xfs_fs_mark_healthy(%struct.xfs_mount* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %63
  br label %75

75:                                               ; preds = %11, %74, %60
  ret void
}

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount*) #1

declare dso_local %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount*, i64) #1

declare dso_local i32 @xfs_ag_measure_sickness(%struct.xfs_perag*, i32*, i32*) #1

declare dso_local i32 @trace_xfs_ag_unfixed_corruption(%struct.xfs_mount*, i64, i32) #1

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #1

declare dso_local i32 @xfs_rt_measure_sickness(%struct.xfs_mount*, i32*, i32*) #1

declare dso_local i32 @trace_xfs_rt_unfixed_corruption(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_fs_measure_sickness(%struct.xfs_mount*, i32*, i32*) #1

declare dso_local i32 @trace_xfs_fs_unfixed_corruption(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_warn(%struct.xfs_mount*, i8*) #1

declare dso_local i32 @xfs_fs_mark_healthy(%struct.xfs_mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
