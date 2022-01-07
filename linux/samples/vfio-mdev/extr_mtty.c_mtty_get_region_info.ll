; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mtty.c_mtty_get_region_info.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mtty.c_mtty_get_region_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_device = type { i32 }
%struct.vfio_region_info = type { i32, i32, i32, i8* }
%struct.mdev_state = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@VFIO_PCI_NUM_REGIONS = common dso_local global i32 0, align 4
@MTTY_CONFIG_SPACE_SIZE = common dso_local global i32 0, align 4
@MTTY_IO_BAR_SIZE = common dso_local global i32 0, align 4
@VFIO_REGION_INFO_FLAG_READ = common dso_local global i32 0, align 4
@VFIO_REGION_INFO_FLAG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdev_device*, %struct.vfio_region_info*, i32*, i8**)* @mtty_get_region_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtty_get_region_info(%struct.mdev_device* %0, %struct.vfio_region_info* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mdev_device*, align 8
  %7 = alloca %struct.vfio_region_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mdev_state*, align 8
  %12 = alloca i32, align 4
  store %struct.mdev_device* %0, %struct.mdev_device** %6, align 8
  store %struct.vfio_region_info* %1, %struct.vfio_region_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.mdev_device*, %struct.mdev_device** %6, align 8
  %14 = icmp ne %struct.mdev_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %87

18:                                               ; preds = %4
  %19 = load %struct.mdev_device*, %struct.mdev_device** %6, align 8
  %20 = call %struct.mdev_state* @mdev_get_drvdata(%struct.mdev_device* %19)
  store %struct.mdev_state* %20, %struct.mdev_state** %11, align 8
  %21 = load %struct.mdev_state*, %struct.mdev_state** %11, align 8
  %22 = icmp ne %struct.mdev_state* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %87

26:                                               ; preds = %18
  %27 = load %struct.vfio_region_info*, %struct.vfio_region_info** %7, align 8
  %28 = getelementptr inbounds %struct.vfio_region_info, %struct.vfio_region_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @VFIO_PCI_NUM_REGIONS, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %87

36:                                               ; preds = %26
  %37 = load %struct.mdev_state*, %struct.mdev_state** %11, align 8
  %38 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load i32, i32* %12, align 4
  switch i32 %40, label %53 [
    i32 128, label %41
    i32 130, label %43
    i32 129, label %45
  ]

41:                                               ; preds = %36
  %42 = load i32, i32* @MTTY_CONFIG_SPACE_SIZE, align 4
  store i32 %42, i32* %10, align 4
  br label %54

43:                                               ; preds = %36
  %44 = load i32, i32* @MTTY_IO_BAR_SIZE, align 4
  store i32 %44, i32* %10, align 4
  br label %54

45:                                               ; preds = %36
  %46 = load %struct.mdev_state*, %struct.mdev_state** %11, align 8
  %47 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @MTTY_IO_BAR_SIZE, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %50, %45
  br label %54

53:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %53, %52, %43, %41
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.mdev_state*, %struct.mdev_state** %11, align 8
  %57 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %55, i32* %62, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i8* @MTTY_VFIO_PCI_INDEX_TO_OFFSET(i32 %63)
  %65 = load %struct.mdev_state*, %struct.mdev_state** %11, align 8
  %66 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i8* %64, i8** %71, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.vfio_region_info*, %struct.vfio_region_info** %7, align 8
  %74 = getelementptr inbounds %struct.vfio_region_info, %struct.vfio_region_info* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i8* @MTTY_VFIO_PCI_INDEX_TO_OFFSET(i32 %75)
  %77 = load %struct.vfio_region_info*, %struct.vfio_region_info** %7, align 8
  %78 = getelementptr inbounds %struct.vfio_region_info, %struct.vfio_region_info* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @VFIO_REGION_INFO_FLAG_READ, align 4
  %80 = load i32, i32* @VFIO_REGION_INFO_FLAG_WRITE, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.vfio_region_info*, %struct.vfio_region_info** %7, align 8
  %83 = getelementptr inbounds %struct.vfio_region_info, %struct.vfio_region_info* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.mdev_state*, %struct.mdev_state** %11, align 8
  %85 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %54, %33, %23, %15
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.mdev_state* @mdev_get_drvdata(%struct.mdev_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @MTTY_VFIO_PCI_INDEX_TO_OFFSET(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
