; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mdpy.c_mdpy_query_gfx_plane.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mdpy.c_mdpy_query_gfx_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_device = type { i32 }
%struct.vfio_device_gfx_plane_info = type { i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.mdev_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@VFIO_GFX_PLANE_TYPE_PROBE = common dso_local global i32 0, align 4
@VFIO_GFX_PLANE_TYPE_REGION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MDPY_DISPLAY_REGION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdev_device*, %struct.vfio_device_gfx_plane_info*)* @mdpy_query_gfx_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdpy_query_gfx_plane(%struct.mdev_device* %0, %struct.vfio_device_gfx_plane_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mdev_device*, align 8
  %5 = alloca %struct.vfio_device_gfx_plane_info*, align 8
  %6 = alloca %struct.mdev_state*, align 8
  store %struct.mdev_device* %0, %struct.mdev_device** %4, align 8
  store %struct.vfio_device_gfx_plane_info* %1, %struct.vfio_device_gfx_plane_info** %5, align 8
  %7 = load %struct.mdev_device*, %struct.mdev_device** %4, align 8
  %8 = call %struct.mdev_state* @mdev_get_drvdata(%struct.mdev_device* %7)
  store %struct.mdev_state* %8, %struct.mdev_state** %6, align 8
  %9 = load %struct.vfio_device_gfx_plane_info*, %struct.vfio_device_gfx_plane_info** %5, align 8
  %10 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, %struct.vfio_device_gfx_plane_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @VFIO_GFX_PLANE_TYPE_PROBE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.vfio_device_gfx_plane_info*, %struct.vfio_device_gfx_plane_info** %5, align 8
  %17 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, %struct.vfio_device_gfx_plane_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VFIO_GFX_PLANE_TYPE_PROBE, align 4
  %20 = load i32, i32* @VFIO_GFX_PLANE_TYPE_REGION, align 4
  %21 = or i32 %19, %20
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %89

24:                                               ; preds = %15
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %89

27:                                               ; preds = %2
  %28 = load %struct.vfio_device_gfx_plane_info*, %struct.vfio_device_gfx_plane_info** %5, align 8
  %29 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, %struct.vfio_device_gfx_plane_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @VFIO_GFX_PLANE_TYPE_REGION, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %89

36:                                               ; preds = %27
  %37 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %38 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vfio_device_gfx_plane_info*, %struct.vfio_device_gfx_plane_info** %5, align 8
  %43 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, %struct.vfio_device_gfx_plane_info* %42, i32 0, i32 11
  store i32 %41, i32* %43, align 4
  %44 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %45 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.vfio_device_gfx_plane_info*, %struct.vfio_device_gfx_plane_info** %5, align 8
  %50 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, %struct.vfio_device_gfx_plane_info* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %52 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.vfio_device_gfx_plane_info*, %struct.vfio_device_gfx_plane_info** %5, align 8
  %57 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, %struct.vfio_device_gfx_plane_info* %56, i32 0, i32 10
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %59 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %64 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %62, %67
  %69 = load %struct.vfio_device_gfx_plane_info*, %struct.vfio_device_gfx_plane_info** %5, align 8
  %70 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, %struct.vfio_device_gfx_plane_info* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %72 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.vfio_device_gfx_plane_info*, %struct.vfio_device_gfx_plane_info** %5, align 8
  %75 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, %struct.vfio_device_gfx_plane_info* %74, i32 0, i32 9
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @MDPY_DISPLAY_REGION, align 4
  %77 = load %struct.vfio_device_gfx_plane_info*, %struct.vfio_device_gfx_plane_info** %5, align 8
  %78 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, %struct.vfio_device_gfx_plane_info* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 8
  %79 = load %struct.vfio_device_gfx_plane_info*, %struct.vfio_device_gfx_plane_info** %5, align 8
  %80 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, %struct.vfio_device_gfx_plane_info* %79, i32 0, i32 7
  store i64 0, i64* %80, align 8
  %81 = load %struct.vfio_device_gfx_plane_info*, %struct.vfio_device_gfx_plane_info** %5, align 8
  %82 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, %struct.vfio_device_gfx_plane_info* %81, i32 0, i32 6
  store i64 0, i64* %82, align 8
  %83 = load %struct.vfio_device_gfx_plane_info*, %struct.vfio_device_gfx_plane_info** %5, align 8
  %84 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, %struct.vfio_device_gfx_plane_info* %83, i32 0, i32 5
  store i64 0, i64* %84, align 8
  %85 = load %struct.vfio_device_gfx_plane_info*, %struct.vfio_device_gfx_plane_info** %5, align 8
  %86 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, %struct.vfio_device_gfx_plane_info* %85, i32 0, i32 4
  store i64 0, i64* %86, align 8
  %87 = load %struct.vfio_device_gfx_plane_info*, %struct.vfio_device_gfx_plane_info** %5, align 8
  %88 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, %struct.vfio_device_gfx_plane_info* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %36, %33, %24, %23
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.mdev_state* @mdev_get_drvdata(%struct.mdev_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
