; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_clock.c_snd_usb_init_sample_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_clock.c_snd_usb_init_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32 }
%struct.usb_host_interface = type { i32 }
%struct.audioformat = type { i32 }

@UAC3_FUNCTION_SUBCLASS_GENERIC_IO = common dso_local global i32 0, align 4
@UAC3_BADD_SAMPLING_RATE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_init_sample_rate(%struct.snd_usb_audio* %0, i32 %1, %struct.usb_host_interface* %2, %struct.audioformat* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_usb_audio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_host_interface*, align 8
  %10 = alloca %struct.audioformat*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.usb_host_interface* %2, %struct.usb_host_interface** %9, align 8
  store %struct.audioformat* %3, %struct.audioformat** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.audioformat*, %struct.audioformat** %10, align 8
  %13 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %16 [
    i32 130, label %15
    i32 128, label %23
    i32 129, label %38
  ]

15:                                               ; preds = %5
  br label %16

16:                                               ; preds = %5, %15
  %17 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %20 = load %struct.audioformat*, %struct.audioformat** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @set_sample_rate_v1(%struct.snd_usb_audio* %17, i32 %18, %struct.usb_host_interface* %19, %struct.audioformat* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  br label %45

23:                                               ; preds = %5
  %24 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %25 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @UAC3_FUNCTION_SUBCLASS_GENERIC_IO, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @UAC3_BADD_SAMPLING_RATE, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @ENXIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %45

36:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %45

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %5, %37
  %39 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %42 = load %struct.audioformat*, %struct.audioformat** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @set_sample_rate_v2v3(%struct.snd_usb_audio* %39, i32 %40, %struct.usb_host_interface* %41, %struct.audioformat* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %38, %36, %33, %16
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @set_sample_rate_v1(%struct.snd_usb_audio*, i32, %struct.usb_host_interface*, %struct.audioformat*, i32) #1

declare dso_local i32 @set_sample_rate_v2v3(%struct.snd_usb_audio*, i32, %struct.usb_host_interface*, %struct.audioformat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
