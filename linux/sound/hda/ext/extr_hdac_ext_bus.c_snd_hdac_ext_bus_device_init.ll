; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_bus.c_snd_hdac_ext_bus_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_bus.c_snd_hdac_ext_bus_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, i32 }
%struct.hdac_device = type { %struct.TYPE_2__, i32, %struct.hdac_bus* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"ehdaudio%dD%d\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"device init failed for hdac device\0A\00", align 1
@HDA_DEV_ASOC = common dso_local global i32 0, align 4
@default_release = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to register hdac device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_ext_bus_device_init(%struct.hdac_bus* %0, i32 %1, %struct.hdac_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdac_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdac_device*, align 8
  %8 = alloca [15 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hdac_device* %2, %struct.hdac_device** %7, align 8
  %10 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %11 = load %struct.hdac_device*, %struct.hdac_device** %7, align 8
  %12 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %11, i32 0, i32 2
  store %struct.hdac_bus* %10, %struct.hdac_bus** %12, align 8
  %13 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i64 0, i64 0
  %14 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %15 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @snprintf(i8* %13, i32 15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.hdac_device*, %struct.hdac_device** %7, align 8
  %20 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %21 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i64 0, i64 0
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @snd_hdac_device_init(%struct.hdac_device* %19, %struct.hdac_bus* %20, i8* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %28 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %53

32:                                               ; preds = %3
  %33 = load i32, i32* @HDA_DEV_ASOC, align 4
  %34 = load %struct.hdac_device*, %struct.hdac_device** %7, align 8
  %35 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @default_release, align 4
  %37 = load %struct.hdac_device*, %struct.hdac_device** %7, align 8
  %38 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.hdac_device*, %struct.hdac_device** %7, align 8
  %41 = call i32 @snd_hdac_device_register(%struct.hdac_device* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %32
  %45 = load %struct.hdac_bus*, %struct.hdac_bus** %5, align 8
  %46 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.hdac_device*, %struct.hdac_device** %7, align 8
  %50 = call i32 @snd_hdac_ext_bus_device_exit(%struct.hdac_device* %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %44, %26
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @snd_hdac_device_init(%struct.hdac_device*, %struct.hdac_bus*, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_hdac_device_register(%struct.hdac_device*) #1

declare dso_local i32 @snd_hdac_ext_bus_device_exit(%struct.hdac_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
