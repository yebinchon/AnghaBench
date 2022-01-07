; ModuleID = '/home/carl/AnghaBench/linux/sound/ac97/extr_bus.c_warm_reset_store.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ac97/extr_bus.c_warm_reset_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ac97_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ac97_controller*)* }

@ENODEV = common dso_local global i64 0, align 8
@ac97_controllers_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @warm_reset_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @warm_reset_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ac97_controller*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = icmp ne %struct.device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* @ENODEV, align 8
  %15 = sub i64 0, %14
  store i64 %15, i64* %5, align 8
  br label %29

16:                                               ; preds = %4
  %17 = call i32 @mutex_lock(i32* @ac97_controllers_mutex)
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.ac97_controller* @to_ac97_controller(%struct.device* %18)
  store %struct.ac97_controller* %19, %struct.ac97_controller** %10, align 8
  %20 = load %struct.ac97_controller*, %struct.ac97_controller** %10, align 8
  %21 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.ac97_controller*)*, i32 (%struct.ac97_controller*)** %23, align 8
  %25 = load %struct.ac97_controller*, %struct.ac97_controller** %10, align 8
  %26 = call i32 %24(%struct.ac97_controller* %25)
  %27 = call i32 @mutex_unlock(i32* @ac97_controllers_mutex)
  %28 = load i64, i64* %9, align 8
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %16, %13
  %30 = load i64, i64* %5, align 8
  ret i64 %30
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ac97_controller* @to_ac97_controller(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
