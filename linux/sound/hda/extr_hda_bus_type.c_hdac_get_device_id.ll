; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hda_bus_type.c_hdac_get_device_id.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hda_bus_type.c_hdac_get_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_device_id = type { i64, i64 }
%struct.hdac_device = type { i64, i64 }
%struct.hdac_driver = type { %struct.hda_device_id* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hda_device_id* @hdac_get_device_id(%struct.hdac_device* %0, %struct.hdac_driver* %1) #0 {
  %3 = alloca %struct.hda_device_id*, align 8
  %4 = alloca %struct.hdac_device*, align 8
  %5 = alloca %struct.hdac_driver*, align 8
  %6 = alloca %struct.hda_device_id*, align 8
  store %struct.hdac_device* %0, %struct.hdac_device** %4, align 8
  store %struct.hdac_driver* %1, %struct.hdac_driver** %5, align 8
  %7 = load %struct.hdac_driver*, %struct.hdac_driver** %5, align 8
  %8 = getelementptr inbounds %struct.hdac_driver, %struct.hdac_driver* %7, i32 0, i32 0
  %9 = load %struct.hda_device_id*, %struct.hda_device_id** %8, align 8
  %10 = icmp ne %struct.hda_device_id* %9, null
  br i1 %10, label %11, label %47

11:                                               ; preds = %2
  %12 = load %struct.hdac_driver*, %struct.hdac_driver** %5, align 8
  %13 = getelementptr inbounds %struct.hdac_driver, %struct.hdac_driver* %12, i32 0, i32 0
  %14 = load %struct.hda_device_id*, %struct.hda_device_id** %13, align 8
  store %struct.hda_device_id* %14, %struct.hda_device_id** %6, align 8
  br label %15

15:                                               ; preds = %43, %11
  %16 = load %struct.hda_device_id*, %struct.hda_device_id** %6, align 8
  %17 = getelementptr inbounds %struct.hda_device_id, %struct.hda_device_id* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %15
  %21 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %22 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.hda_device_id*, %struct.hda_device_id** %6, align 8
  %25 = getelementptr inbounds %struct.hda_device_id, %struct.hda_device_id* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %20
  %29 = load %struct.hda_device_id*, %struct.hda_device_id** %6, align 8
  %30 = getelementptr inbounds %struct.hda_device_id, %struct.hda_device_id* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.hda_device_id*, %struct.hda_device_id** %6, align 8
  %35 = getelementptr inbounds %struct.hda_device_id, %struct.hda_device_id* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %38 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33, %28
  %42 = load %struct.hda_device_id*, %struct.hda_device_id** %6, align 8
  store %struct.hda_device_id* %42, %struct.hda_device_id** %3, align 8
  br label %48

43:                                               ; preds = %33, %20
  %44 = load %struct.hda_device_id*, %struct.hda_device_id** %6, align 8
  %45 = getelementptr inbounds %struct.hda_device_id, %struct.hda_device_id* %44, i32 1
  store %struct.hda_device_id* %45, %struct.hda_device_id** %6, align 8
  br label %15

46:                                               ; preds = %15
  br label %47

47:                                               ; preds = %46, %2
  store %struct.hda_device_id* null, %struct.hda_device_id** %3, align 8
  br label %48

48:                                               ; preds = %47, %41
  %49 = load %struct.hda_device_id*, %struct.hda_device_id** %3, align 8
  ret %struct.hda_device_id* %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
