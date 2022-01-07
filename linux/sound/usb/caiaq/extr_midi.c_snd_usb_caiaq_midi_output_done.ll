; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_midi.c_snd_usb_caiaq_midi_output_done.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_midi.c_snd_usb_caiaq_midi_output_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, %struct.snd_usb_caiaqdev* }
%struct.snd_usb_caiaqdev = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_usb_caiaq_midi_output_done(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.snd_usb_caiaqdev*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %4 = load %struct.urb*, %struct.urb** %2, align 8
  %5 = getelementptr inbounds %struct.urb, %struct.urb* %4, i32 0, i32 1
  %6 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  store %struct.snd_usb_caiaqdev* %6, %struct.snd_usb_caiaqdev** %3, align 8
  %7 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %8 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %16 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %26

20:                                               ; preds = %14
  %21 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %22 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %3, align 8
  %23 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @snd_usb_caiaq_midi_send(%struct.snd_usb_caiaqdev* %21, i32 %24)
  br label %26

26:                                               ; preds = %20, %19, %13
  ret void
}

declare dso_local i32 @snd_usb_caiaq_midi_send(%struct.snd_usb_caiaqdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
