; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice.c_dice_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice.c_dice_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.ieee1394_device_id = type { i64, i64 }
%struct.snd_dice = type { i32, i32, i32, i32, i32, i64, i32 }

@OUI_SSL = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_dice_stream_detect_current_formats = common dso_local global i64 0, align 8
@do_registration = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_unit*, %struct.ieee1394_device_id*)* @dice_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dice_probe(%struct.fw_unit* %0, %struct.ieee1394_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_unit*, align 8
  %5 = alloca %struct.ieee1394_device_id*, align 8
  %6 = alloca %struct.snd_dice*, align 8
  %7 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %4, align 8
  store %struct.ieee1394_device_id* %1, %struct.ieee1394_device_id** %5, align 8
  %8 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %5, align 8
  %9 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %2
  %13 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %5, align 8
  %14 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OUI_SSL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %20 = call i32 @check_dice_category(%struct.fw_unit* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %81

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %12, %2
  %28 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %29 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.snd_dice* @devm_kzalloc(i32* %29, i32 40, i32 %30)
  store %struct.snd_dice* %31, %struct.snd_dice** %6, align 8
  %32 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %33 = icmp ne %struct.snd_dice* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %81

37:                                               ; preds = %27
  %38 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %39 = call i32 @fw_unit_get(%struct.fw_unit* %38)
  %40 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %41 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %43 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %42, i32 0, i32 0
  %44 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %45 = call i32 @dev_set_drvdata(i32* %43, %struct.snd_dice* %44)
  %46 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %5, align 8
  %47 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %37
  %51 = load i64, i64* @snd_dice_stream_detect_current_formats, align 8
  %52 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %53 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %52, i32 0, i32 5
  store i64 %51, i64* %53, align 8
  br label %60

54:                                               ; preds = %37
  %55 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %5, align 8
  %56 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %59 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %58, i32 0, i32 5
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %50
  %61 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %62 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %61, i32 0, i32 4
  %63 = call i32 @spin_lock_init(i32* %62)
  %64 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %65 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %64, i32 0, i32 3
  %66 = call i32 @mutex_init(i32* %65)
  %67 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %68 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %67, i32 0, i32 2
  %69 = call i32 @init_completion(i32* %68)
  %70 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %71 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %70, i32 0, i32 1
  %72 = call i32 @init_waitqueue_head(i32* %71)
  %73 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %74 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %73, i32 0, i32 0
  %75 = load i32, i32* @do_registration, align 4
  %76 = call i32 @INIT_DEFERRABLE_WORK(i32* %74, i32 %75)
  %77 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %78 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %79 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %78, i32 0, i32 0
  %80 = call i32 @snd_fw_schedule_registration(%struct.fw_unit* %77, i32* %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %60, %34, %23
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @check_dice_category(%struct.fw_unit*) #1

declare dso_local %struct.snd_dice* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @fw_unit_get(%struct.fw_unit*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.snd_dice*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_DEFERRABLE_WORK(i32*, i32) #1

declare dso_local i32 @snd_fw_schedule_registration(%struct.fw_unit*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
