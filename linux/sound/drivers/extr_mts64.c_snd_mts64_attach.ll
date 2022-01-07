; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_mts64.c_snd_mts64_attach.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_mts64.c_snd_mts64_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.parport = type { i32 }

@PLATFORM_DRIVER = common dso_local global i32 0, align 4
@device_count = common dso_local global i64 0, align 8
@platform_devices = common dso_local global %struct.platform_device** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @snd_mts64_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mts64_attach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.platform_device*, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  %4 = load i32, i32* @PLATFORM_DRIVER, align 4
  %5 = load i64, i64* @device_count, align 8
  %6 = call %struct.platform_device* @platform_device_alloc(i32 %4, i64 %5)
  store %struct.platform_device* %6, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = icmp ne %struct.platform_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %34

10:                                               ; preds = %1
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = load %struct.parport*, %struct.parport** %2, align 8
  %13 = call i32 @platform_set_drvdata(%struct.platform_device* %11, %struct.parport* %12)
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = call i64 @platform_device_add(%struct.platform_device* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = call i32 @platform_device_put(%struct.platform_device* %18)
  br label %34

20:                                               ; preds = %10
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i32 @platform_get_drvdata(%struct.platform_device* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = call i32 @platform_device_unregister(%struct.platform_device* %25)
  br label %34

27:                                               ; preds = %20
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.platform_device**, %struct.platform_device*** @platform_devices, align 8
  %30 = load i64, i64* @device_count, align 8
  %31 = getelementptr inbounds %struct.platform_device*, %struct.platform_device** %29, i64 %30
  store %struct.platform_device* %28, %struct.platform_device** %31, align 8
  %32 = load i64, i64* @device_count, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* @device_count, align 8
  br label %34

34:                                               ; preds = %27, %24, %17, %9
  ret void
}

declare dso_local %struct.platform_device* @platform_device_alloc(i32, i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.parport*) #1

declare dso_local i64 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i32 @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
