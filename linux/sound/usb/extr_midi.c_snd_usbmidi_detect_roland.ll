; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_detect_roland.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_detect_roland.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi = type { %struct.usb_interface* }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32*, i32 }
%struct.snd_usb_midi_endpoint_info = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@USB_DT_CS_INTERFACE = common dso_local global i32 0, align 4
@UAC_HEADER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_midi*, %struct.snd_usb_midi_endpoint_info*)* @snd_usbmidi_detect_roland to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usbmidi_detect_roland(%struct.snd_usb_midi* %0, %struct.snd_usb_midi_endpoint_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_usb_midi*, align 8
  %5 = alloca %struct.snd_usb_midi_endpoint_info*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca i32*, align 8
  store %struct.snd_usb_midi* %0, %struct.snd_usb_midi** %4, align 8
  store %struct.snd_usb_midi_endpoint_info* %1, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %9 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %10 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %9, i32 0, i32 0
  %11 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  store %struct.usb_interface* %11, %struct.usb_interface** %6, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %13 = icmp ne %struct.usb_interface* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %114

17:                                               ; preds = %2
  %18 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %19 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %18, i32 0, i32 0
  %20 = load %struct.usb_host_interface*, %struct.usb_host_interface** %19, align 8
  store %struct.usb_host_interface* %20, %struct.usb_host_interface** %7, align 8
  %21 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %22 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %8, align 8
  br label %24

24:                                               ; preds = %104, %17
  %25 = load i32*, i32** %8, align 8
  %26 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %27 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %30 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = icmp ult i32* %25, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 2
  br label %40

40:                                               ; preds = %35, %24
  %41 = phi i1 [ false, %24 ], [ %39, %35 ]
  br i1 %41, label %42, label %111

42:                                               ; preds = %40
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 6
  br i1 %46, label %47, label %81

47:                                               ; preds = %42
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @USB_DT_CS_INTERFACE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %47
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 241
  br i1 %57, label %58, label %81

58:                                               ; preds = %53
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 1, %66
  %68 = sub nsw i32 %67, 1
  %69 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %70 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 1, %73
  %75 = sub nsw i32 %74, 1
  %76 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %77 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %79 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %80 = call i32 @snd_usbmidi_detect_endpoints(%struct.snd_usb_midi* %78, %struct.snd_usb_midi_endpoint_info* %79, i32 1)
  store i32 %80, i32* %3, align 4
  br label %114

81:                                               ; preds = %58, %53, %47, %42
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sge i32 %84, 7
  br i1 %85, label %86, label %102

86:                                               ; preds = %81
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @USB_DT_CS_INTERFACE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @UAC_HEADER, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %100 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %101 = call i32 @snd_usbmidi_get_ms_info(%struct.snd_usb_midi* %99, %struct.snd_usb_midi_endpoint_info* %100)
  store i32 %101, i32* %3, align 4
  br label %114

102:                                              ; preds = %92, %86, %81
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %8, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %8, align 8
  br label %24

111:                                              ; preds = %40
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %111, %98, %63, %14
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @snd_usbmidi_detect_endpoints(%struct.snd_usb_midi*, %struct.snd_usb_midi_endpoint_info*, i32) #1

declare dso_local i32 @snd_usbmidi_get_ms_info(%struct.snd_usb_midi*, %struct.snd_usb_midi_endpoint_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
