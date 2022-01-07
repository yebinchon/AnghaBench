; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_health.c_xfs_fsop_geom_health.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_health.c_xfs_fsop_geom_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioctl_sick_map = type { i64 }
%struct.xfs_mount = type { i32 }
%struct.xfs_fsop_geom = type { i32, i32 }

@fs_map = common dso_local global %struct.ioctl_sick_map* null, align 8
@rt_map = common dso_local global %struct.ioctl_sick_map* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_fsop_geom_health(%struct.xfs_mount* %0, %struct.xfs_fsop_geom* %1) #0 {
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.xfs_fsop_geom*, align 8
  %5 = alloca %struct.ioctl_sick_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  store %struct.xfs_fsop_geom* %1, %struct.xfs_fsop_geom** %4, align 8
  %8 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %8, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_fsop_geom, %struct.xfs_fsop_geom* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %13 = call i32 @xfs_fs_measure_sickness(%struct.xfs_mount* %12, i32* %6, i32* %7)
  %14 = load %struct.ioctl_sick_map*, %struct.ioctl_sick_map** @fs_map, align 8
  store %struct.ioctl_sick_map* %14, %struct.ioctl_sick_map** %5, align 8
  br label %15

15:                                               ; preds = %26, %2
  %16 = load %struct.ioctl_sick_map*, %struct.ioctl_sick_map** %5, align 8
  %17 = getelementptr inbounds %struct.ioctl_sick_map, %struct.ioctl_sick_map* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.ioctl_sick_map*, %struct.ioctl_sick_map** %5, align 8
  %25 = call i32 @xfgeo_health_tick(%struct.xfs_fsop_geom* %21, i32 %22, i32 %23, %struct.ioctl_sick_map* %24)
  br label %26

26:                                               ; preds = %20
  %27 = load %struct.ioctl_sick_map*, %struct.ioctl_sick_map** %5, align 8
  %28 = getelementptr inbounds %struct.ioctl_sick_map, %struct.ioctl_sick_map* %27, i32 1
  store %struct.ioctl_sick_map* %28, %struct.ioctl_sick_map** %5, align 8
  br label %15

29:                                               ; preds = %15
  %30 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %31 = call i32 @xfs_rt_measure_sickness(%struct.xfs_mount* %30, i32* %6, i32* %7)
  %32 = load %struct.ioctl_sick_map*, %struct.ioctl_sick_map** @rt_map, align 8
  store %struct.ioctl_sick_map* %32, %struct.ioctl_sick_map** %5, align 8
  br label %33

33:                                               ; preds = %44, %29
  %34 = load %struct.ioctl_sick_map*, %struct.ioctl_sick_map** %5, align 8
  %35 = getelementptr inbounds %struct.ioctl_sick_map, %struct.ioctl_sick_map* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.xfs_fsop_geom*, %struct.xfs_fsop_geom** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.ioctl_sick_map*, %struct.ioctl_sick_map** %5, align 8
  %43 = call i32 @xfgeo_health_tick(%struct.xfs_fsop_geom* %39, i32 %40, i32 %41, %struct.ioctl_sick_map* %42)
  br label %44

44:                                               ; preds = %38
  %45 = load %struct.ioctl_sick_map*, %struct.ioctl_sick_map** %5, align 8
  %46 = getelementptr inbounds %struct.ioctl_sick_map, %struct.ioctl_sick_map* %45, i32 1
  store %struct.ioctl_sick_map* %46, %struct.ioctl_sick_map** %5, align 8
  br label %33

47:                                               ; preds = %33
  ret void
}

declare dso_local i32 @xfs_fs_measure_sickness(%struct.xfs_mount*, i32*, i32*) #1

declare dso_local i32 @xfgeo_health_tick(%struct.xfs_fsop_geom*, i32, i32, %struct.ioctl_sick_map*) #1

declare dso_local i32 @xfs_rt_measure_sickness(%struct.xfs_mount*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
