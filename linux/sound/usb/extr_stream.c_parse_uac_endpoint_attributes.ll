; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_parse_uac_endpoint_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_parse_uac_endpoint_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32 }
%struct.usb_host_interface = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.uac_iso_endpoint_descriptor = type { i32, i64, i32 }
%struct.usb_interface_descriptor = type { i32, i32 }
%struct.uac2_iso_endpoint_descriptor = type { i32, i32 }
%struct.uac3_iso_endpoint_descriptor = type { i32, i32 }

@USB_DT_CS_ENDPOINT = common dso_local global i32 0, align 4
@UAC_EP_GENERAL = common dso_local global i64 0, align 8
@UAC_VERSION_1 = common dso_local global i32 0, align 4
@UAC_VERSION_2 = common dso_local global i32 0, align 4
@UAC_EP_CS_ATTR_FILL_MAX = common dso_local global i32 0, align 4
@UAC2_CONTROL_PITCH = common dso_local global i32 0, align 4
@UAC_EP_CS_ATTR_PITCH_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%u:%d : no or invalid class specific endpoint descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, %struct.usb_host_interface*, i32, i32)* @parse_uac_endpoint_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_uac_endpoint_attributes(%struct.snd_usb_audio* %0, %struct.usb_host_interface* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uac_iso_endpoint_descriptor*, align 8
  %11 = alloca %struct.usb_interface_descriptor*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.uac2_iso_endpoint_descriptor*, align 8
  %14 = alloca %struct.uac3_iso_endpoint_descriptor*, align 8
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %6, align 8
  store %struct.usb_host_interface* %1, %struct.usb_host_interface** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %16 = call %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface* %15)
  store %struct.usb_interface_descriptor* %16, %struct.usb_interface_descriptor** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %18 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %24 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @USB_DT_CS_ENDPOINT, align 4
  %30 = call %struct.uac_iso_endpoint_descriptor* @snd_usb_find_desc(i32 %22, i32 %28, i32* null, i32 %29)
  store %struct.uac_iso_endpoint_descriptor* %30, %struct.uac_iso_endpoint_descriptor** %10, align 8
  %31 = load %struct.uac_iso_endpoint_descriptor*, %struct.uac_iso_endpoint_descriptor** %10, align 8
  %32 = icmp ne %struct.uac_iso_endpoint_descriptor* %31, null
  br i1 %32, label %53, label %33

33:                                               ; preds = %4
  %34 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %11, align 8
  %35 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 2
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %40 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %46 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @USB_DT_CS_ENDPOINT, align 4
  %52 = call %struct.uac_iso_endpoint_descriptor* @snd_usb_find_desc(i32 %44, i32 %50, i32* null, i32 %51)
  store %struct.uac_iso_endpoint_descriptor* %52, %struct.uac_iso_endpoint_descriptor** %10, align 8
  br label %53

53:                                               ; preds = %38, %33, %4
  %54 = load %struct.uac_iso_endpoint_descriptor*, %struct.uac_iso_endpoint_descriptor** %10, align 8
  %55 = icmp ne %struct.uac_iso_endpoint_descriptor* %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %58 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %61 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @USB_DT_CS_ENDPOINT, align 4
  %64 = call %struct.uac_iso_endpoint_descriptor* @snd_usb_find_desc(i32 %59, i32 %62, i32* null, i32 %63)
  store %struct.uac_iso_endpoint_descriptor* %64, %struct.uac_iso_endpoint_descriptor** %10, align 8
  br label %65

65:                                               ; preds = %56, %53
  %66 = load %struct.uac_iso_endpoint_descriptor*, %struct.uac_iso_endpoint_descriptor** %10, align 8
  %67 = icmp ne %struct.uac_iso_endpoint_descriptor* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load %struct.uac_iso_endpoint_descriptor*, %struct.uac_iso_endpoint_descriptor** %10, align 8
  %70 = getelementptr inbounds %struct.uac_iso_endpoint_descriptor, %struct.uac_iso_endpoint_descriptor* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %71, 7
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load %struct.uac_iso_endpoint_descriptor*, %struct.uac_iso_endpoint_descriptor** %10, align 8
  %75 = getelementptr inbounds %struct.uac_iso_endpoint_descriptor, %struct.uac_iso_endpoint_descriptor* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @UAC_EP_GENERAL, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %68, %65
  br label %143

80:                                               ; preds = %73
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @UAC_VERSION_1, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.uac_iso_endpoint_descriptor*, %struct.uac_iso_endpoint_descriptor** %10, align 8
  %86 = getelementptr inbounds %struct.uac_iso_endpoint_descriptor, %struct.uac_iso_endpoint_descriptor* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %12, align 4
  br label %141

88:                                               ; preds = %80
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @UAC_VERSION_2, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %118

92:                                               ; preds = %88
  %93 = load %struct.uac_iso_endpoint_descriptor*, %struct.uac_iso_endpoint_descriptor** %10, align 8
  %94 = bitcast %struct.uac_iso_endpoint_descriptor* %93 to %struct.uac2_iso_endpoint_descriptor*
  store %struct.uac2_iso_endpoint_descriptor* %94, %struct.uac2_iso_endpoint_descriptor** %13, align 8
  %95 = load %struct.uac2_iso_endpoint_descriptor*, %struct.uac2_iso_endpoint_descriptor** %13, align 8
  %96 = getelementptr inbounds %struct.uac2_iso_endpoint_descriptor, %struct.uac2_iso_endpoint_descriptor* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp ult i64 %98, 8
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %143

101:                                              ; preds = %92
  %102 = load %struct.uac_iso_endpoint_descriptor*, %struct.uac_iso_endpoint_descriptor** %10, align 8
  %103 = getelementptr inbounds %struct.uac_iso_endpoint_descriptor, %struct.uac_iso_endpoint_descriptor* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @UAC_EP_CS_ATTR_FILL_MAX, align 4
  %106 = and i32 %104, %105
  store i32 %106, i32* %12, align 4
  %107 = load %struct.uac2_iso_endpoint_descriptor*, %struct.uac2_iso_endpoint_descriptor** %13, align 8
  %108 = getelementptr inbounds %struct.uac2_iso_endpoint_descriptor, %struct.uac2_iso_endpoint_descriptor* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @UAC2_CONTROL_PITCH, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %101
  %114 = load i32, i32* @UAC_EP_CS_ATTR_PITCH_CONTROL, align 4
  %115 = load i32, i32* %12, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %113, %101
  br label %140

118:                                              ; preds = %88
  %119 = load %struct.uac_iso_endpoint_descriptor*, %struct.uac_iso_endpoint_descriptor** %10, align 8
  %120 = bitcast %struct.uac_iso_endpoint_descriptor* %119 to %struct.uac3_iso_endpoint_descriptor*
  store %struct.uac3_iso_endpoint_descriptor* %120, %struct.uac3_iso_endpoint_descriptor** %14, align 8
  %121 = load %struct.uac3_iso_endpoint_descriptor*, %struct.uac3_iso_endpoint_descriptor** %14, align 8
  %122 = getelementptr inbounds %struct.uac3_iso_endpoint_descriptor, %struct.uac3_iso_endpoint_descriptor* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = icmp ult i64 %124, 8
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %143

127:                                              ; preds = %118
  %128 = load %struct.uac3_iso_endpoint_descriptor*, %struct.uac3_iso_endpoint_descriptor** %14, align 8
  %129 = getelementptr inbounds %struct.uac3_iso_endpoint_descriptor, %struct.uac3_iso_endpoint_descriptor* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @le32_to_cpu(i32 %130)
  %132 = load i32, i32* @UAC2_CONTROL_PITCH, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %127
  %136 = load i32, i32* @UAC_EP_CS_ATTR_PITCH_CONTROL, align 4
  %137 = load i32, i32* %12, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %135, %127
  br label %140

140:                                              ; preds = %139, %117
  br label %141

141:                                              ; preds = %140, %84
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* %5, align 4
  br label %150

143:                                              ; preds = %126, %100, %79
  %144 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %11, align 8
  %147 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @usb_audio_warn(%struct.snd_usb_audio* %144, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %145, i32 %148)
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %143, %141
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local %struct.uac_iso_endpoint_descriptor* @snd_usb_find_desc(i32, i32, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @usb_audio_warn(%struct.snd_usb_audio*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
