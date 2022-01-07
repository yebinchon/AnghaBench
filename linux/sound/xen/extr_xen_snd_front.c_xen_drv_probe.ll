; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front.c_xen_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front.c_xen_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.xenbus_device_id = type { i32 }
%struct.xen_snd_front_info = type { %struct.xenbus_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XenbusStateInitialising = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)* @xen_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_drv_probe(%struct.xenbus_device* %0, %struct.xenbus_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.xenbus_device_id*, align 8
  %6 = alloca %struct.xen_snd_front_info*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.xenbus_device_id* %1, %struct.xenbus_device_id** %5, align 8
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %8 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.xen_snd_front_info* @devm_kzalloc(i32* %8, i32 8, i32 %9)
  store %struct.xen_snd_front_info* %10, %struct.xen_snd_front_info** %6, align 8
  %11 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %6, align 8
  %12 = icmp ne %struct.xen_snd_front_info* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %18 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %6, align 8
  %19 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %18, i32 0, i32 0
  store %struct.xenbus_device* %17, %struct.xenbus_device** %19, align 8
  %20 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %21 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %20, i32 0, i32 0
  %22 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %6, align 8
  %23 = call i32 @dev_set_drvdata(i32* %21, %struct.xen_snd_front_info* %22)
  %24 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %25 = load i32, i32* @XenbusStateInitialising, align 4
  %26 = call i32 @xenbus_switch_state(%struct.xenbus_device* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %16, %13
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.xen_snd_front_info* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.xen_snd_front_info*) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
