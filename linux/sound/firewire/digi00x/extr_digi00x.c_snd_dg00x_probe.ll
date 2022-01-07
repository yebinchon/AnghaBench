; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x.c_snd_dg00x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x.c_snd_dg00x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.ieee1394_device_id = type { i64 }
%struct.snd_dg00x = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MODEL_CONSOLE = common dso_local global i64 0, align 8
@do_registration = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_unit*, %struct.ieee1394_device_id*)* @snd_dg00x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_dg00x_probe(%struct.fw_unit* %0, %struct.ieee1394_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_unit*, align 8
  %5 = alloca %struct.ieee1394_device_id*, align 8
  %6 = alloca %struct.snd_dg00x*, align 8
  store %struct.fw_unit* %0, %struct.fw_unit** %4, align 8
  store %struct.ieee1394_device_id* %1, %struct.ieee1394_device_id** %5, align 8
  %7 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %8 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.snd_dg00x* @devm_kzalloc(i32* %8, i32 24, i32 %9)
  store %struct.snd_dg00x* %10, %struct.snd_dg00x** %6, align 8
  %11 = load %struct.snd_dg00x*, %struct.snd_dg00x** %6, align 8
  %12 = icmp ne %struct.snd_dg00x* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %18 = call i32 @fw_unit_get(%struct.fw_unit* %17)
  %19 = load %struct.snd_dg00x*, %struct.snd_dg00x** %6, align 8
  %20 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %22 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %21, i32 0, i32 0
  %23 = load %struct.snd_dg00x*, %struct.snd_dg00x** %6, align 8
  %24 = call i32 @dev_set_drvdata(i32* %22, %struct.snd_dg00x* %23)
  %25 = load %struct.snd_dg00x*, %struct.snd_dg00x** %6, align 8
  %26 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %25, i32 0, i32 4
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.snd_dg00x*, %struct.snd_dg00x** %6, align 8
  %29 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %28, i32 0, i32 3
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.snd_dg00x*, %struct.snd_dg00x** %6, align 8
  %32 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %31, i32 0, i32 2
  %33 = call i32 @init_waitqueue_head(i32* %32)
  %34 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %5, align 8
  %35 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MODEL_CONSOLE, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load %struct.snd_dg00x*, %struct.snd_dg00x** %6, align 8
  %41 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.snd_dg00x*, %struct.snd_dg00x** %6, align 8
  %43 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %42, i32 0, i32 1
  %44 = load i32, i32* @do_registration, align 4
  %45 = call i32 @INIT_DEFERRABLE_WORK(i32* %43, i32 %44)
  %46 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %47 = load %struct.snd_dg00x*, %struct.snd_dg00x** %6, align 8
  %48 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %47, i32 0, i32 1
  %49 = call i32 @snd_fw_schedule_registration(%struct.fw_unit* %46, i32* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %16, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.snd_dg00x* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @fw_unit_get(%struct.fw_unit*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.snd_dg00x*) #1

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
