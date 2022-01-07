; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_create_standard_audio_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_create_standard_audio_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i64, i32, i32 }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32 }
%struct.usb_driver = type { i32 }
%struct.snd_usb_audio_quirk = type { i32 }
%struct.usb_interface_descriptor = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"cannot setup if %d: error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, %struct.usb_interface*, %struct.usb_driver*, %struct.snd_usb_audio_quirk*)* @create_standard_audio_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_standard_audio_quirk(%struct.snd_usb_audio* %0, %struct.usb_interface* %1, %struct.usb_driver* %2, %struct.snd_usb_audio_quirk* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.usb_driver*, align 8
  %9 = alloca %struct.snd_usb_audio_quirk*, align 8
  %10 = alloca %struct.usb_host_interface*, align 8
  %11 = alloca %struct.usb_interface_descriptor*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %6, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %7, align 8
  store %struct.usb_driver* %2, %struct.usb_driver** %8, align 8
  store %struct.snd_usb_audio_quirk* %3, %struct.snd_usb_audio_quirk** %9, align 8
  %13 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %14 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @USB_ID(i32 5766, i32 221)
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %20 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %19, i32 0, i32 1
  store i32 1, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %4
  %22 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 0
  %24 = load %struct.usb_host_interface*, %struct.usb_host_interface** %23, align 8
  %25 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %24, i64 0
  store %struct.usb_host_interface* %25, %struct.usb_host_interface** %10, align 8
  %26 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %27 = call %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface* %26)
  store %struct.usb_interface_descriptor* %27, %struct.usb_interface_descriptor** %11, align 8
  %28 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %29 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %11, align 8
  %30 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snd_usb_parse_audio_interface(%struct.snd_usb_audio* %28, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %21
  %36 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %37 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %11, align 8
  %38 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @usb_audio_err(%struct.snd_usb_audio* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  br label %51

43:                                               ; preds = %21
  %44 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %45 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %11, align 8
  %48 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @usb_set_interface(i32 %46, i32 %49, i32 0)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %43, %35
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @USB_ID(i32, i32) #1

declare dso_local %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local i32 @snd_usb_parse_audio_interface(%struct.snd_usb_audio*, i32) #1

declare dso_local i32 @usb_audio_err(%struct.snd_usb_audio*, i8*, i32, i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
