; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_get_ms_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_get_ms_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi = type { %struct.TYPE_2__*, %struct.usb_interface* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32, %struct.usb_host_endpoint*, i64 }
%struct.usb_host_endpoint = type { i32, i64 }
%struct.snd_usb_midi_endpoint_info = type { i32, i32, i32, i32, i8*, i8* }
%struct.usb_interface_descriptor = type { i32 }
%struct.usb_ms_header_descriptor = type { i32, i64, i64, i32* }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.usb_ms_endpoint_descriptor = type { i32, i64, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@USB_DT_CS_INTERFACE = common dso_local global i64 0, align 8
@UAC_HEADER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"MIDIStreaming version %02x.%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"MIDIStreaming interface descriptor not found\0A\00", align 1
@USB_DT_CS_ENDPOINT = common dso_local global i64 0, align 8
@UAC_MS_GENERAL = common dso_local global i64 0, align 8
@MIDI_MAX_ENDPOINTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"too many endpoints\0A\00", align 1
@USB_SPEED_LOW = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"EP %02X: %d jack(s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_midi*, %struct.snd_usb_midi_endpoint_info*)* @snd_usbmidi_get_ms_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usbmidi_get_ms_info(%struct.snd_usb_midi* %0, %struct.snd_usb_midi_endpoint_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_usb_midi*, align 8
  %5 = alloca %struct.snd_usb_midi_endpoint_info*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_interface_descriptor*, align 8
  %9 = alloca %struct.usb_ms_header_descriptor*, align 8
  %10 = alloca %struct.usb_host_endpoint*, align 8
  %11 = alloca %struct.usb_endpoint_descriptor*, align 8
  %12 = alloca %struct.usb_ms_endpoint_descriptor*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_usb_midi* %0, %struct.snd_usb_midi** %4, align 8
  store %struct.snd_usb_midi_endpoint_info* %1, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %15 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %16 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %15, i32 0, i32 1
  %17 = load %struct.usb_interface*, %struct.usb_interface** %16, align 8
  store %struct.usb_interface* %17, %struct.usb_interface** %6, align 8
  %18 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %19 = icmp ne %struct.usb_interface* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %289

23:                                               ; preds = %2
  %24 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %25 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %24, i32 0, i32 0
  %26 = load %struct.usb_host_interface*, %struct.usb_host_interface** %25, align 8
  %27 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %26, i64 0
  store %struct.usb_host_interface* %27, %struct.usb_host_interface** %7, align 8
  %28 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %29 = call %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface* %28)
  store %struct.usb_interface_descriptor* %29, %struct.usb_interface_descriptor** %8, align 8
  %30 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %31 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.usb_ms_header_descriptor*
  store %struct.usb_ms_header_descriptor* %33, %struct.usb_ms_header_descriptor** %9, align 8
  %34 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %35 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 7
  br i1 %37, label %38, label %71

38:                                               ; preds = %23
  %39 = load %struct.usb_ms_header_descriptor*, %struct.usb_ms_header_descriptor** %9, align 8
  %40 = getelementptr inbounds %struct.usb_ms_header_descriptor, %struct.usb_ms_header_descriptor* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %41, 7
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load %struct.usb_ms_header_descriptor*, %struct.usb_ms_header_descriptor** %9, align 8
  %45 = getelementptr inbounds %struct.usb_ms_header_descriptor, %struct.usb_ms_header_descriptor* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @USB_DT_CS_INTERFACE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %43
  %50 = load %struct.usb_ms_header_descriptor*, %struct.usb_ms_header_descriptor** %9, align 8
  %51 = getelementptr inbounds %struct.usb_ms_header_descriptor, %struct.usb_ms_header_descriptor* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @UAC_HEADER, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %49
  %56 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %57 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.usb_ms_header_descriptor*, %struct.usb_ms_header_descriptor** %9, align 8
  %61 = getelementptr inbounds %struct.usb_ms_header_descriptor, %struct.usb_ms_header_descriptor* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.usb_ms_header_descriptor*, %struct.usb_ms_header_descriptor** %9, align 8
  %66 = getelementptr inbounds %struct.usb_ms_header_descriptor, %struct.usb_ms_header_descriptor* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_dbg(i32* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %69)
  br label %77

71:                                               ; preds = %49, %43, %38, %23
  %72 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %73 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @dev_warn(i32* %75, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %71, %55
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %285, %77
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %81 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %288

84:                                               ; preds = %78
  %85 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %86 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %85, i32 0, i32 1
  %87 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %87, i64 %89
  store %struct.usb_host_endpoint* %90, %struct.usb_host_endpoint** %10, align 8
  %91 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %92 = call %struct.usb_endpoint_descriptor* @get_ep_desc(%struct.usb_host_endpoint* %91)
  store %struct.usb_endpoint_descriptor* %92, %struct.usb_endpoint_descriptor** %11, align 8
  %93 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %94 = call i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %84
  %97 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %98 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  br label %285

101:                                              ; preds = %96, %84
  %102 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %103 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to %struct.usb_ms_endpoint_descriptor*
  store %struct.usb_ms_endpoint_descriptor* %105, %struct.usb_ms_endpoint_descriptor** %12, align 8
  %106 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %107 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %108, 4
  br i1 %109, label %127, label %110

110:                                              ; preds = %101
  %111 = load %struct.usb_ms_endpoint_descriptor*, %struct.usb_ms_endpoint_descriptor** %12, align 8
  %112 = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, %struct.usb_ms_endpoint_descriptor* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %113, 4
  br i1 %114, label %127, label %115

115:                                              ; preds = %110
  %116 = load %struct.usb_ms_endpoint_descriptor*, %struct.usb_ms_endpoint_descriptor** %12, align 8
  %117 = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, %struct.usb_ms_endpoint_descriptor* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @USB_DT_CS_ENDPOINT, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = load %struct.usb_ms_endpoint_descriptor*, %struct.usb_ms_endpoint_descriptor** %12, align 8
  %123 = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, %struct.usb_ms_endpoint_descriptor* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @UAC_MS_GENERAL, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %121, %115, %110, %101
  br label %285

128:                                              ; preds = %121
  %129 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %130 = call i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %208

132:                                              ; preds = %128
  %133 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %133, i64 %135
  %137 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %136, i32 0, i32 5
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %152

140:                                              ; preds = %132
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* @MIDI_MAX_ENDPOINTS, align 4
  %144 = icmp sge i32 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %147 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = call i32 @dev_warn(i32* %149, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %288

151:                                              ; preds = %140
  br label %152

152:                                              ; preds = %151, %132
  %153 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %154 = call i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor* %153)
  %155 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %155, i64 %157
  %159 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %158, i32 0, i32 5
  store i8* %154, i8** %159, align 8
  %160 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %161 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %152
  %164 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %165 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %167, i64 %169
  %171 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %170, i32 0, i32 0
  store i32 %166, i32* %171, align 8
  br label %186

172:                                              ; preds = %152
  %173 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %174 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %173, i32 0, i32 0
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = call i64 @snd_usb_get_speed(%struct.TYPE_2__* %175)
  %177 = load i64, i64* @USB_SPEED_LOW, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %172
  %180 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %180, i64 %182
  %184 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %183, i32 0, i32 0
  store i32 1, i32* %184, align 8
  br label %185

185:                                              ; preds = %179, %172
  br label %186

186:                                              ; preds = %185, %163
  %187 = load %struct.usb_ms_endpoint_descriptor*, %struct.usb_ms_endpoint_descriptor** %12, align 8
  %188 = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, %struct.usb_ms_endpoint_descriptor* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = shl i32 1, %189
  %191 = sub nsw i32 %190, 1
  %192 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %192, i64 %194
  %196 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %195, i32 0, i32 1
  store i32 %191, i32* %196, align 4
  %197 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %198 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %197, i32 0, i32 0
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %202 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.usb_ms_endpoint_descriptor*, %struct.usb_ms_endpoint_descriptor** %12, align 8
  %205 = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, %struct.usb_ms_endpoint_descriptor* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @dev_dbg(i32* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %203, i32 %206)
  br label %284

208:                                              ; preds = %128
  %209 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %209, i64 %211
  %213 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %212, i32 0, i32 4
  %214 = load i8*, i8** %213, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %228

216:                                              ; preds = %208
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %14, align 4
  %219 = load i32, i32* @MIDI_MAX_ENDPOINTS, align 4
  %220 = icmp sge i32 %218, %219
  br i1 %220, label %221, label %227

221:                                              ; preds = %216
  %222 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %223 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %222, i32 0, i32 0
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 0
  %226 = call i32 @dev_warn(i32* %225, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %288

227:                                              ; preds = %216
  br label %228

228:                                              ; preds = %227, %208
  %229 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %230 = call i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor* %229)
  %231 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %232 = load i32, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %231, i64 %233
  %235 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %234, i32 0, i32 4
  store i8* %230, i8** %235, align 8
  %236 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %237 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %228
  %240 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %241 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %244 = load i32, i32* %14, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %243, i64 %245
  %247 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %246, i32 0, i32 2
  store i32 %242, i32* %247, align 8
  br label %262

248:                                              ; preds = %228
  %249 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %250 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %249, i32 0, i32 0
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** %250, align 8
  %252 = call i64 @snd_usb_get_speed(%struct.TYPE_2__* %251)
  %253 = load i64, i64* @USB_SPEED_LOW, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %261

255:                                              ; preds = %248
  %256 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %257 = load i32, i32* %14, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %256, i64 %258
  %260 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %259, i32 0, i32 2
  store i32 1, i32* %260, align 8
  br label %261

261:                                              ; preds = %255, %248
  br label %262

262:                                              ; preds = %261, %239
  %263 = load %struct.usb_ms_endpoint_descriptor*, %struct.usb_ms_endpoint_descriptor** %12, align 8
  %264 = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, %struct.usb_ms_endpoint_descriptor* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = shl i32 1, %265
  %267 = sub nsw i32 %266, 1
  %268 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %5, align 8
  %269 = load i32, i32* %14, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %268, i64 %270
  %272 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %271, i32 0, i32 3
  store i32 %267, i32* %272, align 4
  %273 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %274 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %273, i32 0, i32 0
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 0
  %277 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %11, align 8
  %278 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.usb_ms_endpoint_descriptor*, %struct.usb_ms_endpoint_descriptor** %12, align 8
  %281 = getelementptr inbounds %struct.usb_ms_endpoint_descriptor, %struct.usb_ms_endpoint_descriptor* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @dev_dbg(i32* %276, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %279, i32 %282)
  br label %284

284:                                              ; preds = %262, %186
  br label %285

285:                                              ; preds = %284, %127, %100
  %286 = load i32, i32* %13, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %13, align 4
  br label %78

288:                                              ; preds = %221, %145, %78
  store i32 0, i32* %3, align 4
  br label %289

289:                                              ; preds = %288, %20
  %290 = load i32, i32* %3, align 4
  ret i32 %290
}

declare dso_local %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.usb_endpoint_descriptor* @get_ep_desc(%struct.usb_host_endpoint*) #1

declare dso_local i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @snd_usb_get_speed(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
