; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.c___snd_usbmidi_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.c___snd_usbmidi_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.usb_interface = type { i32 }
%struct.list_head = type { i32 }
%struct.snd_usb_audio_quirk = type { i32, i32 }
%struct.snd_usb_midi = type { i32, i32, %struct.usb_interface*, %struct.TYPE_7__*, i32*, i32, i32, i32, i32, %struct.snd_usb_audio_quirk*, %struct.snd_card* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.snd_usb_midi_endpoint_info = type { i32, i32 }

@MIDI_MAX_ENDPOINTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_usbmidi_standard_ops = common dso_local global i32 0, align 4
@snd_usbmidi_error_timer = common dso_local global i32 0, align 4
@snd_usbmidi_maudio_broken_running_status_ops = common dso_local global i32 0, align 4
@snd_usbmidi_122l_ops = common dso_local global i32 0, align 4
@snd_usbmidi_midiman_ops = common dso_local global i32 0, align 4
@snd_usbmidi_novation_ops = common dso_local global i32 0, align 4
@snd_usbmidi_raw_ops = common dso_local global i32 0, align 4
@snd_usbmidi_emagic_ops = common dso_local global i32 0, align 4
@snd_usbmidi_cme_ops = common dso_local global i32 0, align 4
@snd_usbmidi_akai_ops = common dso_local global i32 0, align 4
@snd_usbmidi_ftdi_ops = common dso_local global i32 0, align 4
@snd_usbmidi_ch345_broken_sysex_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid quirk type %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__snd_usbmidi_create(%struct.snd_card* %0, %struct.usb_interface* %1, %struct.list_head* %2, %struct.snd_usb_audio_quirk* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_card*, align 8
  %8 = alloca %struct.usb_interface*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.snd_usb_audio_quirk*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_usb_midi*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %7, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %8, align 8
  store %struct.list_head* %2, %struct.list_head** %9, align 8
  store %struct.snd_usb_audio_quirk* %3, %struct.snd_usb_audio_quirk** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* @MIDI_MAX_ENDPOINTS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca %struct.snd_usb_midi_endpoint_info, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.snd_usb_midi* @kzalloc(i32 64, i32 %24)
  store %struct.snd_usb_midi* %25, %struct.snd_usb_midi** %12, align 8
  %26 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %27 = icmp ne %struct.snd_usb_midi* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %285

31:                                               ; preds = %5
  %32 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %33 = call %struct.TYPE_7__* @interface_to_usbdev(%struct.usb_interface* %32)
  %34 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %35 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %34, i32 0, i32 3
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %35, align 8
  %36 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %37 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %38 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %37, i32 0, i32 10
  store %struct.snd_card* %36, %struct.snd_card** %38, align 8
  %39 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %40 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %41 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %40, i32 0, i32 2
  store %struct.usb_interface* %39, %struct.usb_interface** %41, align 8
  %42 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %10, align 8
  %43 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %44 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %43, i32 0, i32 9
  store %struct.snd_usb_audio_quirk* %42, %struct.snd_usb_audio_quirk** %44, align 8
  %45 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %46 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %45, i32 0, i32 4
  store i32* @snd_usbmidi_standard_ops, i32** %46, align 8
  %47 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %48 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %47, i32 0, i32 8
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %51 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %50, i32 0, i32 7
  %52 = call i32 @init_rwsem(i32* %51)
  %53 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %54 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %53, i32 0, i32 6
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %31
  %59 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %60 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %59, i32 0, i32 3
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  %66 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %67 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %66, i32 0, i32 3
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le16_to_cpu(i32 %71)
  %73 = call i32 @USB_ID(i32 %65, i32 %72)
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %58, %31
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %77 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %79 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %78, i32 0, i32 5
  %80 = load i32, i32* @snd_usbmidi_error_timer, align 4
  %81 = call i32 @timer_setup(i32* %79, i32 %80, i32 0)
  %82 = mul nuw i64 8, %21
  %83 = trunc i64 %82 to i32
  %84 = call i32 @memset(%struct.snd_usb_midi_endpoint_info* %23, i32 0, i32 %83)
  %85 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %10, align 8
  %86 = icmp ne %struct.snd_usb_audio_quirk* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %74
  %88 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %10, align 8
  %89 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  br label %92

91:                                               ; preds = %74
  br label %92

92:                                               ; preds = %91, %87
  %93 = phi i32 [ %90, %87 ], [ 130, %91 ]
  switch i32 %93, label %200 [
    i32 130, label %94
    i32 129, label %106
    i32 136, label %109
    i32 128, label %118
    i32 131, label %122
    i32 134, label %126
    i32 133, label %134
    i32 132, label %139
    i32 137, label %155
    i32 138, label %166
    i32 140, label %171
    i32 135, label %178
    i32 139, label %195
  ]

94:                                               ; preds = %92
  %95 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %96 = call i32 @snd_usbmidi_get_ms_info(%struct.snd_usb_midi* %95, %struct.snd_usb_midi_endpoint_info* %23)
  store i32 %96, i32* %18, align 4
  %97 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %98 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @USB_ID(i32 1891, i32 336)
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %104 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %103, i32 0, i32 4
  store i32* @snd_usbmidi_maudio_broken_running_status_ops, i32** %104, align 8
  br label %105

105:                                              ; preds = %102, %94
  br label %211

106:                                              ; preds = %92
  %107 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %108 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %107, i32 0, i32 4
  store i32* @snd_usbmidi_122l_ops, i32** %108, align 8
  br label %109

109:                                              ; preds = %92, %106
  %110 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %23, i64 0
  %111 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %10, align 8
  %112 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @memcpy(%struct.snd_usb_midi_endpoint_info* %110, i32 %113, i32 8)
  %115 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %116 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %23, i64 0
  %117 = call i32 @snd_usbmidi_detect_endpoints(%struct.snd_usb_midi* %115, %struct.snd_usb_midi_endpoint_info* %116, i32 1)
  store i32 %117, i32* %18, align 4
  br label %211

118:                                              ; preds = %92
  %119 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %120 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %23, i64 0
  %121 = call i32 @snd_usbmidi_detect_yamaha(%struct.snd_usb_midi* %119, %struct.snd_usb_midi_endpoint_info* %120)
  store i32 %121, i32* %18, align 4
  br label %211

122:                                              ; preds = %92
  %123 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %124 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %23, i64 0
  %125 = call i32 @snd_usbmidi_detect_roland(%struct.snd_usb_midi* %123, %struct.snd_usb_midi_endpoint_info* %124)
  store i32 %125, i32* %18, align 4
  br label %211

126:                                              ; preds = %92
  %127 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %128 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %127, i32 0, i32 4
  store i32* @snd_usbmidi_midiman_ops, i32** %128, align 8
  %129 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %23, i64 0
  %130 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %10, align 8
  %131 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @memcpy(%struct.snd_usb_midi_endpoint_info* %129, i32 %132, i32 8)
  store i32 0, i32* %18, align 4
  br label %211

134:                                              ; preds = %92
  %135 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %136 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %135, i32 0, i32 4
  store i32* @snd_usbmidi_novation_ops, i32** %136, align 8
  %137 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %138 = call i32 @snd_usbmidi_detect_per_port_endpoints(%struct.snd_usb_midi* %137, %struct.snd_usb_midi_endpoint_info* %23)
  store i32 %138, i32* %18, align 4
  br label %211

139:                                              ; preds = %92
  %140 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %141 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %140, i32 0, i32 4
  store i32* @snd_usbmidi_raw_ops, i32** %141, align 8
  %142 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %143 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @USB_ID(i32 2045, i32 1)
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %139
  %148 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %149 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %148, i32 0, i32 3
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = call i32 @usb_set_interface(%struct.TYPE_7__* %150, i32 0, i32 0)
  br label %152

152:                                              ; preds = %147, %139
  %153 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %154 = call i32 @snd_usbmidi_detect_per_port_endpoints(%struct.snd_usb_midi* %153, %struct.snd_usb_midi_endpoint_info* %23)
  store i32 %154, i32* %18, align 4
  br label %211

155:                                              ; preds = %92
  %156 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %157 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %156, i32 0, i32 4
  store i32* @snd_usbmidi_emagic_ops, i32** %157, align 8
  %158 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %23, i64 0
  %159 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %10, align 8
  %160 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @memcpy(%struct.snd_usb_midi_endpoint_info* %158, i32 %161, i32 8)
  %163 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %164 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %23, i64 0
  %165 = call i32 @snd_usbmidi_detect_endpoints(%struct.snd_usb_midi* %163, %struct.snd_usb_midi_endpoint_info* %164, i32 1)
  store i32 %165, i32* %18, align 4
  br label %211

166:                                              ; preds = %92
  %167 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %168 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %167, i32 0, i32 4
  store i32* @snd_usbmidi_cme_ops, i32** %168, align 8
  %169 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %170 = call i32 @snd_usbmidi_detect_per_port_endpoints(%struct.snd_usb_midi* %169, %struct.snd_usb_midi_endpoint_info* %23)
  store i32 %170, i32* %18, align 4
  br label %211

171:                                              ; preds = %92
  %172 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %173 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %172, i32 0, i32 4
  store i32* @snd_usbmidi_akai_ops, i32** %173, align 8
  %174 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %175 = call i32 @snd_usbmidi_detect_per_port_endpoints(%struct.snd_usb_midi* %174, %struct.snd_usb_midi_endpoint_info* %23)
  store i32 %175, i32* %18, align 4
  %176 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %23, i64 1
  %177 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %176, i32 0, i32 1
  store i32 0, i32* %177, align 4
  br label %211

178:                                              ; preds = %92
  %179 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %180 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %179, i32 0, i32 4
  store i32* @snd_usbmidi_ftdi_ops, i32** %180, align 8
  %181 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %182 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %181, i32 0, i32 3
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %185 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %184, i32 0, i32 3
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = call i32 @usb_sndctrlpipe(%struct.TYPE_7__* %186, i32 0)
  %188 = call i32 @usb_control_msg(%struct.TYPE_7__* %183, i32 %187, i32 3, i32 64, i32 96, i32 0, i32* null, i32 0, i32 1000)
  store i32 %188, i32* %18, align 4
  %189 = load i32, i32* %18, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %178
  br label %211

192:                                              ; preds = %178
  %193 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %194 = call i32 @snd_usbmidi_detect_per_port_endpoints(%struct.snd_usb_midi* %193, %struct.snd_usb_midi_endpoint_info* %23)
  store i32 %194, i32* %18, align 4
  br label %211

195:                                              ; preds = %92
  %196 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %197 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %196, i32 0, i32 4
  store i32* @snd_usbmidi_ch345_broken_sysex_ops, i32** %197, align 8
  %198 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %199 = call i32 @snd_usbmidi_detect_per_port_endpoints(%struct.snd_usb_midi* %198, %struct.snd_usb_midi_endpoint_info* %23)
  store i32 %199, i32* %18, align 4
  br label %211

200:                                              ; preds = %92
  %201 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %202 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %201, i32 0, i32 3
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %10, align 8
  %206 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @dev_err(i32* %204, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* @ENXIO, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %18, align 4
  br label %211

211:                                              ; preds = %200, %195, %192, %191, %171, %166, %155, %152, %134, %126, %122, %118, %109, %105
  %212 = load i32, i32* %18, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  br label %280

215:                                              ; preds = %211
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %216

216:                                              ; preds = %241, %215
  %217 = load i32, i32* %17, align 4
  %218 = load i32, i32* @MIDI_MAX_ENDPOINTS, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %244

220:                                              ; preds = %216
  %221 = load i32, i32* %17, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %23, i64 %222
  %224 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i64 @hweight16(i32 %225)
  %227 = load i32, i32* %15, align 4
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %228, %226
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %15, align 4
  %231 = load i32, i32* %17, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %23, i64 %232
  %234 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i64 @hweight16(i32 %235)
  %237 = load i32, i32* %16, align 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %238, %236
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %16, align 4
  br label %241

241:                                              ; preds = %220
  %242 = load i32, i32* %17, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %17, align 4
  br label %216

244:                                              ; preds = %216
  %245 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %246 = load i32, i32* %15, align 4
  %247 = load i32, i32* %16, align 4
  %248 = call i32 @snd_usbmidi_create_rawmidi(%struct.snd_usb_midi* %245, i32 %246, i32 %247)
  store i32 %248, i32* %18, align 4
  %249 = load i32, i32* %18, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %244
  br label %280

252:                                              ; preds = %244
  %253 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %10, align 8
  %254 = icmp ne %struct.snd_usb_audio_quirk* %253, null
  br i1 %254, label %255, label %264

255:                                              ; preds = %252
  %256 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %10, align 8
  %257 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %258, 134
  br i1 %259, label %260, label %264

260:                                              ; preds = %255
  %261 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %262 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %23, i64 0
  %263 = call i32 @snd_usbmidi_create_endpoints_midiman(%struct.snd_usb_midi* %261, %struct.snd_usb_midi_endpoint_info* %262)
  store i32 %263, i32* %18, align 4
  br label %267

264:                                              ; preds = %255, %252
  %265 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %266 = call i32 @snd_usbmidi_create_endpoints(%struct.snd_usb_midi* %265, %struct.snd_usb_midi_endpoint_info* %23)
  store i32 %266, i32* %18, align 4
  br label %267

267:                                              ; preds = %264, %260
  %268 = load i32, i32* %18, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  br label %283

271:                                              ; preds = %267
  %272 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %273 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %272, i32 0, i32 2
  %274 = load %struct.usb_interface*, %struct.usb_interface** %273, align 8
  %275 = call i32 @usb_autopm_get_interface_no_resume(%struct.usb_interface* %274)
  %276 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %277 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %276, i32 0, i32 1
  %278 = load %struct.list_head*, %struct.list_head** %9, align 8
  %279 = call i32 @list_add_tail(i32* %277, %struct.list_head* %278)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %285

280:                                              ; preds = %251, %214
  %281 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %12, align 8
  %282 = call i32 @kfree(%struct.snd_usb_midi* %281)
  br label %283

283:                                              ; preds = %280, %270
  %284 = load i32, i32* %18, align 4
  store i32 %284, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %285

285:                                              ; preds = %283, %271, %28
  %286 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %286)
  %287 = load i32, i32* %6, align 4
  ret i32 %287
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.snd_usb_midi* @kzalloc(i32, i32) #2

declare dso_local %struct.TYPE_7__* @interface_to_usbdev(%struct.usb_interface*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @init_rwsem(i32*) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @USB_ID(i32, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @timer_setup(i32*, i32, i32) #2

declare dso_local i32 @memset(%struct.snd_usb_midi_endpoint_info*, i32, i32) #2

declare dso_local i32 @snd_usbmidi_get_ms_info(%struct.snd_usb_midi*, %struct.snd_usb_midi_endpoint_info*) #2

declare dso_local i32 @memcpy(%struct.snd_usb_midi_endpoint_info*, i32, i32) #2

declare dso_local i32 @snd_usbmidi_detect_endpoints(%struct.snd_usb_midi*, %struct.snd_usb_midi_endpoint_info*, i32) #2

declare dso_local i32 @snd_usbmidi_detect_yamaha(%struct.snd_usb_midi*, %struct.snd_usb_midi_endpoint_info*) #2

declare dso_local i32 @snd_usbmidi_detect_roland(%struct.snd_usb_midi*, %struct.snd_usb_midi_endpoint_info*) #2

declare dso_local i32 @snd_usbmidi_detect_per_port_endpoints(%struct.snd_usb_midi*, %struct.snd_usb_midi_endpoint_info*) #2

declare dso_local i32 @usb_set_interface(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @usb_control_msg(%struct.TYPE_7__*, i32, i32, i32, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i64 @hweight16(i32) #2

declare dso_local i32 @snd_usbmidi_create_rawmidi(%struct.snd_usb_midi*, i32, i32) #2

declare dso_local i32 @snd_usbmidi_create_endpoints_midiman(%struct.snd_usb_midi*, %struct.snd_usb_midi_endpoint_info*) #2

declare dso_local i32 @snd_usbmidi_create_endpoints(%struct.snd_usb_midi*, %struct.snd_usb_midi_endpoint_info*) #2

declare dso_local i32 @usb_autopm_get_interface_no_resume(%struct.usb_interface*) #2

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #2

declare dso_local i32 @kfree(%struct.snd_usb_midi*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
