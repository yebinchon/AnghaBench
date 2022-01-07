; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_toneport.c_toneport_remove_leds.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_toneport.c_toneport_remove_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6_toneport = type { %struct.toneport_led* }
%struct.toneport_led = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_line6_toneport*)* @toneport_remove_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toneport_remove_leds(%struct.usb_line6_toneport* %0) #0 {
  %2 = alloca %struct.usb_line6_toneport*, align 8
  %3 = alloca %struct.toneport_led*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_line6_toneport* %0, %struct.usb_line6_toneport** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  %9 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %2, align 8
  %10 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %9, i32 0, i32 0
  %11 = load %struct.toneport_led*, %struct.toneport_led** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.toneport_led, %struct.toneport_led* %11, i64 %13
  store %struct.toneport_led* %14, %struct.toneport_led** %3, align 8
  %15 = load %struct.toneport_led*, %struct.toneport_led** %3, align 8
  %16 = getelementptr inbounds %struct.toneport_led, %struct.toneport_led* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %8
  br label %29

20:                                               ; preds = %8
  %21 = load %struct.toneport_led*, %struct.toneport_led** %3, align 8
  %22 = getelementptr inbounds %struct.toneport_led, %struct.toneport_led* %21, i32 0, i32 1
  %23 = call i32 @led_classdev_unregister(i32* %22)
  %24 = load %struct.toneport_led*, %struct.toneport_led** %3, align 8
  %25 = getelementptr inbounds %struct.toneport_led, %struct.toneport_led* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %5

29:                                               ; preds = %19, %5
  ret void
}

declare dso_local i32 @led_classdev_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
