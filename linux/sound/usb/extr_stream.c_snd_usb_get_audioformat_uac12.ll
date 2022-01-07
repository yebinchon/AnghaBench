; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_snd_usb_get_audioformat_uac12.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_stream.c_snd_usb_get_audioformat_uac12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audioformat = type { i32, i32, i32 }
%struct.snd_usb_audio = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.usb_host_interface = type { i32, i32 }
%struct.uac_format_type_i_continuous_descriptor = type { i32, i32, i32 }
%struct.uac1_as_header_descriptor = type { i32, i32, i32 }
%struct.uac_input_terminal_descriptor = type { i32, i32 }
%struct.uac2_input_terminal_descriptor = type { i32, i32, i32 }
%struct.uac2_output_terminal_descriptor = type { i32 }
%struct.uac2_as_header_descriptor = type { i32, i32, i32, i32, i32 }

@UAC_VERSION_1 = common dso_local global i32 0, align 4
@UAC_AS_GENERAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%u:%d : UAC_AS_GENERAL descriptor not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%u:%d : invalid UAC_AS_GENERAL desc\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%u:%d : bogus bTerminalLink %d\0A\00", align 1
@UAC_FORMAT_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"%u:%d : no UAC_FORMAT_TYPE desc\0A\00", align 1
@UAC_VERSION_2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"%u:%d : invalid UAC_FORMAT_TYPE desc\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audioformat* (%struct.snd_usb_audio*, %struct.usb_host_interface*, i32, i32, i32, i32, i32, i32)* @snd_usb_get_audioformat_uac12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audioformat* @snd_usb_get_audioformat_uac12(%struct.snd_usb_audio* %0, %struct.usb_host_interface* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.audioformat*, align 8
  %10 = alloca %struct.snd_usb_audio*, align 8
  %11 = alloca %struct.usb_host_interface*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.usb_device*, align 8
  %19 = alloca %struct.uac_format_type_i_continuous_descriptor*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.audioformat*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca %struct.uac1_as_header_descriptor*, align 8
  %26 = alloca %struct.uac_input_terminal_descriptor*, align 8
  %27 = alloca %struct.uac2_input_terminal_descriptor*, align 8
  %28 = alloca %struct.uac2_output_terminal_descriptor*, align 8
  %29 = alloca %struct.uac2_as_header_descriptor*, align 8
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %10, align 8
  store %struct.usb_host_interface* %1, %struct.usb_host_interface** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %30 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %31 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %30, i32 0, i32 1
  %32 = load %struct.usb_device*, %struct.usb_device** %31, align 8
  store %struct.usb_device* %32, %struct.usb_device** %18, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @UAC_VERSION_1, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %92

36:                                               ; preds = %8
  %37 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %38 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %41 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UAC_AS_GENERAL, align 4
  %44 = call i8* @snd_usb_find_csint_desc(i32 %39, i32 %42, i32* null, i32 %43)
  %45 = bitcast i8* %44 to %struct.uac1_as_header_descriptor*
  store %struct.uac1_as_header_descriptor* %45, %struct.uac1_as_header_descriptor** %25, align 8
  %46 = load %struct.uac1_as_header_descriptor*, %struct.uac1_as_header_descriptor** %25, align 8
  %47 = icmp ne %struct.uac1_as_header_descriptor* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %36
  %49 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %50 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %49, i32 0, i32 0
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  store %struct.audioformat* null, %struct.audioformat** %9, align 8
  br label %301

54:                                               ; preds = %36
  %55 = load %struct.uac1_as_header_descriptor*, %struct.uac1_as_header_descriptor** %25, align 8
  %56 = getelementptr inbounds %struct.uac1_as_header_descriptor, %struct.uac1_as_header_descriptor* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %58, 12
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %62 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %61, i32 0, i32 0
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %15, align 4
  %65 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %64)
  store %struct.audioformat* null, %struct.audioformat** %9, align 8
  br label %301

66:                                               ; preds = %54
  %67 = load %struct.uac1_as_header_descriptor*, %struct.uac1_as_header_descriptor** %25, align 8
  %68 = getelementptr inbounds %struct.uac1_as_header_descriptor, %struct.uac1_as_header_descriptor* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le16_to_cpu(i32 %69)
  store i8* %70, i8** %24, align 8
  %71 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %72 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.uac1_as_header_descriptor*, %struct.uac1_as_header_descriptor** %25, align 8
  %75 = getelementptr inbounds %struct.uac1_as_header_descriptor, %struct.uac1_as_header_descriptor* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i8* @snd_usb_find_input_terminal_descriptor(i32 %73, i32 %76, i32 %77)
  %79 = bitcast i8* %78 to %struct.uac_input_terminal_descriptor*
  store %struct.uac_input_terminal_descriptor* %79, %struct.uac_input_terminal_descriptor** %26, align 8
  %80 = load %struct.uac_input_terminal_descriptor*, %struct.uac_input_terminal_descriptor** %26, align 8
  %81 = icmp ne %struct.uac_input_terminal_descriptor* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %66
  %83 = load %struct.uac_input_terminal_descriptor*, %struct.uac_input_terminal_descriptor** %26, align 8
  %84 = getelementptr inbounds %struct.uac_input_terminal_descriptor, %struct.uac_input_terminal_descriptor* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %20, align 4
  %86 = load %struct.uac_input_terminal_descriptor*, %struct.uac_input_terminal_descriptor** %26, align 8
  %87 = getelementptr inbounds %struct.uac_input_terminal_descriptor, %struct.uac_input_terminal_descriptor* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @le16_to_cpu(i32 %88)
  %90 = ptrtoint i8* %89 to i32
  store i32 %90, i32* %21, align 4
  br label %91

91:                                               ; preds = %82, %66
  br label %189

92:                                               ; preds = %8
  %93 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %94 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %97 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @UAC_AS_GENERAL, align 4
  %100 = call i8* @snd_usb_find_csint_desc(i32 %95, i32 %98, i32* null, i32 %99)
  %101 = bitcast i8* %100 to %struct.uac2_as_header_descriptor*
  store %struct.uac2_as_header_descriptor* %101, %struct.uac2_as_header_descriptor** %29, align 8
  %102 = load %struct.uac2_as_header_descriptor*, %struct.uac2_as_header_descriptor** %29, align 8
  %103 = icmp ne %struct.uac2_as_header_descriptor* %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %92
  %105 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %106 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %105, i32 0, i32 0
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %106, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %108)
  store %struct.audioformat* null, %struct.audioformat** %9, align 8
  br label %301

110:                                              ; preds = %92
  %111 = load %struct.uac2_as_header_descriptor*, %struct.uac2_as_header_descriptor** %29, align 8
  %112 = getelementptr inbounds %struct.uac2_as_header_descriptor, %struct.uac2_as_header_descriptor* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp ult i64 %114, 20
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %118 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %117, i32 0, i32 0
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %15, align 4
  %121 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %119, i32 %120)
  store %struct.audioformat* null, %struct.audioformat** %9, align 8
  br label %301

122:                                              ; preds = %110
  %123 = load %struct.uac2_as_header_descriptor*, %struct.uac2_as_header_descriptor** %29, align 8
  %124 = getelementptr inbounds %struct.uac2_as_header_descriptor, %struct.uac2_as_header_descriptor* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %20, align 4
  %126 = load %struct.uac2_as_header_descriptor*, %struct.uac2_as_header_descriptor** %29, align 8
  %127 = getelementptr inbounds %struct.uac2_as_header_descriptor, %struct.uac2_as_header_descriptor* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @le32_to_cpu(i32 %128)
  store i8* %129, i8** %24, align 8
  %130 = load %struct.uac2_as_header_descriptor*, %struct.uac2_as_header_descriptor** %29, align 8
  %131 = getelementptr inbounds %struct.uac2_as_header_descriptor, %struct.uac2_as_header_descriptor* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @le32_to_cpu(i32 %132)
  %134 = ptrtoint i8* %133 to i32
  store i32 %134, i32* %21, align 4
  %135 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %136 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.uac2_as_header_descriptor*, %struct.uac2_as_header_descriptor** %29, align 8
  %139 = getelementptr inbounds %struct.uac2_as_header_descriptor, %struct.uac2_as_header_descriptor* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i8* @snd_usb_find_input_terminal_descriptor(i32 %137, i32 %140, i32 %141)
  %143 = bitcast i8* %142 to %struct.uac2_input_terminal_descriptor*
  store %struct.uac2_input_terminal_descriptor* %143, %struct.uac2_input_terminal_descriptor** %27, align 8
  %144 = load %struct.uac2_input_terminal_descriptor*, %struct.uac2_input_terminal_descriptor** %27, align 8
  %145 = icmp ne %struct.uac2_input_terminal_descriptor* %144, null
  br i1 %145, label %146, label %165

146:                                              ; preds = %122
  %147 = load %struct.uac2_input_terminal_descriptor*, %struct.uac2_input_terminal_descriptor** %27, align 8
  %148 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, %struct.uac2_input_terminal_descriptor* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %23, align 4
  %150 = load i32, i32* %21, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %164, label %152

152:                                              ; preds = %146
  %153 = load i32, i32* %20, align 4
  %154 = load %struct.uac2_input_terminal_descriptor*, %struct.uac2_input_terminal_descriptor** %27, align 8
  %155 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, %struct.uac2_input_terminal_descriptor* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %153, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %152
  %159 = load %struct.uac2_input_terminal_descriptor*, %struct.uac2_input_terminal_descriptor** %27, align 8
  %160 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, %struct.uac2_input_terminal_descriptor* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @le32_to_cpu(i32 %161)
  %163 = ptrtoint i8* %162 to i32
  store i32 %163, i32* %21, align 4
  br label %164

164:                                              ; preds = %158, %152, %146
  br label %190

165:                                              ; preds = %122
  %166 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %167 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.uac2_as_header_descriptor*, %struct.uac2_as_header_descriptor** %29, align 8
  %170 = getelementptr inbounds %struct.uac2_as_header_descriptor, %struct.uac2_as_header_descriptor* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call %struct.uac2_output_terminal_descriptor* @snd_usb_find_output_terminal_descriptor(i32 %168, i32 %171, i32 %172)
  store %struct.uac2_output_terminal_descriptor* %173, %struct.uac2_output_terminal_descriptor** %28, align 8
  %174 = load %struct.uac2_output_terminal_descriptor*, %struct.uac2_output_terminal_descriptor** %28, align 8
  %175 = icmp ne %struct.uac2_output_terminal_descriptor* %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %165
  %177 = load %struct.uac2_output_terminal_descriptor*, %struct.uac2_output_terminal_descriptor** %28, align 8
  %178 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, %struct.uac2_output_terminal_descriptor* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %23, align 4
  br label %190

180:                                              ; preds = %165
  %181 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %182 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %181, i32 0, i32 0
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* %15, align 4
  %185 = load %struct.uac2_as_header_descriptor*, %struct.uac2_as_header_descriptor** %29, align 8
  %186 = getelementptr inbounds %struct.uac2_as_header_descriptor, %struct.uac2_as_header_descriptor* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %182, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %183, i32 %184, i32 %187)
  store %struct.audioformat* null, %struct.audioformat** %9, align 8
  br label %301

189:                                              ; preds = %91
  br label %190

190:                                              ; preds = %189, %176, %164
  %191 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %192 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %195 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @UAC_FORMAT_TYPE, align 4
  %198 = call i8* @snd_usb_find_csint_desc(i32 %193, i32 %196, i32* null, i32 %197)
  %199 = bitcast i8* %198 to %struct.uac_format_type_i_continuous_descriptor*
  store %struct.uac_format_type_i_continuous_descriptor* %199, %struct.uac_format_type_i_continuous_descriptor** %19, align 8
  %200 = load %struct.uac_format_type_i_continuous_descriptor*, %struct.uac_format_type_i_continuous_descriptor** %19, align 8
  %201 = icmp ne %struct.uac_format_type_i_continuous_descriptor* %200, null
  br i1 %201, label %208, label %202

202:                                              ; preds = %190
  %203 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %204 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %203, i32 0, i32 0
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* %15, align 4
  %207 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %204, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %205, i32 %206)
  store %struct.audioformat* null, %struct.audioformat** %9, align 8
  br label %301

208:                                              ; preds = %190
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* @UAC_VERSION_1, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %208
  %213 = load %struct.uac_format_type_i_continuous_descriptor*, %struct.uac_format_type_i_continuous_descriptor** %19, align 8
  %214 = getelementptr inbounds %struct.uac_format_type_i_continuous_descriptor, %struct.uac_format_type_i_continuous_descriptor* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp slt i32 %215, 8
  br i1 %216, label %226, label %217

217:                                              ; preds = %212, %208
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* @UAC_VERSION_2, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %232

221:                                              ; preds = %217
  %222 = load %struct.uac_format_type_i_continuous_descriptor*, %struct.uac_format_type_i_continuous_descriptor** %19, align 8
  %223 = getelementptr inbounds %struct.uac_format_type_i_continuous_descriptor, %struct.uac_format_type_i_continuous_descriptor* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp slt i32 %224, 6
  br i1 %225, label %226, label %232

226:                                              ; preds = %221, %212
  %227 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %228 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %227, i32 0, i32 0
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %15, align 4
  %231 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %228, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %229, i32 %230)
  store %struct.audioformat* null, %struct.audioformat** %9, align 8
  br label %301

232:                                              ; preds = %221, %217
  %233 = load i32, i32* %17, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %246

235:                                              ; preds = %232
  %236 = load %struct.uac_format_type_i_continuous_descriptor*, %struct.uac_format_type_i_continuous_descriptor** %19, align 8
  %237 = getelementptr inbounds %struct.uac_format_type_i_continuous_descriptor, %struct.uac_format_type_i_continuous_descriptor* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %240, label %246

240:                                              ; preds = %235
  %241 = load %struct.uac_format_type_i_continuous_descriptor*, %struct.uac_format_type_i_continuous_descriptor** %19, align 8
  %242 = getelementptr inbounds %struct.uac_format_type_i_continuous_descriptor, %struct.uac_format_type_i_continuous_descriptor* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = icmp eq i32 %243, 2
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  store %struct.audioformat* null, %struct.audioformat** %9, align 8
  br label %301

246:                                              ; preds = %240, %235, %232
  %247 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %248 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %249 = load i32, i32* %12, align 4
  %250 = load i32, i32* %13, align 4
  %251 = load i32, i32* %14, align 4
  %252 = load i32, i32* %15, align 4
  %253 = load i32, i32* %20, align 4
  %254 = load i32, i32* %23, align 4
  %255 = call %struct.audioformat* @audio_format_alloc_init(%struct.snd_usb_audio* %247, %struct.usb_host_interface* %248, i32 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254)
  store %struct.audioformat* %255, %struct.audioformat** %22, align 8
  %256 = load %struct.audioformat*, %struct.audioformat** %22, align 8
  %257 = icmp ne %struct.audioformat* %256, null
  br i1 %257, label %262, label %258

258:                                              ; preds = %246
  %259 = load i32, i32* @ENOMEM, align 4
  %260 = sub nsw i32 0, %259
  %261 = call %struct.audioformat* @ERR_PTR(i32 %260)
  store %struct.audioformat* %261, %struct.audioformat** %9, align 8
  br label %301

262:                                              ; preds = %246
  %263 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %264 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* %13, align 4
  %267 = call i32 @parse_uac_endpoint_attributes(%struct.snd_usb_audio* %263, %struct.usb_host_interface* %264, i32 %265, i32 %266)
  %268 = load %struct.audioformat*, %struct.audioformat** %22, align 8
  %269 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %268, i32 0, i32 2
  store i32 %267, i32* %269, align 4
  %270 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %271 = load %struct.audioformat*, %struct.audioformat** %22, align 8
  %272 = load i32, i32* %16, align 4
  %273 = call i32 @snd_usb_audioformat_attributes_quirk(%struct.snd_usb_audio* %270, %struct.audioformat* %271, i32 %272)
  %274 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  %275 = load %struct.audioformat*, %struct.audioformat** %22, align 8
  %276 = load i8*, i8** %24, align 8
  %277 = load %struct.uac_format_type_i_continuous_descriptor*, %struct.uac_format_type_i_continuous_descriptor** %19, align 8
  %278 = load i32, i32* %16, align 4
  %279 = call i64 @snd_usb_parse_audio_format(%struct.snd_usb_audio* %274, %struct.audioformat* %275, i8* %276, %struct.uac_format_type_i_continuous_descriptor* %277, i32 %278)
  %280 = icmp slt i64 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %262
  %282 = load %struct.audioformat*, %struct.audioformat** %22, align 8
  %283 = call i32 @audioformat_free(%struct.audioformat* %282)
  store %struct.audioformat* null, %struct.audioformat** %9, align 8
  br label %301

284:                                              ; preds = %262
  %285 = load %struct.audioformat*, %struct.audioformat** %22, align 8
  %286 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %20, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %284
  store i32 0, i32* %21, align 4
  br label %291

291:                                              ; preds = %290, %284
  %292 = load %struct.audioformat*, %struct.audioformat** %22, align 8
  %293 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %21, align 4
  %296 = load i32, i32* %12, align 4
  %297 = call i32 @convert_chmap(i32 %294, i32 %295, i32 %296)
  %298 = load %struct.audioformat*, %struct.audioformat** %22, align 8
  %299 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %298, i32 0, i32 1
  store i32 %297, i32* %299, align 4
  %300 = load %struct.audioformat*, %struct.audioformat** %22, align 8
  store %struct.audioformat* %300, %struct.audioformat** %9, align 8
  br label %301

301:                                              ; preds = %291, %281, %258, %245, %226, %202, %180, %116, %104, %60, %48
  %302 = load %struct.audioformat*, %struct.audioformat** %9, align 8
  ret %struct.audioformat* %302
}

declare dso_local i8* @snd_usb_find_csint_desc(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, ...) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i8* @snd_usb_find_input_terminal_descriptor(i32, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local %struct.uac2_output_terminal_descriptor* @snd_usb_find_output_terminal_descriptor(i32, i32, i32) #1

declare dso_local %struct.audioformat* @audio_format_alloc_init(%struct.snd_usb_audio*, %struct.usb_host_interface*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.audioformat* @ERR_PTR(i32) #1

declare dso_local i32 @parse_uac_endpoint_attributes(%struct.snd_usb_audio*, %struct.usb_host_interface*, i32, i32) #1

declare dso_local i32 @snd_usb_audioformat_attributes_quirk(%struct.snd_usb_audio*, %struct.audioformat*, i32) #1

declare dso_local i64 @snd_usb_parse_audio_format(%struct.snd_usb_audio*, %struct.audioformat*, i8*, %struct.uac_format_type_i_continuous_descriptor*, i32) #1

declare dso_local i32 @audioformat_free(%struct.audioformat*) #1

declare dso_local i32 @convert_chmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
