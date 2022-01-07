; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_create_std_midi_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_create_std_midi_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_driver = type { i32 }
%struct.usb_host_interface = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.usb_ms_header_descriptor = type { i32, i64, i64 }
%struct.usb_ms_endpoint_descriptor = type { i32, i64, i64, i32 }

@USB_DT_CS_INTERFACE = common dso_local global i64 0, align 8
@USB_MS_HEADER = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@USB_DT_CS_ENDPOINT = common dso_local global i64 0, align 8
@UAC_MS_GENERAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, %struct.usb_interface*, %struct.usb_driver*, %struct.usb_host_interface*)* @create_std_midi_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_std_midi_quirk(%struct.snd_usb_audio* %0, %struct.usb_interface* %1, %struct.usb_driver* %2, %struct.usb_host_interface* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.usb_driver*, align 8
  %9 = alloca %struct.usb_host_interface*, align 8
  %10 = alloca %struct.usb_ms_header_descriptor*, align 8
  %11 = alloca %struct.usb_ms_endpoint_descriptor*, align 8
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %6, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %7, align 8
  store %struct.usb_driver* %2, %struct.usb_driver** %8, align 8
  store %struct.usb_host_interface* %3, %struct.usb_host_interface** %9, align 8
  %12 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %13 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.usb_ms_header_descriptor*
  store %struct.usb_ms_header_descriptor* %15, %struct.usb_ms_header_descriptor** %10, align 8
  %16 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %17 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 7
  br i1 %19, label %37, label %20

20:                                               ; preds = %4
  %21 = load %struct.usb_ms_header_descriptor*, %struct.usb_ms_header_descriptor** %10, align 8
  %22 = getelementptr inbounds %struct.usb_ms_header_descriptor, %struct.usb_ms_header_descriptor* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 7
  br i1 %24, label %37, label %25

25:                                               ; preds = %20
  %26 = load %struct.usb_ms_header_descriptor*, %struct.usb_ms_header_descriptor** %10, align 8
  %27 = getelementptr inbounds %struct.usb_ms_header_descriptor, %struct.usb_ms_header_descriptor* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @USB_DT_CS_INTERFACE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.usb_ms_header_descriptor*, %struct.usb_ms_header_descriptor** %10, align 8
  %33 = getelementptr inbounds %struct.usb_ms_header_descriptor, %struct.usb_ms_header_descriptor* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @USB_MS_HEADER, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %25, %20, %4
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %90

40:                                               ; preds = %31
  %41 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %42 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.usb_ms_endpoint_descriptor*
  store %struct.usb_ms_endpoint_descriptor* %47, %struct.usb_ms_endpoint_descriptor** %11, align 8
  %48 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %49 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %82, label %55

55:                                               ; preds = %40
  %56 = load %struct.usb_ms_endpoint_descriptor*, %struct.usb_ms_endpoint_descriptor** %11, align 8
  %57 = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, %struct.usb_ms_endpoint_descriptor* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %58, 4
  br i1 %59, label %82, label %60

60:                                               ; preds = %55
  %61 = load %struct.usb_ms_endpoint_descriptor*, %struct.usb_ms_endpoint_descriptor** %11, align 8
  %62 = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, %struct.usb_ms_endpoint_descriptor* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @USB_DT_CS_ENDPOINT, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %82, label %66

66:                                               ; preds = %60
  %67 = load %struct.usb_ms_endpoint_descriptor*, %struct.usb_ms_endpoint_descriptor** %11, align 8
  %68 = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, %struct.usb_ms_endpoint_descriptor* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @UAC_MS_GENERAL, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %82, label %72

72:                                               ; preds = %66
  %73 = load %struct.usb_ms_endpoint_descriptor*, %struct.usb_ms_endpoint_descriptor** %11, align 8
  %74 = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, %struct.usb_ms_endpoint_descriptor* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load %struct.usb_ms_endpoint_descriptor*, %struct.usb_ms_endpoint_descriptor** %11, align 8
  %79 = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, %struct.usb_ms_endpoint_descriptor* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %80, 16
  br i1 %81, label %82, label %85

82:                                               ; preds = %77, %72, %66, %60, %55, %40
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %90

85:                                               ; preds = %77
  %86 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %87 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %88 = load %struct.usb_driver*, %struct.usb_driver** %8, align 8
  %89 = call i32 @create_any_midi_quirk(%struct.snd_usb_audio* %86, %struct.usb_interface* %87, %struct.usb_driver* %88, i32* null)
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %85, %82, %37
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @create_any_midi_quirk(%struct.snd_usb_audio*, %struct.usb_interface*, %struct.usb_driver*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
