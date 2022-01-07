; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/soundbus/extr_core.c_soundbus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/soundbus/extr_core.c_soundbus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.soundbus_driver = type { i32 (%struct.soundbus_dev*)* }
%struct.soundbus_dev = type opaque
%struct.soundbus_dev.0 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @soundbus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soundbus_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.soundbus_driver*, align 8
  %6 = alloca %struct.soundbus_dev.0*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.soundbus_driver* @to_soundbus_driver(i32 %11)
  store %struct.soundbus_driver* %12, %struct.soundbus_driver** %5, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.soundbus_dev.0* @to_soundbus_device(%struct.device* %13)
  store %struct.soundbus_dev.0* %14, %struct.soundbus_dev.0** %6, align 8
  %15 = load %struct.soundbus_driver*, %struct.soundbus_driver** %5, align 8
  %16 = getelementptr inbounds %struct.soundbus_driver, %struct.soundbus_driver* %15, i32 0, i32 0
  %17 = load i32 (%struct.soundbus_dev*)*, i32 (%struct.soundbus_dev*)** %16, align 8
  %18 = icmp ne i32 (%struct.soundbus_dev*)* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %37

21:                                               ; preds = %1
  %22 = load %struct.soundbus_dev.0*, %struct.soundbus_dev.0** %6, align 8
  %23 = call i32 @soundbus_dev_get(%struct.soundbus_dev.0* %22)
  %24 = load %struct.soundbus_driver*, %struct.soundbus_driver** %5, align 8
  %25 = getelementptr inbounds %struct.soundbus_driver, %struct.soundbus_driver* %24, i32 0, i32 0
  %26 = load i32 (%struct.soundbus_dev*)*, i32 (%struct.soundbus_dev*)** %25, align 8
  %27 = load %struct.soundbus_dev.0*, %struct.soundbus_dev.0** %6, align 8
  %28 = bitcast %struct.soundbus_dev.0* %27 to %struct.soundbus_dev*
  %29 = call i32 %26(%struct.soundbus_dev* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load %struct.soundbus_dev.0*, %struct.soundbus_dev.0** %6, align 8
  %34 = call i32 @soundbus_dev_put(%struct.soundbus_dev.0* %33)
  br label %35

35:                                               ; preds = %32, %21
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %19
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.soundbus_driver* @to_soundbus_driver(i32) #1

declare dso_local %struct.soundbus_dev.0* @to_soundbus_device(%struct.device*) #1

declare dso_local i32 @soundbus_dev_get(%struct.soundbus_dev.0*) #1

declare dso_local i32 @soundbus_dev_put(%struct.soundbus_dev.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
