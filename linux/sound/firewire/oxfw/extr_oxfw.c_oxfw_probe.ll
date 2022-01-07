; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw.c_oxfw_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw.c_oxfw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.ieee1394_device_id = type { i64 }
%struct.snd_oxfw = type { i32, i32, i32, i32, %struct.ieee1394_device_id*, i32 }

@VENDOR_LOUD = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@do_registration = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_unit*, %struct.ieee1394_device_id*)* @oxfw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxfw_probe(%struct.fw_unit* %0, %struct.ieee1394_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_unit*, align 8
  %5 = alloca %struct.ieee1394_device_id*, align 8
  %6 = alloca %struct.snd_oxfw*, align 8
  store %struct.fw_unit* %0, %struct.fw_unit** %4, align 8
  store %struct.ieee1394_device_id* %1, %struct.ieee1394_device_id** %5, align 8
  %7 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %5, align 8
  %8 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VENDOR_LOUD, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %14 = call i32 @detect_loud_models(%struct.fw_unit* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %58

19:                                               ; preds = %12, %2
  %20 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %21 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.snd_oxfw* @devm_kzalloc(i32* %21, i32 32, i32 %22)
  store %struct.snd_oxfw* %23, %struct.snd_oxfw** %6, align 8
  %24 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %25 = icmp ne %struct.snd_oxfw* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %58

29:                                               ; preds = %19
  %30 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %31 = call i32 @fw_unit_get(%struct.fw_unit* %30)
  %32 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %33 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %35 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %34, i32 0, i32 0
  %36 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %37 = call i32 @dev_set_drvdata(i32* %35, %struct.snd_oxfw* %36)
  %38 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %5, align 8
  %39 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %40 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %39, i32 0, i32 4
  store %struct.ieee1394_device_id* %38, %struct.ieee1394_device_id** %40, align 8
  %41 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %42 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %41, i32 0, i32 3
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %45 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %44, i32 0, i32 2
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %48 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %47, i32 0, i32 1
  %49 = call i32 @init_waitqueue_head(i32* %48)
  %50 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %51 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %50, i32 0, i32 0
  %52 = load i32, i32* @do_registration, align 4
  %53 = call i32 @INIT_DEFERRABLE_WORK(i32* %51, i32 %52)
  %54 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %55 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %56 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %55, i32 0, i32 0
  %57 = call i32 @snd_fw_schedule_registration(%struct.fw_unit* %54, i32* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %29, %26, %16
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @detect_loud_models(%struct.fw_unit*) #1

declare dso_local %struct.snd_oxfw* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @fw_unit_get(%struct.fw_unit*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.snd_oxfw*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_DEFERRABLE_WORK(i32*, i32) #1

declare dso_local i32 @snd_fw_schedule_registration(%struct.fw_unit*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
