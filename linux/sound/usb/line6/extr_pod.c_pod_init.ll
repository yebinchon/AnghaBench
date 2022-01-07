; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_pod.c_pod_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_pod.c_pod_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { i32, i32, i32, i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_line6_pod = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@line6_pod_process_message = common dso_local global i32 0, align 4
@pod_startup = common dso_local global i32 0, align 4
@pod_dev_attr_group = common dso_local global i32 0, align 4
@pod_pcm_properties = common dso_local global i32 0, align 4
@pod_control_monitor = common dso_local global i32 0, align 4
@LINE6_CAP_CONTROL = common dso_local global i32 0, align 4
@POD_SYSTEM_INVALID = common dso_local global i32 0, align 4
@POD_STARTUP_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_line6*, %struct.usb_device_id*)* @pod_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pod_init(%struct.usb_line6* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_line6*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_line6_pod*, align 8
  store %struct.usb_line6* %0, %struct.usb_line6** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %9 = call %struct.usb_line6_pod* @line6_to_pod(%struct.usb_line6* %8)
  store %struct.usb_line6_pod* %9, %struct.usb_line6_pod** %7, align 8
  %10 = load i32, i32* @line6_pod_process_message, align 4
  %11 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %12 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @pod_startup, align 4
  %14 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %15 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %17 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @snd_card_add_dev_attr(i32 %18, i32* @pod_dev_attr_group)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %71

24:                                               ; preds = %2
  %25 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %26 = call i32 @line6_init_midi(%struct.usb_line6* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %71

31:                                               ; preds = %24
  %32 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %33 = call i32 @line6_init_pcm(%struct.usb_line6* %32, i32* @pod_pcm_properties)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %71

38:                                               ; preds = %31
  %39 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %40 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %43 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @snd_ctl_new1(i32* @pod_control_monitor, i32 %44)
  %46 = call i32 @snd_ctl_add(i32 %41, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %71

51:                                               ; preds = %38
  %52 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %7, align 8
  %53 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @LINE6_CAP_CONTROL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %51
  %62 = load i32, i32* @POD_SYSTEM_INVALID, align 4
  %63 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %7, align 8
  %64 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %66 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %65, i32 0, i32 0
  %67 = load i32, i32* @POD_STARTUP_DELAY, align 4
  %68 = call i32 @msecs_to_jiffies(i32 %67)
  %69 = call i32 @schedule_delayed_work(i32* %66, i32 %68)
  br label %70

70:                                               ; preds = %61, %51
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %49, %36, %29, %22
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.usb_line6_pod* @line6_to_pod(%struct.usb_line6*) #1

declare dso_local i32 @snd_card_add_dev_attr(i32, i32*) #1

declare dso_local i32 @line6_init_midi(%struct.usb_line6*) #1

declare dso_local i32 @line6_init_pcm(%struct.usb_line6*, i32*) #1

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
