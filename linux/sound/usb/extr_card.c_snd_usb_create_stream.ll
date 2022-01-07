; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_card.c_snd_usb_create_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_card.c_snd_usb_create_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32, i32, i32, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.usb_host_interface = type { i32 }
%struct.usb_interface_descriptor = type { i64, i64 }
%struct.usb_interface = type { %struct.usb_host_interface* }

@.str = private unnamed_addr constant [24 x i8] c"%u:%d : does not exist\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@USB_CLASS_VENDOR_SPEC = common dso_local global i64 0, align 8
@USB_SUBCLASS_VENDOR_SPEC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"%d:%d: skipping, already claimed\0A\00", align 1
@USB_CLASS_AUDIO = common dso_local global i64 0, align 8
@USB_SUBCLASS_MIDISTREAMING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"%u:%d: cannot create sequencer device\0A\00", align 1
@usb_audio_driver = common dso_local global i32 0, align 4
@USB_SUBCLASS_AUDIOSTREAMING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"%u:%d: skipping non-supported interface %d\0A\00", align 1
@USB_SPEED_LOW = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"low speed audio streaming not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, i32, i32)* @snd_usb_create_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_create_stream(%struct.snd_usb_audio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usb_audio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.usb_host_interface*, align 8
  %10 = alloca %struct.usb_interface_descriptor*, align 8
  %11 = alloca %struct.usb_interface*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %14 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %13, i32 0, i32 3
  %15 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  store %struct.usb_device* %15, %struct.usb_device** %8, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %16, i32 %17)
  store %struct.usb_interface* %18, %struct.usb_interface** %11, align 8
  %19 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %20 = icmp ne %struct.usb_interface* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %3
  %22 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i32*, i8*, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %184

29:                                               ; preds = %3
  %30 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %31 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %30, i32 0, i32 0
  %32 = load %struct.usb_host_interface*, %struct.usb_host_interface** %31, align 8
  %33 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %32, i64 0
  store %struct.usb_host_interface* %33, %struct.usb_host_interface** %9, align 8
  %34 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %35 = call %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface* %34)
  store %struct.usb_interface_descriptor* %35, %struct.usb_interface_descriptor** %10, align 8
  %36 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %37 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @USB_ID(i32 6353, i32 11524)
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %29
  %42 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %43 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @USB_ID(i32 6353, i32 11525)
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %41, %29
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %47
  %51 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %10, align 8
  %52 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %50
  %57 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %10, align 8
  %58 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @USB_SUBCLASS_VENDOR_SPEC, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  store i32 2, i32* %7, align 4
  %63 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %63, i32 %64)
  store %struct.usb_interface* %65, %struct.usb_interface** %11, align 8
  %66 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %67 = icmp ne %struct.usb_interface* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %184

71:                                               ; preds = %62
  %72 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %73 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %72, i32 0, i32 0
  %74 = load %struct.usb_host_interface*, %struct.usb_host_interface** %73, align 8
  %75 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %74, i64 0
  store %struct.usb_host_interface* %75, %struct.usb_host_interface** %9, align 8
  %76 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %77 = call %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface* %76)
  store %struct.usb_interface_descriptor* %77, %struct.usb_interface_descriptor** %10, align 8
  br label %78

78:                                               ; preds = %71, %56, %50, %47, %41
  %79 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %80 = call i64 @usb_interface_claimed(%struct.usb_interface* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %84 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %83, i32 0, i32 0
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %184

90:                                               ; preds = %78
  %91 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %10, align 8
  %92 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @USB_CLASS_AUDIO, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %10, align 8
  %98 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %132

102:                                              ; preds = %96, %90
  %103 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %10, align 8
  %104 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @USB_SUBCLASS_MIDISTREAMING, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %132

108:                                              ; preds = %102
  %109 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %110 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %113 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %114 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %113, i32 0, i32 1
  %115 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %116 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @__snd_usbmidi_create(i32 %111, %struct.usb_interface* %112, i32* %114, i32* null, i32 %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %108
  %122 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %123 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %122, i32 0, i32 0
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 (i32*, i8*, ...) @dev_err(i32* %123, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %184

129:                                              ; preds = %108
  %130 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %131 = call i32 @usb_driver_claim_interface(i32* @usb_audio_driver, %struct.usb_interface* %130, i8* inttoptr (i64 -1 to i8*))
  store i32 0, i32* %4, align 4
  br label %184

132:                                              ; preds = %102, %96
  %133 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %10, align 8
  %134 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @USB_CLASS_AUDIO, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %10, align 8
  %140 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %150, label %144

144:                                              ; preds = %138, %132
  %145 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %10, align 8
  %146 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @USB_SUBCLASS_AUDIOSTREAMING, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %161

150:                                              ; preds = %144, %138
  %151 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %152 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %151, i32 0, i32 0
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %10, align 8
  %156 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %152, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %153, i32 %154, i64 %157)
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %4, align 4
  br label %184

161:                                              ; preds = %144
  %162 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %163 = call i64 @snd_usb_get_speed(%struct.usb_device* %162)
  %164 = load i64, i64* @USB_SPEED_LOW, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %168 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %167, i32 0, i32 0
  %169 = call i32 (i32*, i8*, ...) @dev_err(i32* %168, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %4, align 4
  br label %184

172:                                              ; preds = %161
  %173 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @snd_usb_parse_audio_interface(%struct.snd_usb_audio* %173, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %172
  %178 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @usb_set_interface(%struct.usb_device* %178, i32 %179, i32 0)
  %181 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %182 = call i32 @usb_driver_claim_interface(i32* @usb_audio_driver, %struct.usb_interface* %181, i8* inttoptr (i64 -1 to i8*))
  br label %183

183:                                              ; preds = %177, %172
  store i32 0, i32* %4, align 4
  br label %184

184:                                              ; preds = %183, %166, %150, %129, %121, %82, %68, %21
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local i32 @USB_ID(i32, i32) #1

declare dso_local i64 @usb_interface_claimed(%struct.usb_interface*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @__snd_usbmidi_create(i32, %struct.usb_interface*, i32*, i32*, i32) #1

declare dso_local i32 @usb_driver_claim_interface(i32*, %struct.usb_interface*, i8*) #1

declare dso_local i64 @snd_usb_get_speed(%struct.usb_device*) #1

declare dso_local i32 @snd_usb_parse_audio_interface(%struct.snd_usb_audio*, i32) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
