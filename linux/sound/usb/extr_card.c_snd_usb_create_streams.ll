; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_card.c_snd_usb_create_streams.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_card.c_snd_usb_create_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.usb_host_interface = type { i64, i64 }
%struct.usb_interface_descriptor = type { i32 }
%struct.uac1_ac_header_descriptor = type { i32, i32, i32* }
%struct.usb_interface_assoc_descriptor = type { i32, i32, i32, i32, i32 }
%struct.usb_interface = type { %struct.usb_interface_assoc_descriptor*, %struct.usb_host_interface* }

@.str = private unnamed_addr constant [47 x i8] c"unknown interface protocol %#02x, assuming v1\0A\00", align 1
@UAC_HEADER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot find UAC_HEADER\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"invalid control header\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"too short v1 buffer descriptor\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"skipping empty audio interface (v1)\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"invalid buffer length (v1)\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"invalid UAC_HEADER (v1)\0A\00", align 1
@USB_CLASS_AUDIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [60 x i8] c"Audio class v2/v3 interfaces need an interface association\0A\00", align 1
@UAC3_FUNCTION_SUBCLASS_FULL_ADC_3_0 = common dso_local global i32 0, align 4
@UAC3_FUNCTION_SUBCLASS_GENERIC_IO = common dso_local global i32 0, align 4
@UAC3_FUNCTION_SUBCLASS_SPEAKERPHONE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"Unsupported UAC3 BADD profile\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, i32)* @snd_usb_create_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_create_streams(%struct.snd_usb_audio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_usb_audio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_interface_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.uac1_ac_header_descriptor*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_interface_assoc_descriptor*, align 8
  %14 = alloca %struct.usb_interface*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %18 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %17, i32 0, i32 1
  %19 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  store %struct.usb_device* %19, %struct.usb_device** %6, align 8
  %20 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %20, i32 %21)
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 1
  %24 = load %struct.usb_host_interface*, %struct.usb_host_interface** %23, align 8
  %25 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %24, i64 0
  store %struct.usb_host_interface* %25, %struct.usb_host_interface** %7, align 8
  %26 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %27 = call %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface* %26)
  store %struct.usb_interface_descriptor* %27, %struct.usb_interface_descriptor** %8, align 8
  %28 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %29 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  switch i32 %31, label %32 [
    i32 130, label %37
    i32 129, label %155
    i32 128, label %155
  ]

32:                                               ; preds = %2
  %33 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 0
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @dev_warn(i32* %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %2, %32
  %38 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %39 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %42 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @UAC_HEADER, align 4
  %45 = call %struct.uac1_ac_header_descriptor* @snd_usb_find_csint_desc(i64 %40, i64 %43, i32* null, i32 %44)
  store %struct.uac1_ac_header_descriptor* %45, %struct.uac1_ac_header_descriptor** %11, align 8
  %46 = load %struct.uac1_ac_header_descriptor*, %struct.uac1_ac_header_descriptor** %11, align 8
  %47 = icmp ne %struct.uac1_ac_header_descriptor* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load %struct.uac1_ac_header_descriptor*, %struct.uac1_ac_header_descriptor** %11, align 8
  %50 = getelementptr inbounds %struct.uac1_ac_header_descriptor, %struct.uac1_ac_header_descriptor* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %52, 16
  br i1 %53, label %54, label %60

54:                                               ; preds = %48, %37
  %55 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %56 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %259

60:                                               ; preds = %48
  %61 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %62 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %65 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.uac1_ac_header_descriptor*, %struct.uac1_ac_header_descriptor** %11, align 8
  %70 = bitcast %struct.uac1_ac_header_descriptor* %69 to i8*
  %71 = ptrtoint i8* %68 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %60
  %78 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %79 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %78, i32 0, i32 0
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %259

83:                                               ; preds = %60
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ult i64 %85, 16
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %89 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %88, i32 0, i32 0
  %90 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %259

93:                                               ; preds = %83
  %94 = load %struct.uac1_ac_header_descriptor*, %struct.uac1_ac_header_descriptor** %11, align 8
  %95 = getelementptr inbounds %struct.uac1_ac_header_descriptor, %struct.uac1_ac_header_descriptor* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %100 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %99, i32 0, i32 0
  %101 = call i32 @dev_info(i32* %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %259

104:                                              ; preds = %93
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.uac1_ac_header_descriptor*, %struct.uac1_ac_header_descriptor** %11, align 8
  %107 = getelementptr inbounds %struct.uac1_ac_header_descriptor, %struct.uac1_ac_header_descriptor* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %112 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %111, i32 0, i32 0
  %113 = call i32 @dev_err(i32* %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %259

116:                                              ; preds = %104
  %117 = load %struct.uac1_ac_header_descriptor*, %struct.uac1_ac_header_descriptor** %11, align 8
  %118 = getelementptr inbounds %struct.uac1_ac_header_descriptor, %struct.uac1_ac_header_descriptor* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = load %struct.uac1_ac_header_descriptor*, %struct.uac1_ac_header_descriptor** %11, align 8
  %122 = getelementptr inbounds %struct.uac1_ac_header_descriptor, %struct.uac1_ac_header_descriptor* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 16, %124
  %126 = icmp ult i64 %120, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %116
  %128 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %129 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %128, i32 0, i32 0
  %130 = call i32 @dev_err(i32* %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %259

133:                                              ; preds = %116
  store i32 0, i32* %9, align 4
  br label %134

134:                                              ; preds = %151, %133
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.uac1_ac_header_descriptor*, %struct.uac1_ac_header_descriptor** %11, align 8
  %137 = getelementptr inbounds %struct.uac1_ac_header_descriptor, %struct.uac1_ac_header_descriptor* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %154

140:                                              ; preds = %134
  %141 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.uac1_ac_header_descriptor*, %struct.uac1_ac_header_descriptor** %11, align 8
  %144 = getelementptr inbounds %struct.uac1_ac_header_descriptor, %struct.uac1_ac_header_descriptor* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @snd_usb_create_stream(%struct.snd_usb_audio* %141, i32 %142, i32 %149)
  br label %151

151:                                              ; preds = %140
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %134

154:                                              ; preds = %134
  br label %258

155:                                              ; preds = %2, %2
  %156 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %157 = load i32, i32* %5, align 4
  %158 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %156, i32 %157)
  %159 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %158, i32 0, i32 0
  %160 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %159, align 8
  store %struct.usb_interface_assoc_descriptor* %160, %struct.usb_interface_assoc_descriptor** %13, align 8
  %161 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %13, align 8
  %162 = icmp ne %struct.usb_interface_assoc_descriptor* %161, null
  br i1 %162, label %195, label %163

163:                                              ; preds = %155
  %164 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, 1
  %167 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %164, i32 %166)
  store %struct.usb_interface* %167, %struct.usb_interface** %14, align 8
  %168 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  %169 = icmp ne %struct.usb_interface* %168, null
  br i1 %169, label %170, label %194

170:                                              ; preds = %163
  %171 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  %172 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %171, i32 0, i32 0
  %173 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %172, align 8
  %174 = icmp ne %struct.usb_interface_assoc_descriptor* %173, null
  br i1 %174, label %175, label %194

175:                                              ; preds = %170
  %176 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  %177 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %176, i32 0, i32 0
  %178 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %177, align 8
  %179 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @USB_CLASS_AUDIO, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %175
  %184 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  %185 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %184, i32 0, i32 0
  %186 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %185, align 8
  %187 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 129
  br i1 %189, label %190, label %194

190:                                              ; preds = %183
  %191 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  %192 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %191, i32 0, i32 0
  %193 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %192, align 8
  store %struct.usb_interface_assoc_descriptor* %193, %struct.usb_interface_assoc_descriptor** %13, align 8
  br label %194

194:                                              ; preds = %190, %183, %175, %170, %163
  br label %195

195:                                              ; preds = %194, %155
  %196 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %13, align 8
  %197 = icmp ne %struct.usb_interface_assoc_descriptor* %196, null
  br i1 %197, label %204, label %198

198:                                              ; preds = %195
  %199 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %200 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %199, i32 0, i32 0
  %201 = call i32 @dev_err(i32* %200, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %3, align 4
  br label %259

204:                                              ; preds = %195
  %205 = load i32, i32* %10, align 4
  %206 = icmp eq i32 %205, 128
  br i1 %206, label %207, label %232

207:                                              ; preds = %204
  %208 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %13, align 8
  %209 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %15, align 4
  %211 = load i32, i32* %15, align 4
  %212 = load i32, i32* @UAC3_FUNCTION_SUBCLASS_FULL_ADC_3_0, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %228

214:                                              ; preds = %207
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* @UAC3_FUNCTION_SUBCLASS_GENERIC_IO, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %222, label %218

218:                                              ; preds = %214
  %219 = load i32, i32* %15, align 4
  %220 = load i32, i32* @UAC3_FUNCTION_SUBCLASS_SPEAKERPHONE, align 4
  %221 = icmp sgt i32 %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %218, %214
  %223 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %224 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %223, i32 0, i32 0
  %225 = call i32 @dev_err(i32* %224, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %3, align 4
  br label %259

228:                                              ; preds = %218, %207
  %229 = load i32, i32* %15, align 4
  %230 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %231 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  br label %232

232:                                              ; preds = %228, %204
  store i32 0, i32* %9, align 4
  br label %233

233:                                              ; preds = %254, %232
  %234 = load i32, i32* %9, align 4
  %235 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %13, align 8
  %236 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %239, label %257

239:                                              ; preds = %233
  %240 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %13, align 8
  %241 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %9, align 4
  %244 = add nsw i32 %242, %243
  store i32 %244, i32* %16, align 4
  %245 = load i32, i32* %16, align 4
  %246 = load i32, i32* %5, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %239
  %249 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %250 = load i32, i32* %5, align 4
  %251 = load i32, i32* %16, align 4
  %252 = call i32 @snd_usb_create_stream(%struct.snd_usb_audio* %249, i32 %250, i32 %251)
  br label %253

253:                                              ; preds = %248, %239
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %9, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %9, align 4
  br label %233

257:                                              ; preds = %233
  br label %258

258:                                              ; preds = %257, %154
  store i32 0, i32* %3, align 4
  br label %259

259:                                              ; preds = %258, %222, %198, %127, %110, %98, %87, %77, %54
  %260 = load i32, i32* %3, align 4
  ret i32 %260
}

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local %struct.uac1_ac_header_descriptor* @snd_usb_find_csint_desc(i64, i64, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @snd_usb_create_stream(%struct.snd_usb_audio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
