; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_detect_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_detect_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi = type { %struct.usb_interface*, i32 }
%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32 }
%struct.snd_usb_midi_endpoint_info = type { i32, i8*, i32, i8* }
%struct.usb_interface_descriptor = type { i32 }
%struct.usb_endpoint_descriptor = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_midi*, %struct.snd_usb_midi_endpoint_info*, i32)* @snd_usbmidi_detect_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usbmidi_detect_endpoints(%struct.snd_usb_midi* %0, %struct.snd_usb_midi_endpoint_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usb_midi*, align 8
  %6 = alloca %struct.snd_usb_midi_endpoint_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_interface*, align 8
  %9 = alloca %struct.usb_host_interface*, align 8
  %10 = alloca %struct.usb_interface_descriptor*, align 8
  %11 = alloca %struct.usb_endpoint_descriptor*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_usb_midi* %0, %struct.snd_usb_midi** %5, align 8
  store %struct.snd_usb_midi_endpoint_info* %1, %struct.snd_usb_midi_endpoint_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %16 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @USB_ID_VENDOR(i32 %17)
  %19 = icmp eq i32 %18, 1410
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %22 = call i32 @snd_usbmidi_switch_roland_altsetting(%struct.snd_usb_midi* %21)
  br label %23

23:                                               ; preds = %20, %3
  %24 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %6, align 8
  %25 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %24, i64 0
  %26 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %25, i32 0, i32 3
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %6, align 8
  %31 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %30, i64 0
  %32 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %23
  store i32 0, i32* %4, align 4
  br label %152

36:                                               ; preds = %29
  %37 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %38 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %37, i32 0, i32 0
  %39 = load %struct.usb_interface*, %struct.usb_interface** %38, align 8
  store %struct.usb_interface* %39, %struct.usb_interface** %8, align 8
  %40 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %41 = icmp ne %struct.usb_interface* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %44 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %36
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %152

50:                                               ; preds = %42
  %51 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %52 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %51, i32 0, i32 1
  %53 = load %struct.usb_host_interface*, %struct.usb_host_interface** %52, align 8
  store %struct.usb_host_interface* %53, %struct.usb_host_interface** %9, align 8
  %54 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %55 = call %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface* %54)
  store %struct.usb_interface_descriptor* %55, %struct.usb_interface_descriptor** %10, align 8
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %137, %50
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %10, align 8
  %59 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %140

62:                                               ; preds = %56
  %63 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call %struct.usb_endpoint_descriptor* @get_endpoint(%struct.usb_host_interface* %63, i32 %64)
  store %struct.usb_endpoint_descriptor* %65, %struct.usb_endpoint_descriptor** %11, align 8
  %66 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %67 = call i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %62
  %70 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %71 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  br label %137

74:                                               ; preds = %69, %62
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %105

78:                                               ; preds = %74
  %79 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %80 = call i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %78
  %83 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %84 = call i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor* %83)
  %85 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %6, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %85, i64 %87
  %89 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %88, i32 0, i32 3
  store i8* %84, i8** %89, align 8
  %90 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %91 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %82
  %94 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %95 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %6, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %97, i64 %99
  %101 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %100, i32 0, i32 2
  store i32 %96, i32* %101, align 8
  br label %102

102:                                              ; preds = %93, %82
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %102, %78, %74
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %136

109:                                              ; preds = %105
  %110 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %111 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %136

113:                                              ; preds = %109
  %114 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %115 = call i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor* %114)
  %116 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %6, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %116, i64 %118
  %120 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %119, i32 0, i32 1
  store i8* %115, i8** %120, align 8
  %121 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %122 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %113
  %125 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %126 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %6, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %128, i64 %130
  %132 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %131, i32 0, i32 0
  store i32 %127, i32* %132, align 8
  br label %133

133:                                              ; preds = %124, %113
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %133, %109, %105
  br label %137

137:                                              ; preds = %136, %73
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %12, align 4
  br label %56

140:                                              ; preds = %56
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143, %140
  br label %150

147:                                              ; preds = %143
  %148 = load i32, i32* @ENOENT, align 4
  %149 = sub nsw i32 0, %148
  br label %150

150:                                              ; preds = %147, %146
  %151 = phi i32 [ 0, %146 ], [ %149, %147 ]
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %150, %47, %35
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @USB_ID_VENDOR(i32) #1

declare dso_local i32 @snd_usbmidi_switch_roland_altsetting(%struct.snd_usb_midi*) #1

declare dso_local %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local %struct.usb_endpoint_descriptor* @get_endpoint(%struct.usb_host_interface*, i32) #1

declare dso_local i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
