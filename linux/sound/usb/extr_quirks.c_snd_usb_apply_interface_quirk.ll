; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_apply_interface_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_apply_interface_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_apply_interface_quirk(%struct.snd_usb_audio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usb_audio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %9 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @USB_ID(i32 1891, i32 8195)
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @audiophile_skip_setting_quirk(%struct.snd_usb_audio* %14, i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  br label %41

18:                                               ; preds = %3
  %19 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %20 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @USB_ID(i32 1891, i32 8193)
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @quattro_skip_setting_quirk(%struct.snd_usb_audio* %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %41

29:                                               ; preds = %18
  %30 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %31 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @USB_ID(i32 1891, i32 8210)
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @fasttrackpro_skip_setting_quirk(%struct.snd_usb_audio* %36, i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %35, %24, %13
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @USB_ID(i32, i32) #1

declare dso_local i32 @audiophile_skip_setting_quirk(%struct.snd_usb_audio*, i32, i32) #1

declare dso_local i32 @quattro_skip_setting_quirk(%struct.snd_usb_audio*, i32, i32) #1

declare dso_local i32 @fasttrackpro_skip_setting_quirk(%struct.snd_usb_audio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
