; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_clock.c_set_sample_rate_v2v3.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_clock.c_set_sample_rate_v2v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.usb_host_interface = type { i32 }
%struct.audioformat = type { i64, i32, i32 }
%struct.uac3_clock_source_descriptor = type { i32 }
%struct.uac_clock_source_descriptor = type { i32 }

@UAC_VERSION_3 = common dso_local global i64 0, align 8
@UAC2_CS_CONTROL_SAM_FREQ = common dso_local global i32 0, align 4
@UAC2_CS_CUR = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%d:%d: cannot set freq %d (v2/v3): err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"%d:%d: freq mismatch (RO clock): req %d, clock runs @%d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"current rate %d is different from the runtime rate %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, i32, %struct.usb_host_interface*, %struct.audioformat*, i32)* @set_sample_rate_v2v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sample_rate_v2v3(%struct.snd_usb_audio* %0, i32 %1, %struct.usb_host_interface* %2, %struct.audioformat* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_usb_audio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_host_interface*, align 8
  %10 = alloca %struct.audioformat*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.uac3_clock_source_descriptor*, align 8
  %21 = alloca %struct.uac_clock_source_descriptor*, align 8
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.usb_host_interface* %2, %struct.usb_host_interface** %9, align 8
  store %struct.audioformat* %3, %struct.audioformat** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %23 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %22, i32 0, i32 1
  %24 = load %struct.usb_device*, %struct.usb_device** %23, align 8
  store %struct.usb_device* %24, %struct.usb_device** %12, align 8
  %25 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %26 = load %struct.audioformat*, %struct.audioformat** %10, align 8
  %27 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.audioformat*, %struct.audioformat** %10, align 8
  %30 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snd_usb_clock_find_source(%struct.snd_usb_audio* %25, i64 %28, i32 %31, i32 1)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %5
  %36 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %37 = load %struct.audioformat*, %struct.audioformat** %10, align 8
  %38 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.audioformat*, %struct.audioformat** %10, align 8
  %41 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @snd_usb_clock_find_source(%struct.snd_usb_audio* %36, i64 %39, i32 %42, i32 0)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %17, align 4
  store i32 %47, i32* %6, align 4
  br label %188

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %5
  %50 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.audioformat*, %struct.audioformat** %10, align 8
  %53 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %17, align 4
  %56 = call i32 @get_sample_rate_v2v3(%struct.snd_usb_audio* %50, i32 %51, i32 %54, i32 %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %176

61:                                               ; preds = %49
  %62 = load %struct.audioformat*, %struct.audioformat** %10, align 8
  %63 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @UAC_VERSION_3, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %69 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %17, align 4
  %72 = call %struct.uac3_clock_source_descriptor* @snd_usb_find_clock_source_v3(i32 %70, i32 %71)
  store %struct.uac3_clock_source_descriptor* %72, %struct.uac3_clock_source_descriptor** %20, align 8
  %73 = load %struct.uac3_clock_source_descriptor*, %struct.uac3_clock_source_descriptor** %20, align 8
  %74 = getelementptr inbounds %struct.uac3_clock_source_descriptor, %struct.uac3_clock_source_descriptor* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le32_to_cpu(i32 %75)
  store i32 %76, i32* %19, align 4
  br label %86

77:                                               ; preds = %61
  %78 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %79 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %17, align 4
  %82 = call %struct.uac_clock_source_descriptor* @snd_usb_find_clock_source(i32 %80, i32 %81)
  store %struct.uac_clock_source_descriptor* %82, %struct.uac_clock_source_descriptor** %21, align 8
  %83 = load %struct.uac_clock_source_descriptor*, %struct.uac_clock_source_descriptor** %21, align 8
  %84 = getelementptr inbounds %struct.uac_clock_source_descriptor, %struct.uac_clock_source_descriptor* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %19, align 4
  br label %86

86:                                               ; preds = %77, %67
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* @UAC2_CS_CONTROL_SAM_FREQ, align 4
  %89 = call i32 @uac_v2v3_control_is_writeable(i32 %87, i32 %88)
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %132

92:                                               ; preds = %86
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @cpu_to_le32(i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %96 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %97 = call i32 @usb_sndctrlpipe(%struct.usb_device* %96, i32 0)
  %98 = load i32, i32* @UAC2_CS_CUR, align 4
  %99 = load i32, i32* @USB_TYPE_CLASS, align 4
  %100 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @USB_DIR_OUT, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @UAC2_CS_CONTROL_SAM_FREQ, align 4
  %105 = shl i32 %104, 8
  %106 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %107 = call i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio* %106)
  %108 = load i32, i32* %17, align 4
  %109 = shl i32 %108, 8
  %110 = or i32 %107, %109
  %111 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %95, i32 %97, i32 %98, i32 %103, i32 %105, i32 %110, i32* %13, i32 4)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %92
  %115 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.audioformat*, %struct.audioformat** %10, align 8
  %118 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @usb_audio_err(%struct.snd_usb_audio* %115, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %6, align 4
  br label %188

124:                                              ; preds = %92
  %125 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.audioformat*, %struct.audioformat** %10, align 8
  %128 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %17, align 4
  %131 = call i32 @get_sample_rate_v2v3(%struct.snd_usb_audio* %125, i32 %126, i32 %129, i32 %130)
  store i32 %131, i32* %15, align 4
  br label %134

132:                                              ; preds = %86
  %133 = load i32, i32* %16, align 4
  store i32 %133, i32* %15, align 4
  br label %134

134:                                              ; preds = %132, %124
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %157

138:                                              ; preds = %134
  %139 = load i32, i32* %18, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %152, label %141

141:                                              ; preds = %138
  %142 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.audioformat*, %struct.audioformat** %10, align 8
  %145 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @usb_audio_warn(%struct.snd_usb_audio* %142, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* @ENXIO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %6, align 4
  br label %188

152:                                              ; preds = %138
  %153 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @usb_audio_dbg(%struct.snd_usb_audio* %153, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %152, %134
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %16, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %175

161:                                              ; preds = %157
  %162 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @usb_set_interface(%struct.usb_device* %162, i32 %163, i32 0)
  %165 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %166 = call i32 @snd_usb_set_interface_quirk(%struct.usb_device* %165)
  %167 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.audioformat*, %struct.audioformat** %10, align 8
  %170 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @usb_set_interface(%struct.usb_device* %167, i32 %168, i32 %171)
  %173 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %174 = call i32 @snd_usb_set_interface_quirk(%struct.usb_device* %173)
  br label %175

175:                                              ; preds = %161, %157
  br label %176

176:                                              ; preds = %175, %60
  %177 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %7, align 8
  %178 = load %struct.audioformat*, %struct.audioformat** %10, align 8
  %179 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* %17, align 4
  %182 = call i32 @uac_clock_source_is_valid(%struct.snd_usb_audio* %177, i64 %180, i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %176
  %185 = load i32, i32* @ENXIO, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %6, align 4
  br label %188

187:                                              ; preds = %176
  store i32 0, i32* %6, align 4
  br label %188

188:                                              ; preds = %187, %184, %141, %114, %46
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

declare dso_local i32 @snd_usb_clock_find_source(%struct.snd_usb_audio*, i64, i32, i32) #1

declare dso_local i32 @get_sample_rate_v2v3(%struct.snd_usb_audio*, i32, i32, i32) #1

declare dso_local %struct.uac3_clock_source_descriptor* @snd_usb_find_clock_source_v3(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.uac_clock_source_descriptor* @snd_usb_find_clock_source(i32, i32) #1

declare dso_local i32 @uac_v2v3_control_is_writeable(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @snd_usb_ctl_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio*) #1

declare dso_local i32 @usb_audio_err(%struct.snd_usb_audio*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @usb_audio_warn(%struct.snd_usb_audio*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @usb_audio_dbg(%struct.snd_usb_audio*, i8*, i32, i32) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @snd_usb_set_interface_quirk(%struct.usb_device*) #1

declare dso_local i32 @uac_clock_source_is_valid(%struct.snd_usb_audio*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
