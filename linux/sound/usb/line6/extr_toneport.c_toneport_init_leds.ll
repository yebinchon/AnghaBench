; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_toneport.c_toneport_init_leds.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_toneport.c_toneport_init_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6_toneport = type { %struct.toneport_led*, %struct.TYPE_4__ }
%struct.toneport_led = type { i32, i32, %struct.usb_line6_toneport*, %struct.led_classdev }
%struct.led_classdev = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s::%s\00", align 1
@toneport_led_colors = common dso_local global i8** null, align 8
@toneport_led_init_vals = common dso_local global i32* null, align 8
@toneport_led_brightness_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_line6_toneport*)* @toneport_init_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toneport_init_leds(%struct.usb_line6_toneport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_line6_toneport*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.toneport_led*, align 8
  %8 = alloca %struct.led_classdev*, align 8
  store %struct.usb_line6_toneport* %0, %struct.usb_line6_toneport** %3, align 8
  %9 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %3, align 8
  %10 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %67, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %70

17:                                               ; preds = %14
  %18 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %3, align 8
  %19 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %18, i32 0, i32 0
  %20 = load %struct.toneport_led*, %struct.toneport_led** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.toneport_led, %struct.toneport_led* %20, i64 %22
  store %struct.toneport_led* %23, %struct.toneport_led** %7, align 8
  %24 = load %struct.toneport_led*, %struct.toneport_led** %7, align 8
  %25 = getelementptr inbounds %struct.toneport_led, %struct.toneport_led* %24, i32 0, i32 3
  store %struct.led_classdev* %25, %struct.led_classdev** %8, align 8
  %26 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %3, align 8
  %27 = load %struct.toneport_led*, %struct.toneport_led** %7, align 8
  %28 = getelementptr inbounds %struct.toneport_led, %struct.toneport_led* %27, i32 0, i32 2
  store %struct.usb_line6_toneport* %26, %struct.usb_line6_toneport** %28, align 8
  %29 = load %struct.toneport_led*, %struct.toneport_led** %7, align 8
  %30 = getelementptr inbounds %struct.toneport_led, %struct.toneport_led* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i8* @dev_name(%struct.device* %32)
  %34 = load i8**, i8*** @toneport_led_colors, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @snprintf(i32 %31, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %38)
  %40 = load %struct.toneport_led*, %struct.toneport_led** %7, align 8
  %41 = getelementptr inbounds %struct.toneport_led, %struct.toneport_led* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %44 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** @toneport_led_init_vals, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %51 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %53 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %52, i32 0, i32 0
  store i32 38, i32* %53, align 4
  %54 = load i32, i32* @toneport_led_brightness_set, align 4
  %55 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %56 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %59 = call i32 @led_classdev_register(%struct.device* %57, %struct.led_classdev* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %17
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %71

64:                                               ; preds = %17
  %65 = load %struct.toneport_led*, %struct.toneport_led** %7, align 8
  %66 = getelementptr inbounds %struct.toneport_led, %struct.toneport_led* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %14

70:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %62
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @led_classdev_register(%struct.device*, %struct.led_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
