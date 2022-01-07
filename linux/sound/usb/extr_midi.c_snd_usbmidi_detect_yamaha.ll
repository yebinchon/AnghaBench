; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_detect_yamaha.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_detect_yamaha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi = type { %struct.usb_interface* }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32*, i32 }
%struct.snd_usb_midi_endpoint_info = type { i32, i32 }
%struct.usb_interface_descriptor = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@USB_DT_CS_INTERFACE = common dso_local global i32 0, align 4
@UAC_MIDI_IN_JACK = common dso_local global i32 0, align 4
@UAC_MIDI_OUT_JACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_midi*, %struct.snd_usb_midi_endpoint_info*)* @snd_usbmidi_detect_yamaha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usbmidi_detect_yamaha(%struct.snd_usb_midi* %0, %struct.snd_usb_midi_endpoint_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_usb_midi*, align 8
  %5 = alloca %struct.snd_usb_midi_endpoint_info*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_interface_descriptor*, align 8
  %9 = alloca i32*, align 8
  store %struct.snd_usb_midi* %0, %struct.snd_usb_midi** %4, align 8
  store %struct.snd_usb_midi_endpoint_info* %1, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %10 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %11 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %10, i32 0, i32 0
  %12 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  store %struct.usb_interface* %12, %struct.usb_interface** %6, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %14 = icmp ne %struct.usb_interface* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %114

18:                                               ; preds = %2
  %19 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 0
  %21 = load %struct.usb_host_interface*, %struct.usb_host_interface** %20, align 8
  store %struct.usb_host_interface* %21, %struct.usb_host_interface** %7, align 8
  %22 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %23 = call %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface* %22)
  store %struct.usb_interface_descriptor* %23, %struct.usb_interface_descriptor** %8, align 8
  %24 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %25 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %114

31:                                               ; preds = %18
  %32 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %33 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %9, align 8
  br label %35

35:                                               ; preds = %90, %31
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %38 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %41 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = icmp ult i32* %36, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 2
  br label %51

51:                                               ; preds = %46, %35
  %52 = phi i1 [ false, %35 ], [ %50, %46 ]
  br i1 %52, label %53, label %97

53:                                               ; preds = %51
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @USB_DT_CS_INTERFACE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %89

59:                                               ; preds = %53
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @UAC_MIDI_IN_JACK, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %67 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 1
  %70 = or i32 %69, 1
  %71 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %72 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %88

73:                                               ; preds = %59
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @UAC_MIDI_OUT_JACK, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %81 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 1
  %84 = or i32 %83, 1
  %85 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %86 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %79, %73
  br label %88

88:                                               ; preds = %87, %65
  br label %89

89:                                               ; preds = %88, %53
  br label %90

90:                                               ; preds = %89
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %9, align 8
  br label %35

97:                                               ; preds = %51
  %98 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %99 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %97
  %103 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %104 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @ENOENT, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %114

110:                                              ; preds = %102, %97
  %111 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %112 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %113 = call i32 @snd_usbmidi_detect_endpoints(%struct.snd_usb_midi* %111, %struct.snd_usb_midi_endpoint_info* %112, i32 1)
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %110, %107, %28, %15
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local i32 @snd_usbmidi_detect_endpoints(%struct.snd_usb_midi*, %struct.snd_usb_midi_endpoint_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
