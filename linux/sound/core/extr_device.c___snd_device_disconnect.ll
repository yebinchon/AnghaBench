; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_device.c___snd_device_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_device.c___snd_device_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_device = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 (%struct.snd_device*)* }

@SNDRV_DEV_REGISTERED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"device disconnect failure\0A\00", align 1
@SNDRV_DEV_DISCONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_device*)* @__snd_device_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__snd_device_disconnect(%struct.snd_device* %0) #0 {
  %2 = alloca %struct.snd_device*, align 8
  store %struct.snd_device* %0, %struct.snd_device** %2, align 8
  %3 = load %struct.snd_device*, %struct.snd_device** %2, align 8
  %4 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SNDRV_DEV_REGISTERED, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = load %struct.snd_device*, %struct.snd_device** %2, align 8
  %10 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64 (%struct.snd_device*)*, i64 (%struct.snd_device*)** %12, align 8
  %14 = icmp ne i64 (%struct.snd_device*)* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %8
  %16 = load %struct.snd_device*, %struct.snd_device** %2, align 8
  %17 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64 (%struct.snd_device*)*, i64 (%struct.snd_device*)** %19, align 8
  %21 = load %struct.snd_device*, %struct.snd_device** %2, align 8
  %22 = call i64 %20(%struct.snd_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.snd_device*, %struct.snd_device** %2, align 8
  %26 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %24, %15, %8
  %32 = load i64, i64* @SNDRV_DEV_DISCONNECTED, align 8
  %33 = load %struct.snd_device*, %struct.snd_device** %2, align 8
  %34 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
