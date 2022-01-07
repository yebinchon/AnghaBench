; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_bus.c_snd_hda_ext_driver_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_bus.c_snd_hda_ext_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_driver = type { %struct.TYPE_2__, i64, i64, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@HDA_DEV_ASOC = common dso_local global i32 0, align 4
@snd_hda_bus_type = common dso_local global i32 0, align 4
@hda_ext_drv_probe = common dso_local global i32 0, align 4
@hdac_ext_drv_remove = common dso_local global i32 0, align 4
@hdac_ext_drv_shutdown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_ext_driver_register(%struct.hdac_driver* %0) #0 {
  %2 = alloca %struct.hdac_driver*, align 8
  store %struct.hdac_driver* %0, %struct.hdac_driver** %2, align 8
  %3 = load i32, i32* @HDA_DEV_ASOC, align 4
  %4 = load %struct.hdac_driver*, %struct.hdac_driver** %2, align 8
  %5 = getelementptr inbounds %struct.hdac_driver, %struct.hdac_driver* %4, i32 0, i32 4
  store i32 %3, i32* %5, align 8
  %6 = load %struct.hdac_driver*, %struct.hdac_driver** %2, align 8
  %7 = getelementptr inbounds %struct.hdac_driver, %struct.hdac_driver* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  store i32* @snd_hda_bus_type, i32** %8, align 8
  %9 = load %struct.hdac_driver*, %struct.hdac_driver** %2, align 8
  %10 = getelementptr inbounds %struct.hdac_driver, %struct.hdac_driver* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @hda_ext_drv_probe, align 4
  %15 = load %struct.hdac_driver*, %struct.hdac_driver** %2, align 8
  %16 = getelementptr inbounds %struct.hdac_driver, %struct.hdac_driver* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 8
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.hdac_driver*, %struct.hdac_driver** %2, align 8
  %20 = getelementptr inbounds %struct.hdac_driver, %struct.hdac_driver* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32, i32* @hdac_ext_drv_remove, align 4
  %25 = load %struct.hdac_driver*, %struct.hdac_driver** %2, align 8
  %26 = getelementptr inbounds %struct.hdac_driver, %struct.hdac_driver* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.hdac_driver*, %struct.hdac_driver** %2, align 8
  %30 = getelementptr inbounds %struct.hdac_driver, %struct.hdac_driver* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* @hdac_ext_drv_shutdown, align 4
  %35 = load %struct.hdac_driver*, %struct.hdac_driver** %2, align 8
  %36 = getelementptr inbounds %struct.hdac_driver, %struct.hdac_driver* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.hdac_driver*, %struct.hdac_driver** %2, align 8
  %40 = getelementptr inbounds %struct.hdac_driver, %struct.hdac_driver* %39, i32 0, i32 0
  %41 = call i32 @driver_register(%struct.TYPE_2__* %40)
  ret i32 %41
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
