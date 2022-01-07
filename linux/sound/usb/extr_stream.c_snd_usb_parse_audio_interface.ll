; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_snd_usb_parse_audio_interface.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_snd_usb_parse_audio_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_parse_audio_interface(%struct.snd_usb_audio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_usb_audio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @__snd_usb_parse_audio_interface(%struct.snd_usb_audio* %8, i32 %9, i32* %7, i32 0)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @__snd_usb_parse_audio_interface(%struct.snd_usb_audio* %19, i32 %20, i32* %7, i32 1)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %15
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %24, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @__snd_usb_parse_audio_interface(%struct.snd_usb_audio*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
