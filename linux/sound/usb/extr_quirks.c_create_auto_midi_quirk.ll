; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_create_auto_midi_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_create_auto_midi_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32 }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32 }
%struct.usb_driver = type { i32 }
%struct.usb_interface_descriptor = type { i32 }
%struct.usb_endpoint_descriptor = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, %struct.usb_interface*, %struct.usb_driver*)* @create_auto_midi_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_auto_midi_quirk(%struct.snd_usb_audio* %0, %struct.usb_interface* %1, %struct.usb_driver* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usb_audio*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.usb_driver*, align 8
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.usb_interface_descriptor*, align 8
  %10 = alloca %struct.usb_endpoint_descriptor*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %5, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %6, align 8
  store %struct.usb_driver* %2, %struct.usb_driver** %7, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %15 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %14, i64 0
  store %struct.usb_host_interface* %15, %struct.usb_host_interface** %8, align 8
  %16 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %17 = call %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface* %16)
  store %struct.usb_interface_descriptor* %17, %struct.usb_interface_descriptor** %9, align 8
  %18 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %19 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %75

25:                                               ; preds = %3
  %26 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %27 = call %struct.usb_endpoint_descriptor* @get_endpoint(%struct.usb_host_interface* %26, i32 0)
  store %struct.usb_endpoint_descriptor* %27, %struct.usb_endpoint_descriptor** %10, align 8
  %28 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %29 = call i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %33 = call i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %75

38:                                               ; preds = %31, %25
  %39 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %40 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @USB_ID_VENDOR(i32 %41)
  switch i32 %42, label %69 [
    i32 1177, label %43
    i32 1410, label %56
  ]

43:                                               ; preds = %38
  %44 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %45 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %46 = load %struct.usb_driver*, %struct.usb_driver** %7, align 8
  %47 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %48 = call i32 @create_yamaha_midi_quirk(%struct.snd_usb_audio* %44, %struct.usb_interface* %45, %struct.usb_driver* %46, %struct.usb_host_interface* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %4, align 4
  br label %75

55:                                               ; preds = %43
  br label %69

56:                                               ; preds = %38
  %57 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %58 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %59 = load %struct.usb_driver*, %struct.usb_driver** %7, align 8
  %60 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %61 = call i32 @create_roland_midi_quirk(%struct.snd_usb_audio* %57, %struct.usb_interface* %58, %struct.usb_driver* %59, %struct.usb_host_interface* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %4, align 4
  br label %75

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %38, %68, %55
  %70 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %71 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %72 = load %struct.usb_driver*, %struct.usb_driver** %7, align 8
  %73 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %74 = call i32 @create_std_midi_quirk(%struct.snd_usb_audio* %70, %struct.usb_interface* %71, %struct.usb_driver* %72, %struct.usb_host_interface* %73)
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %69, %66, %53, %35, %22
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local %struct.usb_endpoint_descriptor* @get_endpoint(%struct.usb_host_interface*, i32) #1

declare dso_local i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @USB_ID_VENDOR(i32) #1

declare dso_local i32 @create_yamaha_midi_quirk(%struct.snd_usb_audio*, %struct.usb_interface*, %struct.usb_driver*, %struct.usb_host_interface*) #1

declare dso_local i32 @create_roland_midi_quirk(%struct.snd_usb_audio*, %struct.usb_interface*, %struct.usb_driver*, %struct.usb_host_interface*) #1

declare dso_local i32 @create_std_midi_quirk(%struct.snd_usb_audio*, %struct.usb_interface*, %struct.usb_driver*, %struct.usb_host_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
