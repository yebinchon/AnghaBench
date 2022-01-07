; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_toneport.c_toneport_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_toneport.c_toneport_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { i32, i32, i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_line6_toneport = type { i32, i32, i32 }

@line6_toneport_disconnect = common dso_local global i32 0, align 4
@toneport_startup = common dso_local global i32 0, align 4
@toneport_pcm_properties = common dso_local global i32 0, align 4
@toneport_control_monitor = common dso_local global i32 0, align 4
@toneport_control_source = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_line6*, %struct.usb_device_id*)* @toneport_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toneport_init(%struct.usb_line6* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_line6*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_line6_toneport*, align 8
  store %struct.usb_line6* %0, %struct.usb_line6** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %9 = call %struct.usb_line6_toneport* @line6_to_toneport(%struct.usb_line6* %8)
  store %struct.usb_line6_toneport* %9, %struct.usb_line6_toneport** %7, align 8
  %10 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %11 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %7, align 8
  %14 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @line6_toneport_disconnect, align 4
  %16 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %17 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @toneport_startup, align 4
  %19 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %20 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %22 = call i32 @line6_init_pcm(%struct.usb_line6* %21, i32* @toneport_pcm_properties)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %90

27:                                               ; preds = %2
  %28 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %29 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %32 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @snd_ctl_new1(i32* @toneport_control_monitor, i32 %33)
  %35 = call i32 @snd_ctl_add(i32 %30, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %90

40:                                               ; preds = %27
  %41 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %7, align 8
  %42 = call i64 @toneport_has_source_select(%struct.usb_line6_toneport* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %46 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %49 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @snd_ctl_new1(i32* @toneport_control_source, i32 %50)
  %52 = call i32 @snd_ctl_add(i32 %47, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %90

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57, %40
  %59 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %60 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %7, align 8
  %61 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %60, i32 0, i32 1
  %62 = call i32 @line6_read_serial_number(%struct.usb_line6* %59, i32* %61)
  %63 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %64 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %7, align 8
  %65 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %64, i32 0, i32 0
  %66 = call i32 @line6_read_data(%struct.usb_line6* %63, i32 32962, i32* %65, i32 1)
  %67 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %7, align 8
  %68 = call i64 @toneport_has_led(%struct.usb_line6_toneport* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %58
  %71 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %7, align 8
  %72 = call i32 @toneport_init_leds(%struct.usb_line6_toneport* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %90

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %58
  %79 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %7, align 8
  %80 = call i32 @toneport_setup(%struct.usb_line6_toneport* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %90

85:                                               ; preds = %78
  %86 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %87 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @snd_card_register(i32 %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %85, %83, %75, %55, %38, %25
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.usb_line6_toneport* @line6_to_toneport(%struct.usb_line6*) #1

declare dso_local i32 @line6_init_pcm(%struct.usb_line6*, i32*) #1

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, i32) #1

declare dso_local i64 @toneport_has_source_select(%struct.usb_line6_toneport*) #1

declare dso_local i32 @line6_read_serial_number(%struct.usb_line6*, i32*) #1

declare dso_local i32 @line6_read_data(%struct.usb_line6*, i32, i32*, i32) #1

declare dso_local i64 @toneport_has_led(%struct.usb_line6_toneport*) #1

declare dso_local i32 @toneport_init_leds(%struct.usb_line6_toneport*) #1

declare dso_local i32 @toneport_setup(%struct.usb_line6_toneport*) #1

declare dso_local i32 @snd_card_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
