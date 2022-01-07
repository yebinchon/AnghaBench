; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi.c_snd_seq_midisynth_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi.c_snd_seq_midisynth_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_port_info = type { i32, i32, i32, i64, i32, i8*, i32, i32, i32, i32, i32*, i32, %struct.snd_seq_port_info**, %struct.TYPE_4__, %struct.snd_seq_port_info*, i32, i32, i32, i32, i32, %struct.snd_seq_port_info*, i32, i32, i8* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.device = type { i32 }
%struct.snd_seq_device = type { i32, %struct.snd_card*, %struct.snd_rawmidi* }
%struct.snd_card = type { i64, i64* }
%struct.snd_rawmidi = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.snd_rawmidi*, i32, %struct.snd_seq_port_info*)* }
%struct.seq_midisynth_client = type { i32, i32, i32, i64, i32, i8*, i32, i32, i32, i32, i32*, i32, %struct.seq_midisynth_client**, %struct.TYPE_4__, %struct.seq_midisynth_client*, i32, i32, i32, i32, i32, %struct.seq_midisynth_client*, i32, i32, i8* }
%struct.seq_midisynth = type { i32, i32, i32, i64, i32, i8*, i32, i32, i32, i32, i32*, i32, %struct.seq_midisynth**, %struct.TYPE_4__, %struct.seq_midisynth*, i32, i32, i32, i32, i32, %struct.seq_midisynth*, i32, i32, i8* }
%struct.snd_rawmidi_info = type { i32, i32, i32, i64, i32, i8*, i32, i32, i32, i32, i32*, i32, %struct.snd_rawmidi_info**, %struct.TYPE_4__, %struct.snd_rawmidi_info*, i32, i32, i32, i32, i32, %struct.snd_rawmidi_info*, i32, i32, i8* }
%struct.snd_seq_port_callback = type { i32, i32, i32, i64, i32, i8*, i32, i32, i32, i32, i32*, i32, %struct.snd_seq_port_callback**, %struct.TYPE_4__, %struct.snd_seq_port_callback*, i32, i32, i32, i32, i32, %struct.snd_seq_port_callback*, i32, i32, i8* }

@SNDRV_RAWMIDI_DEVICES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i8* null, align 8
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@register_mutex = common dso_local global i32 0, align 4
@synths = common dso_local global %struct.snd_seq_port_info** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"External MIDI\00", align 1
@SNDRV_SEQ_PORT_FLG_GIVEN_PORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-%u\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"MIDI %d-%d-%u\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"MIDI %d-%d\00", align 1
@SNDRV_RAWMIDI_INFO_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_WRITE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_SYNC_WRITE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_SUBS_WRITE = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_INPUT = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_READ = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_SYNC_READ = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_SUBS_READ = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_HARDWARE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_PORT = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@midisynth_subscribe = common dso_local global i32 0, align 4
@midisynth_unsubscribe = common dso_local global i32 0, align 4
@midisynth_use = common dso_local global i32 0, align 4
@midisynth_unuse = common dso_local global i32 0, align 4
@event_process_midi = common dso_local global i32 0, align 4
@SNDRV_SEQ_IOCTL_CREATE_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @snd_seq_midisynth_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_seq_midisynth_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.snd_seq_device*, align 8
  %5 = alloca %struct.seq_midisynth_client*, align 8
  %6 = alloca %struct.seq_midisynth*, align 8
  %7 = alloca %struct.seq_midisynth*, align 8
  %8 = alloca %struct.snd_seq_port_info*, align 8
  %9 = alloca %struct.snd_rawmidi_info*, align 8
  %10 = alloca %struct.snd_rawmidi*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.snd_seq_port_callback, align 8
  %15 = alloca %struct.snd_card*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call %struct.snd_seq_device* @to_seq_dev(%struct.device* %19)
  store %struct.snd_seq_device* %20, %struct.snd_seq_device** %4, align 8
  %21 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %22 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %21, i32 0, i32 2
  %23 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %22, align 8
  store %struct.snd_rawmidi* %23, %struct.snd_rawmidi** %10, align 8
  store i32 0, i32* %11, align 4
  %24 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %25 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %24, i32 0, i32 1
  %26 = load %struct.snd_card*, %struct.snd_card** %25, align 8
  store %struct.snd_card* %26, %struct.snd_card** %15, align 8
  %27 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %28 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %30 = load %struct.snd_card*, %struct.snd_card** %15, align 8
  %31 = icmp ne %struct.snd_card* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %1
  %33 = load i32, i32* %16, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* @SNDRV_RAWMIDI_DEVICES, align 4
  %38 = icmp sge i32 %36, %37
  br label %39

39:                                               ; preds = %35, %32, %1
  %40 = phi i1 [ true, %32 ], [ true, %1 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @snd_BUG_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %537

47:                                               ; preds = %39
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.snd_seq_port_info* @kmalloc(i32 152, i32 %48)
  %50 = bitcast %struct.snd_seq_port_info* %49 to %struct.snd_rawmidi_info*
  store %struct.snd_rawmidi_info* %50, %struct.snd_rawmidi_info** %9, align 8
  %51 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %52 = icmp ne %struct.snd_rawmidi_info* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %537

56:                                               ; preds = %47
  %57 = load i32, i32* %16, align 4
  %58 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %59 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** @SNDRV_RAWMIDI_STREAM_OUTPUT, align 8
  %61 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %62 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %61, i32 0, i32 23
  store i8* %60, i8** %62, align 8
  %63 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %64 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.snd_card*, %struct.snd_card** %15, align 8
  %66 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %67 = bitcast %struct.snd_rawmidi_info* %66 to %struct.snd_seq_port_info*
  %68 = call i64 @snd_rawmidi_info_select(%struct.snd_card* %65, %struct.snd_seq_port_info* %67)
  %69 = icmp sge i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %56
  %71 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %72 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %18, align 4
  br label %74

74:                                               ; preds = %70, %56
  %75 = load i8*, i8** @SNDRV_RAWMIDI_STREAM_INPUT, align 8
  %76 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %77 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %76, i32 0, i32 23
  store i8* %75, i8** %77, align 8
  %78 = load %struct.snd_card*, %struct.snd_card** %15, align 8
  %79 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %80 = bitcast %struct.snd_rawmidi_info* %79 to %struct.snd_seq_port_info*
  %81 = call i64 @snd_rawmidi_info_select(%struct.snd_card* %78, %struct.snd_seq_port_info* %80)
  %82 = icmp sge i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %85 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %17, align 4
  br label %87

87:                                               ; preds = %83, %74
  %88 = load i32, i32* %18, align 4
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %17, align 4
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %92, %87
  %95 = load i32, i32* %13, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %99 = bitcast %struct.snd_rawmidi_info* %98 to %struct.snd_seq_port_info*
  %100 = call i32 @kfree(%struct.snd_seq_port_info* %99)
  %101 = load i32, i32* @ENODEV, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %537

103:                                              ; preds = %94
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @SNDRV_RAWMIDI_DEVICES, align 4
  %106 = sdiv i32 256, %105
  %107 = icmp ugt i32 %104, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* @SNDRV_RAWMIDI_DEVICES, align 4
  %110 = sdiv i32 256, %109
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %108, %103
  %112 = call i32 @mutex_lock(i32* @register_mutex)
  %113 = load %struct.snd_seq_port_info**, %struct.snd_seq_port_info*** @synths, align 8
  %114 = load %struct.snd_card*, %struct.snd_card** %15, align 8
  %115 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %113, i64 %116
  %118 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %117, align 8
  %119 = bitcast %struct.snd_seq_port_info* %118 to %struct.seq_midisynth_client*
  store %struct.seq_midisynth_client* %119, %struct.seq_midisynth_client** %5, align 8
  %120 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %121 = icmp eq %struct.seq_midisynth_client* %120, null
  br i1 %121, label %122, label %169

122:                                              ; preds = %111
  store i32 1, i32* %11, align 4
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = call %struct.snd_seq_port_info* @kzalloc(i32 152, i32 %123)
  %125 = bitcast %struct.snd_seq_port_info* %124 to %struct.seq_midisynth_client*
  store %struct.seq_midisynth_client* %125, %struct.seq_midisynth_client** %5, align 8
  %126 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %127 = icmp eq %struct.seq_midisynth_client* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = call i32 @mutex_unlock(i32* @register_mutex)
  %130 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %131 = bitcast %struct.snd_rawmidi_info* %130 to %struct.snd_seq_port_info*
  %132 = call i32 @kfree(%struct.snd_seq_port_info* %131)
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %537

135:                                              ; preds = %122
  %136 = load %struct.snd_card*, %struct.snd_card** %15, align 8
  %137 = load %struct.snd_card*, %struct.snd_card** %15, align 8
  %138 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %137, i32 0, i32 1
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %135
  %144 = load %struct.snd_card*, %struct.snd_card** %15, align 8
  %145 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %144, i32 0, i32 1
  %146 = load i64*, i64** %145, align 8
  %147 = bitcast i64* %146 to i8*
  br label %149

148:                                              ; preds = %135
  br label %149

149:                                              ; preds = %148, %143
  %150 = phi i8* [ %147, %143 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %148 ]
  %151 = call i64 @snd_seq_create_kernel_client(%struct.snd_card* %136, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %150)
  %152 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %153 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %152, i32 0, i32 3
  store i64 %151, i64* %153, align 8
  %154 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %155 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %149
  %159 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %160 = bitcast %struct.seq_midisynth_client* %159 to %struct.snd_seq_port_info*
  %161 = call i32 @kfree(%struct.snd_seq_port_info* %160)
  %162 = call i32 @mutex_unlock(i32* @register_mutex)
  %163 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %164 = bitcast %struct.snd_rawmidi_info* %163 to %struct.snd_seq_port_info*
  %165 = call i32 @kfree(%struct.snd_seq_port_info* %164)
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %537

168:                                              ; preds = %149
  br label %169

169:                                              ; preds = %168, %111
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* @GFP_KERNEL, align 4
  %172 = call %struct.snd_seq_port_info* @kcalloc(i32 %170, i32 152, i32 %171)
  %173 = bitcast %struct.snd_seq_port_info* %172 to %struct.seq_midisynth*
  store %struct.seq_midisynth* %173, %struct.seq_midisynth** %6, align 8
  %174 = load i32, i32* @GFP_KERNEL, align 4
  %175 = call %struct.snd_seq_port_info* @kmalloc(i32 152, i32 %174)
  store %struct.snd_seq_port_info* %175, %struct.snd_seq_port_info** %8, align 8
  %176 = load %struct.seq_midisynth*, %struct.seq_midisynth** %6, align 8
  %177 = icmp eq %struct.seq_midisynth* %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %169
  %179 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %180 = icmp eq %struct.snd_seq_port_info* %179, null
  br i1 %180, label %181, label %182

181:                                              ; preds = %178, %169
  br label %495

182:                                              ; preds = %178
  store i32 0, i32* %12, align 4
  br label %183

183:                                              ; preds = %455, %182
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp ult i32 %184, %185
  br i1 %186, label %187, label %458

187:                                              ; preds = %183
  %188 = load %struct.seq_midisynth*, %struct.seq_midisynth** %6, align 8
  %189 = load i32, i32* %12, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %188, i64 %190
  store %struct.seq_midisynth* %191, %struct.seq_midisynth** %7, align 8
  %192 = load %struct.seq_midisynth*, %struct.seq_midisynth** %7, align 8
  %193 = bitcast %struct.seq_midisynth* %192 to %struct.snd_seq_port_info*
  %194 = load %struct.snd_card*, %struct.snd_card** %15, align 8
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %12, align 4
  %197 = call i64 @snd_seq_midisynth_new(%struct.snd_seq_port_info* %193, %struct.snd_card* %194, i32 %195, i32 %196)
  %198 = icmp slt i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %187
  br label %495

200:                                              ; preds = %187
  %201 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %202 = call i32 @memset(%struct.snd_seq_port_info* %201, i32 0, i32 152)
  %203 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %204 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %207 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %206, i32 0, i32 13
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  store i64 %205, i64* %208, align 8
  %209 = load i32, i32* %16, align 4
  %210 = load i32, i32* @SNDRV_RAWMIDI_DEVICES, align 4
  %211 = sdiv i32 256, %210
  %212 = mul nsw i32 %209, %211
  %213 = load i32, i32* %12, align 4
  %214 = add i32 %212, %213
  %215 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %216 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %215, i32 0, i32 13
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 1
  store i32 %214, i32* %217, align 8
  %218 = load i32, i32* @SNDRV_SEQ_PORT_FLG_GIVEN_PORT, align 4
  %219 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %220 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %219, i32 0, i32 4
  store i32 %218, i32* %220, align 8
  %221 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %222 = bitcast %struct.snd_rawmidi_info* %221 to %struct.snd_seq_port_info*
  %223 = call i32 @memset(%struct.snd_seq_port_info* %222, i32 0, i32 152)
  %224 = load i32, i32* %16, align 4
  %225 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %226 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* %18, align 4
  %229 = icmp ult i32 %227, %228
  br i1 %229, label %230, label %234

230:                                              ; preds = %200
  %231 = load i8*, i8** @SNDRV_RAWMIDI_STREAM_OUTPUT, align 8
  %232 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %233 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %232, i32 0, i32 23
  store i8* %231, i8** %233, align 8
  br label %238

234:                                              ; preds = %200
  %235 = load i8*, i8** @SNDRV_RAWMIDI_STREAM_INPUT, align 8
  %236 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %237 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %236, i32 0, i32 23
  store i8* %235, i8** %237, align 8
  br label %238

238:                                              ; preds = %234, %230
  %239 = load i32, i32* %12, align 4
  %240 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %241 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 4
  %242 = load %struct.snd_card*, %struct.snd_card** %15, align 8
  %243 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %244 = bitcast %struct.snd_rawmidi_info* %243 to %struct.snd_seq_port_info*
  %245 = call i64 @snd_rawmidi_info_select(%struct.snd_card* %242, %struct.snd_seq_port_info* %244)
  %246 = icmp sge i64 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %238
  %248 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %249 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %248, i32 0, i32 5
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %252 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %251, i32 0, i32 22
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @strcpy(i8* %250, i32 %253)
  br label %255

255:                                              ; preds = %247, %238
  %256 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %257 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %256, i32 0, i32 5
  %258 = load i8*, i8** %257, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 0
  %260 = load i8, i8* %259, align 1
  %261 = icmp ne i8 %260, 0
  br i1 %261, label %316, label %262

262:                                              ; preds = %255
  %263 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %264 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %263, i32 0, i32 5
  %265 = load i8*, i8** %264, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 0
  %267 = load i8, i8* %266, align 1
  %268 = icmp ne i8 %267, 0
  br i1 %268, label %269, label %290

269:                                              ; preds = %262
  %270 = load i32, i32* %13, align 4
  %271 = icmp ugt i32 %270, 1
  br i1 %271, label %272, label %281

272:                                              ; preds = %269
  %273 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %274 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %273, i32 0, i32 5
  %275 = load i8*, i8** %274, align 8
  %276 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %277 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %276, i32 0, i32 5
  %278 = load i8*, i8** %277, align 8
  %279 = load i32, i32* %12, align 4
  %280 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %275, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %278, i32 %279)
  br label %289

281:                                              ; preds = %269
  %282 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %283 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %282, i32 0, i32 5
  %284 = load i8*, i8** %283, align 8
  %285 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %286 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %285, i32 0, i32 5
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %284, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %287)
  br label %289

289:                                              ; preds = %281, %272
  br label %315

290:                                              ; preds = %262
  %291 = load i32, i32* %13, align 4
  %292 = icmp ugt i32 %291, 1
  br i1 %292, label %293, label %304

293:                                              ; preds = %290
  %294 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %295 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %294, i32 0, i32 5
  %296 = load i8*, i8** %295, align 8
  %297 = load %struct.snd_card*, %struct.snd_card** %15, align 8
  %298 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = trunc i64 %299 to i32
  %301 = load i32, i32* %16, align 4
  %302 = load i32, i32* %12, align 4
  %303 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %296, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %300, i32 %301, i32 %302)
  br label %314

304:                                              ; preds = %290
  %305 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %306 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %305, i32 0, i32 5
  %307 = load i8*, i8** %306, align 8
  %308 = load %struct.snd_card*, %struct.snd_card** %15, align 8
  %309 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = trunc i64 %310 to i32
  %312 = load i32, i32* %16, align 4
  %313 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %307, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %311, i32 %312)
  br label %314

314:                                              ; preds = %304, %293
  br label %315

315:                                              ; preds = %314, %289
  br label %316

316:                                              ; preds = %315, %255
  %317 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %318 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @SNDRV_RAWMIDI_INFO_OUTPUT, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %337

323:                                              ; preds = %316
  %324 = load i32, i32* %12, align 4
  %325 = load i32, i32* %18, align 4
  %326 = icmp ult i32 %324, %325
  br i1 %326, label %327, label %337

327:                                              ; preds = %323
  %328 = load i32, i32* @SNDRV_SEQ_PORT_CAP_WRITE, align 4
  %329 = load i32, i32* @SNDRV_SEQ_PORT_CAP_SYNC_WRITE, align 4
  %330 = or i32 %328, %329
  %331 = load i32, i32* @SNDRV_SEQ_PORT_CAP_SUBS_WRITE, align 4
  %332 = or i32 %330, %331
  %333 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %334 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %333, i32 0, i32 6
  %335 = load i32, i32* %334, align 8
  %336 = or i32 %335, %332
  store i32 %336, i32* %334, align 8
  br label %337

337:                                              ; preds = %327, %323, %316
  %338 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %339 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %358

344:                                              ; preds = %337
  %345 = load i32, i32* %12, align 4
  %346 = load i32, i32* %17, align 4
  %347 = icmp ult i32 %345, %346
  br i1 %347, label %348, label %358

348:                                              ; preds = %344
  %349 = load i32, i32* @SNDRV_SEQ_PORT_CAP_READ, align 4
  %350 = load i32, i32* @SNDRV_SEQ_PORT_CAP_SYNC_READ, align 4
  %351 = or i32 %349, %350
  %352 = load i32, i32* @SNDRV_SEQ_PORT_CAP_SUBS_READ, align 4
  %353 = or i32 %351, %352
  %354 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %355 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %354, i32 0, i32 6
  %356 = load i32, i32* %355, align 8
  %357 = or i32 %356, %353
  store i32 %357, i32* %355, align 8
  br label %358

358:                                              ; preds = %348, %344, %337
  %359 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %360 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %359, i32 0, i32 6
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @SNDRV_SEQ_PORT_CAP_WRITE, align 4
  %363 = load i32, i32* @SNDRV_SEQ_PORT_CAP_READ, align 4
  %364 = or i32 %362, %363
  %365 = and i32 %361, %364
  %366 = load i32, i32* @SNDRV_SEQ_PORT_CAP_WRITE, align 4
  %367 = load i32, i32* @SNDRV_SEQ_PORT_CAP_READ, align 4
  %368 = or i32 %366, %367
  %369 = icmp eq i32 %365, %368
  br i1 %369, label %370, label %383

370:                                              ; preds = %358
  %371 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %372 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %371, i32 0, i32 4
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @SNDRV_RAWMIDI_INFO_DUPLEX, align 4
  %375 = and i32 %373, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %370
  %378 = load i32, i32* @SNDRV_SEQ_PORT_CAP_DUPLEX, align 4
  %379 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %380 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %379, i32 0, i32 6
  %381 = load i32, i32* %380, align 8
  %382 = or i32 %381, %378
  store i32 %382, i32* %380, align 8
  br label %383

383:                                              ; preds = %377, %370, %358
  %384 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC, align 4
  %385 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_HARDWARE, align 4
  %386 = or i32 %384, %385
  %387 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_PORT, align 4
  %388 = or i32 %386, %387
  %389 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %390 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %389, i32 0, i32 7
  store i32 %388, i32* %390, align 4
  %391 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %392 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %391, i32 0, i32 8
  store i32 16, i32* %392, align 8
  %393 = bitcast %struct.snd_seq_port_callback* %14 to %struct.snd_seq_port_info*
  %394 = call i32 @memset(%struct.snd_seq_port_info* %393, i32 0, i32 152)
  %395 = load i32, i32* @THIS_MODULE, align 4
  %396 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %14, i32 0, i32 21
  store i32 %395, i32* %396, align 8
  %397 = load %struct.seq_midisynth*, %struct.seq_midisynth** %7, align 8
  %398 = bitcast %struct.seq_midisynth* %397 to %struct.snd_seq_port_callback*
  %399 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %14, i32 0, i32 20
  store %struct.snd_seq_port_callback* %398, %struct.snd_seq_port_callback** %399, align 8
  %400 = load i32, i32* @midisynth_subscribe, align 4
  %401 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %14, i32 0, i32 19
  store i32 %400, i32* %401, align 8
  %402 = load i32, i32* @midisynth_unsubscribe, align 4
  %403 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %14, i32 0, i32 18
  store i32 %402, i32* %403, align 4
  %404 = load i32, i32* @midisynth_use, align 4
  %405 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %14, i32 0, i32 17
  store i32 %404, i32* %405, align 8
  %406 = load i32, i32* @midisynth_unuse, align 4
  %407 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %14, i32 0, i32 16
  store i32 %406, i32* %407, align 4
  %408 = load i32, i32* @event_process_midi, align 4
  %409 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %14, i32 0, i32 15
  store i32 %408, i32* %409, align 8
  %410 = bitcast %struct.snd_seq_port_callback* %14 to %struct.snd_seq_port_info*
  %411 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %412 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %411, i32 0, i32 14
  store %struct.snd_seq_port_info* %410, %struct.snd_seq_port_info** %412, align 8
  %413 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %10, align 8
  %414 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %413, i32 0, i32 0
  %415 = load %struct.TYPE_3__*, %struct.TYPE_3__** %414, align 8
  %416 = icmp ne %struct.TYPE_3__* %415, null
  br i1 %416, label %417, label %434

417:                                              ; preds = %383
  %418 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %10, align 8
  %419 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %418, i32 0, i32 0
  %420 = load %struct.TYPE_3__*, %struct.TYPE_3__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %420, i32 0, i32 0
  %422 = load i32 (%struct.snd_rawmidi*, i32, %struct.snd_seq_port_info*)*, i32 (%struct.snd_rawmidi*, i32, %struct.snd_seq_port_info*)** %421, align 8
  %423 = icmp ne i32 (%struct.snd_rawmidi*, i32, %struct.snd_seq_port_info*)* %422, null
  br i1 %423, label %424, label %434

424:                                              ; preds = %417
  %425 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %10, align 8
  %426 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %425, i32 0, i32 0
  %427 = load %struct.TYPE_3__*, %struct.TYPE_3__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %427, i32 0, i32 0
  %429 = load i32 (%struct.snd_rawmidi*, i32, %struct.snd_seq_port_info*)*, i32 (%struct.snd_rawmidi*, i32, %struct.snd_seq_port_info*)** %428, align 8
  %430 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %10, align 8
  %431 = load i32, i32* %12, align 4
  %432 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %433 = call i32 %429(%struct.snd_rawmidi* %430, i32 %431, %struct.snd_seq_port_info* %432)
  br label %434

434:                                              ; preds = %424, %417, %383
  %435 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %436 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %435, i32 0, i32 3
  %437 = load i64, i64* %436, align 8
  %438 = load i32, i32* @SNDRV_SEQ_IOCTL_CREATE_PORT, align 4
  %439 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %440 = call i64 @snd_seq_kernel_client_ctl(i64 %437, i32 %438, %struct.snd_seq_port_info* %439)
  %441 = icmp slt i64 %440, 0
  br i1 %441, label %442, label %443

442:                                              ; preds = %434
  br label %495

443:                                              ; preds = %434
  %444 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %445 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %444, i32 0, i32 3
  %446 = load i64, i64* %445, align 8
  %447 = load %struct.seq_midisynth*, %struct.seq_midisynth** %7, align 8
  %448 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %447, i32 0, i32 3
  store i64 %446, i64* %448, align 8
  %449 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %450 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %449, i32 0, i32 13
  %451 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 8
  %453 = load %struct.seq_midisynth*, %struct.seq_midisynth** %7, align 8
  %454 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %453, i32 0, i32 9
  store i32 %452, i32* %454, align 4
  br label %455

455:                                              ; preds = %443
  %456 = load i32, i32* %12, align 4
  %457 = add i32 %456, 1
  store i32 %457, i32* %12, align 4
  br label %183

458:                                              ; preds = %183
  %459 = load i32, i32* %13, align 4
  %460 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %461 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %460, i32 0, i32 10
  %462 = load i32*, i32** %461, align 8
  %463 = load i32, i32* %16, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %462, i64 %464
  store i32 %459, i32* %465, align 4
  %466 = load %struct.seq_midisynth*, %struct.seq_midisynth** %6, align 8
  %467 = bitcast %struct.seq_midisynth* %466 to %struct.seq_midisynth_client*
  %468 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %469 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %468, i32 0, i32 12
  %470 = load %struct.seq_midisynth_client**, %struct.seq_midisynth_client*** %469, align 8
  %471 = load i32, i32* %16, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %470, i64 %472
  store %struct.seq_midisynth_client* %467, %struct.seq_midisynth_client** %473, align 8
  %474 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %475 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %474, i32 0, i32 11
  %476 = load i32, i32* %475, align 8
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %475, align 8
  %478 = load i32, i32* %11, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %488

480:                                              ; preds = %458
  %481 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %482 = bitcast %struct.seq_midisynth_client* %481 to %struct.snd_seq_port_info*
  %483 = load %struct.snd_seq_port_info**, %struct.snd_seq_port_info*** @synths, align 8
  %484 = load %struct.snd_card*, %struct.snd_card** %15, align 8
  %485 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %484, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = getelementptr inbounds %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %483, i64 %486
  store %struct.snd_seq_port_info* %482, %struct.snd_seq_port_info** %487, align 8
  br label %488

488:                                              ; preds = %480, %458
  %489 = call i32 @mutex_unlock(i32* @register_mutex)
  %490 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %491 = bitcast %struct.snd_rawmidi_info* %490 to %struct.snd_seq_port_info*
  %492 = call i32 @kfree(%struct.snd_seq_port_info* %491)
  %493 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %494 = call i32 @kfree(%struct.snd_seq_port_info* %493)
  store i32 0, i32* %2, align 4
  br label %537

495:                                              ; preds = %442, %199, %181
  %496 = load %struct.seq_midisynth*, %struct.seq_midisynth** %6, align 8
  %497 = icmp ne %struct.seq_midisynth* %496, null
  br i1 %497, label %498, label %517

498:                                              ; preds = %495
  store i32 0, i32* %12, align 4
  br label %499

499:                                              ; preds = %510, %498
  %500 = load i32, i32* %12, align 4
  %501 = load i32, i32* %13, align 4
  %502 = icmp ult i32 %500, %501
  br i1 %502, label %503, label %513

503:                                              ; preds = %499
  %504 = load %struct.seq_midisynth*, %struct.seq_midisynth** %6, align 8
  %505 = load i32, i32* %12, align 4
  %506 = zext i32 %505 to i64
  %507 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %504, i64 %506
  %508 = bitcast %struct.seq_midisynth* %507 to %struct.snd_seq_port_info*
  %509 = call i32 @snd_seq_midisynth_delete(%struct.snd_seq_port_info* %508)
  br label %510

510:                                              ; preds = %503
  %511 = load i32, i32* %12, align 4
  %512 = add i32 %511, 1
  store i32 %512, i32* %12, align 4
  br label %499

513:                                              ; preds = %499
  %514 = load %struct.seq_midisynth*, %struct.seq_midisynth** %6, align 8
  %515 = bitcast %struct.seq_midisynth* %514 to %struct.snd_seq_port_info*
  %516 = call i32 @kfree(%struct.snd_seq_port_info* %515)
  br label %517

517:                                              ; preds = %513, %495
  %518 = load i32, i32* %11, align 4
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %528

520:                                              ; preds = %517
  %521 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %522 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %521, i32 0, i32 3
  %523 = load i64, i64* %522, align 8
  %524 = call i32 @snd_seq_delete_kernel_client(i64 %523)
  %525 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %526 = bitcast %struct.seq_midisynth_client* %525 to %struct.snd_seq_port_info*
  %527 = call i32 @kfree(%struct.snd_seq_port_info* %526)
  br label %528

528:                                              ; preds = %520, %517
  %529 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %9, align 8
  %530 = bitcast %struct.snd_rawmidi_info* %529 to %struct.snd_seq_port_info*
  %531 = call i32 @kfree(%struct.snd_seq_port_info* %530)
  %532 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %8, align 8
  %533 = call i32 @kfree(%struct.snd_seq_port_info* %532)
  %534 = call i32 @mutex_unlock(i32* @register_mutex)
  %535 = load i32, i32* @ENOMEM, align 4
  %536 = sub nsw i32 0, %535
  store i32 %536, i32* %2, align 4
  br label %537

537:                                              ; preds = %528, %488, %158, %128, %97, %53, %44
  %538 = load i32, i32* %2, align 4
  ret i32 %538
}

declare dso_local %struct.snd_seq_device* @to_seq_dev(%struct.device*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.snd_seq_port_info* @kmalloc(i32, i32) #1

declare dso_local i64 @snd_rawmidi_info_select(%struct.snd_card*, %struct.snd_seq_port_info*) #1

declare dso_local i32 @kfree(%struct.snd_seq_port_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.snd_seq_port_info* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @snd_seq_create_kernel_client(%struct.snd_card*, i32, i8*, i8*) #1

declare dso_local %struct.snd_seq_port_info* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @snd_seq_midisynth_new(%struct.snd_seq_port_info*, %struct.snd_card*, i32, i32) #1

declare dso_local i32 @memset(%struct.snd_seq_port_info*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, ...) #1

declare dso_local i64 @snd_seq_kernel_client_ctl(i64, i32, %struct.snd_seq_port_info*) #1

declare dso_local i32 @snd_seq_midisynth_delete(%struct.snd_seq_port_info*) #1

declare dso_local i32 @snd_seq_delete_kernel_client(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
