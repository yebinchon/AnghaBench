; ModuleID = '/home/carl/AnghaBench/linux/sound/ac97/extr_bus.c_ac97_bus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ac97/extr_bus.c_ac97_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ac97_codec_device = type { i32 }
%struct.ac97_codec_driver = type { i32 (%struct.ac97_codec_device.0*)* }
%struct.ac97_codec_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ac97_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_bus_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ac97_codec_device*, align 8
  %5 = alloca %struct.ac97_codec_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.ac97_codec_device* @to_ac97_device(%struct.device* %7)
  store %struct.ac97_codec_device* %8, %struct.ac97_codec_device** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ac97_codec_driver* @to_ac97_driver(i32 %11)
  store %struct.ac97_codec_driver* %12, %struct.ac97_codec_driver** %5, align 8
  %13 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %4, align 8
  %14 = call i32 @ac97_get_enable_clk(%struct.ac97_codec_device* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %45

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @pm_runtime_get_noresume(%struct.device* %20)
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = call i32 @pm_runtime_set_active(%struct.device* %22)
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = call i32 @pm_runtime_enable(%struct.device* %24)
  %26 = load %struct.ac97_codec_driver*, %struct.ac97_codec_driver** %5, align 8
  %27 = getelementptr inbounds %struct.ac97_codec_driver, %struct.ac97_codec_driver* %26, i32 0, i32 0
  %28 = load i32 (%struct.ac97_codec_device.0*)*, i32 (%struct.ac97_codec_device.0*)** %27, align 8
  %29 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %4, align 8
  %30 = bitcast %struct.ac97_codec_device* %29 to %struct.ac97_codec_device.0*
  %31 = call i32 %28(%struct.ac97_codec_device.0* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %45

35:                                               ; preds = %19
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = call i32 @pm_runtime_disable(%struct.device* %36)
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = call i32 @pm_runtime_set_suspended(%struct.device* %38)
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = call i32 @pm_runtime_put_noidle(%struct.device* %40)
  %42 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %4, align 8
  %43 = call i32 @ac97_put_disable_clk(%struct.ac97_codec_device* %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %35, %34, %17
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.ac97_codec_device* @to_ac97_device(%struct.device*) #1

declare dso_local %struct.ac97_codec_driver* @to_ac97_driver(i32) #1

declare dso_local i32 @ac97_get_enable_clk(%struct.ac97_codec_device*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @ac97_put_disable_clk(%struct.ac97_codec_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
