; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_submit_urb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_submit_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"usb_submit_urb: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*, i32)* @snd_usbmidi_submit_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usbmidi_submit_urb(%struct.urb* %0, i32 %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.urb*, %struct.urb** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @usb_submit_urb(%struct.urb* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.urb*, %struct.urb** %3, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %16, %11, %2
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
