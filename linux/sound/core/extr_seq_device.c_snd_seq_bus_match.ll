; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_seq_device.c_snd_seq_bus_match.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_seq_device.c_snd_seq_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.snd_seq_device = type { i64, i32 }
%struct.snd_seq_driver = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @snd_seq_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_seq_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca %struct.snd_seq_device*, align 8
  %6 = alloca %struct.snd_seq_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.device_driver* %1, %struct.device_driver** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.snd_seq_device* @to_seq_dev(%struct.device* %7)
  store %struct.snd_seq_device* %8, %struct.snd_seq_device** %5, align 8
  %9 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %10 = call %struct.snd_seq_driver* @to_seq_drv(%struct.device_driver* %9)
  store %struct.snd_seq_driver* %10, %struct.snd_seq_driver** %6, align 8
  %11 = load %struct.snd_seq_driver*, %struct.snd_seq_driver** %6, align 8
  %12 = getelementptr inbounds %struct.snd_seq_driver, %struct.snd_seq_driver* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.snd_seq_device*, %struct.snd_seq_device** %5, align 8
  %15 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @strcmp(i32 %13, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.snd_seq_driver*, %struct.snd_seq_driver** %6, align 8
  %21 = getelementptr inbounds %struct.snd_seq_driver, %struct.snd_seq_driver* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.snd_seq_device*, %struct.snd_seq_device** %5, align 8
  %24 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br label %27

27:                                               ; preds = %19, %2
  %28 = phi i1 [ false, %2 ], [ %26, %19 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local %struct.snd_seq_device* @to_seq_dev(%struct.device*) #1

declare dso_local %struct.snd_seq_driver* @to_seq_drv(%struct.device_driver*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
