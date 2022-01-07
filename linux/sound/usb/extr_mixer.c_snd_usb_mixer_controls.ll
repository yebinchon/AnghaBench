; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_snd_usb_mixer_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_snd_usb_mixer_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbmix_ctl_map = type { i64, i32, i32, i32 }
%struct.usb_mixer_interface = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.mixer_build = type { %struct.TYPE_6__, %struct.usb_mixer_interface*, i32, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i32 }
%struct.uac1_output_terminal_descriptor = type { i32, i8*, i32, i32 }
%struct.uac2_output_terminal_descriptor = type { i32, i32, i32, i8*, i32, i32 }
%struct.uac3_output_terminal_descriptor = type { i32, i32, i32, i32, i32, i32 }

@usbmix_ctl_maps = common dso_local global %struct.usbmix_ctl_map* null, align 8
@UAC_OUTPUT_TERMINAL = common dso_local global i32 0, align 4
@UAC_VERSION_1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UAC_VERSION_2 = common dso_local global i32 0, align 4
@UAC2_TE_CONNECTOR = common dso_local global i32 0, align 4
@UAC3_TE_INSERTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*)* @snd_usb_mixer_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_mixer_controls(%struct.usb_mixer_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_mixer_interface*, align 8
  %4 = alloca %struct.mixer_build, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbmix_ctl_map*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.uac1_output_terminal_descriptor*, align 8
  %9 = alloca %struct.uac2_output_terminal_descriptor*, align 8
  %10 = alloca %struct.uac3_output_terminal_descriptor*, align 8
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %3, align 8
  %11 = call i32 @memset(%struct.mixer_build* %4, i32 0, i32 64)
  %12 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %13 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 5
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %15, align 8
  %16 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %17 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 1
  store %struct.usb_mixer_interface* %16, %struct.usb_mixer_interface** %17, align 8
  %18 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %19 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 7
  store i32 %22, i32* %23, align 4
  %24 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %25 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 6
  store i32 %28, i32* %29, align 8
  %30 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** @usbmix_ctl_maps, align 8
  store %struct.usbmix_ctl_map* %30, %struct.usbmix_ctl_map** %6, align 8
  br label %31

31:                                               ; preds = %60, %1
  %32 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %6, align 8
  %33 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %31
  %37 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %6, align 8
  %38 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 5
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %39, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %36
  %46 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %6, align 8
  %47 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 4
  store i32 %48, i32* %49, align 8
  %50 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %6, align 8
  %51 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  %54 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %6, align 8
  %55 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %58 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  br label %63

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %6, align 8
  %62 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %61, i32 1
  store %struct.usbmix_ctl_map* %62, %struct.usbmix_ctl_map** %6, align 8
  br label %31

63:                                               ; preds = %45, %31
  store i8* null, i8** %7, align 8
  br label %64

64:                                               ; preds = %272, %86, %63
  %65 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %66 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %71 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* @UAC_OUTPUT_TERMINAL, align 4
  %77 = call i8* @snd_usb_find_csint_desc(i32 %69, i32 %74, i8* %75, i32 %76)
  store i8* %77, i8** %7, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %273

79:                                               ; preds = %64
  %80 = load i8*, i8** %7, align 8
  %81 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %82 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @snd_usb_validate_audio_desc(i8* %80, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  br label %64

87:                                               ; preds = %79
  %88 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %89 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @UAC_VERSION_1, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %132

93:                                               ; preds = %87
  %94 = load i8*, i8** %7, align 8
  %95 = bitcast i8* %94 to %struct.uac1_output_terminal_descriptor*
  store %struct.uac1_output_terminal_descriptor* %95, %struct.uac1_output_terminal_descriptor** %8, align 8
  %96 = load %struct.uac1_output_terminal_descriptor*, %struct.uac1_output_terminal_descriptor** %8, align 8
  %97 = getelementptr inbounds %struct.uac1_output_terminal_descriptor, %struct.uac1_output_terminal_descriptor* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @set_bit(i32 %98, i32 %100)
  %102 = load %struct.uac1_output_terminal_descriptor*, %struct.uac1_output_terminal_descriptor** %8, align 8
  %103 = getelementptr inbounds %struct.uac1_output_terminal_descriptor, %struct.uac1_output_terminal_descriptor* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.uac1_output_terminal_descriptor*, %struct.uac1_output_terminal_descriptor** %8, align 8
  %108 = getelementptr inbounds %struct.uac1_output_terminal_descriptor, %struct.uac1_output_terminal_descriptor* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @le16_to_cpu(i32 %109)
  %111 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load %struct.uac1_output_terminal_descriptor*, %struct.uac1_output_terminal_descriptor** %8, align 8
  %114 = getelementptr inbounds %struct.uac1_output_terminal_descriptor, %struct.uac1_output_terminal_descriptor* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  %118 = load %struct.uac1_output_terminal_descriptor*, %struct.uac1_output_terminal_descriptor** %8, align 8
  %119 = getelementptr inbounds %struct.uac1_output_terminal_descriptor, %struct.uac1_output_terminal_descriptor* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @parse_audio_unit(%struct.mixer_build* %4, i32 %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %93
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp ne i32 %125, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* %5, align 4
  store i32 %130, i32* %2, align 4
  br label %274

131:                                              ; preds = %124, %93
  br label %272

132:                                              ; preds = %87
  %133 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %134 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @UAC_VERSION_2, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %204

138:                                              ; preds = %132
  %139 = load i8*, i8** %7, align 8
  %140 = bitcast i8* %139 to %struct.uac2_output_terminal_descriptor*
  store %struct.uac2_output_terminal_descriptor* %140, %struct.uac2_output_terminal_descriptor** %9, align 8
  %141 = load %struct.uac2_output_terminal_descriptor*, %struct.uac2_output_terminal_descriptor** %9, align 8
  %142 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, %struct.uac2_output_terminal_descriptor* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @set_bit(i32 %143, i32 %145)
  %147 = load %struct.uac2_output_terminal_descriptor*, %struct.uac2_output_terminal_descriptor** %9, align 8
  %148 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, %struct.uac2_output_terminal_descriptor* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load %struct.uac2_output_terminal_descriptor*, %struct.uac2_output_terminal_descriptor** %9, align 8
  %153 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, %struct.uac2_output_terminal_descriptor* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i8* @le16_to_cpu(i32 %154)
  %156 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  %158 = load %struct.uac2_output_terminal_descriptor*, %struct.uac2_output_terminal_descriptor** %9, align 8
  %159 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, %struct.uac2_output_terminal_descriptor* %158, i32 0, i32 3
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  %163 = load %struct.uac2_output_terminal_descriptor*, %struct.uac2_output_terminal_descriptor** %9, align 8
  %164 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, %struct.uac2_output_terminal_descriptor* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @parse_audio_unit(%struct.mixer_build* %4, i32 %165)
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* %5, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %138
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  %173 = icmp ne i32 %170, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = load i32, i32* %5, align 4
  store i32 %175, i32* %2, align 4
  br label %274

176:                                              ; preds = %169, %138
  %177 = load %struct.uac2_output_terminal_descriptor*, %struct.uac2_output_terminal_descriptor** %9, align 8
  %178 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, %struct.uac2_output_terminal_descriptor* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @parse_audio_unit(%struct.mixer_build* %4, i32 %179)
  store i32 %180, i32* %5, align 4
  %181 = load i32, i32* %5, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %176
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  %187 = icmp ne i32 %184, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = load i32, i32* %5, align 4
  store i32 %189, i32* %2, align 4
  br label %274

190:                                              ; preds = %183, %176
  %191 = load %struct.uac2_output_terminal_descriptor*, %struct.uac2_output_terminal_descriptor** %9, align 8
  %192 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, %struct.uac2_output_terminal_descriptor* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i8* @le16_to_cpu(i32 %193)
  %195 = load i32, i32* @UAC2_TE_CONNECTOR, align 4
  %196 = call i64 @uac_v2v3_control_is_readable(i8* %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %190
  %199 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 1
  %200 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %199, align 8
  %201 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 0
  %202 = call i32 @build_connector_control(%struct.usb_mixer_interface* %200, %struct.TYPE_6__* %201, i32 0)
  br label %203

203:                                              ; preds = %198, %190
  br label %271

204:                                              ; preds = %132
  %205 = load i8*, i8** %7, align 8
  %206 = bitcast i8* %205 to %struct.uac3_output_terminal_descriptor*
  store %struct.uac3_output_terminal_descriptor* %206, %struct.uac3_output_terminal_descriptor** %10, align 8
  %207 = load %struct.uac3_output_terminal_descriptor*, %struct.uac3_output_terminal_descriptor** %10, align 8
  %208 = getelementptr inbounds %struct.uac3_output_terminal_descriptor, %struct.uac3_output_terminal_descriptor* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @set_bit(i32 %209, i32 %211)
  %213 = load %struct.uac3_output_terminal_descriptor*, %struct.uac3_output_terminal_descriptor** %10, align 8
  %214 = getelementptr inbounds %struct.uac3_output_terminal_descriptor, %struct.uac3_output_terminal_descriptor* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  %218 = load %struct.uac3_output_terminal_descriptor*, %struct.uac3_output_terminal_descriptor** %10, align 8
  %219 = getelementptr inbounds %struct.uac3_output_terminal_descriptor, %struct.uac3_output_terminal_descriptor* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = call i8* @le16_to_cpu(i32 %220)
  %222 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  store i8* %221, i8** %223, align 8
  %224 = load %struct.uac3_output_terminal_descriptor*, %struct.uac3_output_terminal_descriptor** %10, align 8
  %225 = getelementptr inbounds %struct.uac3_output_terminal_descriptor, %struct.uac3_output_terminal_descriptor* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = call i8* @le16_to_cpu(i32 %226)
  %228 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  store i8* %227, i8** %229, align 8
  %230 = load %struct.uac3_output_terminal_descriptor*, %struct.uac3_output_terminal_descriptor** %10, align 8
  %231 = getelementptr inbounds %struct.uac3_output_terminal_descriptor, %struct.uac3_output_terminal_descriptor* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @parse_audio_unit(%struct.mixer_build* %4, i32 %232)
  store i32 %233, i32* %5, align 4
  %234 = load i32, i32* %5, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %204
  %237 = load i32, i32* %5, align 4
  %238 = load i32, i32* @EINVAL, align 4
  %239 = sub nsw i32 0, %238
  %240 = icmp ne i32 %237, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %236
  %242 = load i32, i32* %5, align 4
  store i32 %242, i32* %2, align 4
  br label %274

243:                                              ; preds = %236, %204
  %244 = load %struct.uac3_output_terminal_descriptor*, %struct.uac3_output_terminal_descriptor** %10, align 8
  %245 = getelementptr inbounds %struct.uac3_output_terminal_descriptor, %struct.uac3_output_terminal_descriptor* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @parse_audio_unit(%struct.mixer_build* %4, i32 %246)
  store i32 %247, i32* %5, align 4
  %248 = load i32, i32* %5, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %243
  %251 = load i32, i32* %5, align 4
  %252 = load i32, i32* @EINVAL, align 4
  %253 = sub nsw i32 0, %252
  %254 = icmp ne i32 %251, %253
  br i1 %254, label %255, label %257

255:                                              ; preds = %250
  %256 = load i32, i32* %5, align 4
  store i32 %256, i32* %2, align 4
  br label %274

257:                                              ; preds = %250, %243
  %258 = load %struct.uac3_output_terminal_descriptor*, %struct.uac3_output_terminal_descriptor** %10, align 8
  %259 = getelementptr inbounds %struct.uac3_output_terminal_descriptor, %struct.uac3_output_terminal_descriptor* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i8* @le32_to_cpu(i32 %260)
  %262 = load i32, i32* @UAC3_TE_INSERTION, align 4
  %263 = call i64 @uac_v2v3_control_is_readable(i8* %261, i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %257
  %266 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 1
  %267 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %266, align 8
  %268 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 0
  %269 = call i32 @build_connector_control(%struct.usb_mixer_interface* %267, %struct.TYPE_6__* %268, i32 0)
  br label %270

270:                                              ; preds = %265, %257
  br label %271

271:                                              ; preds = %270, %203
  br label %272

272:                                              ; preds = %271, %131
  br label %64

273:                                              ; preds = %64
  store i32 0, i32* %2, align 4
  br label %274

274:                                              ; preds = %273, %255, %241, %188, %174, %129
  %275 = load i32, i32* %2, align 4
  ret i32 %275
}

declare dso_local i32 @memset(%struct.mixer_build*, i32, i32) #1

declare dso_local i8* @snd_usb_find_csint_desc(i32, i32, i8*, i32) #1

declare dso_local i32 @snd_usb_validate_audio_desc(i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @parse_audio_unit(%struct.mixer_build*, i32) #1

declare dso_local i64 @uac_v2v3_control_is_readable(i8*, i32) #1

declare dso_local i32 @build_connector_control(%struct.usb_mixer_interface*, %struct.TYPE_6__*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
