; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpicmn.c_hpi_check_control_cache_single.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpicmn.c_hpi_check_control_cache_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i32, i32 }
%struct.hpi_control_cache_single = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_45__, %struct.TYPE_44__, %struct.TYPE_43__, %struct.TYPE_41__, %struct.TYPE_40__, %struct.TYPE_39__, %struct.TYPE_38__, %struct.TYPE_34__ }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_44__ = type { i32, i32 }
%struct.TYPE_43__ = type { i8*, i32, i32 }
%struct.TYPE_41__ = type { i8** }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_39__ = type { i32, i32 }
%struct.TYPE_38__ = type { i32, i8** }
%struct.TYPE_34__ = type { i8**, i8** }
%struct.hpi_message = type { i32, i32, %struct.TYPE_36__, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32, i32 }
%struct.hpi_response = type { i32, i32, i32, i64, %struct.TYPE_31__, i8* }
%struct.TYPE_31__ = type { %struct.TYPE_30__, %struct.TYPE_28__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__, %struct.TYPE_42__ }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_42__ = type { i8* }
%struct.TYPE_28__ = type { i32, i8**, i32 }
%struct.hpi_control_cache_pad = type { i32, i32, i32 }

@HPI_METER_PEAK = common dso_local global i32 0, align 4
@HPI_METER_RMS = common dso_local global i32 0, align 4
@HPI_CACHE_INVALID_SHORT = common dso_local global i8* null, align 8
@HPI_ERROR_INVALID_CONTROL_ATTRIBUTE = common dso_local global i8* null, align 8
@HPI_METER_MINIMUM = common dso_local global i8* null, align 8
@HPI_VOLUME_GAIN = common dso_local global i32 0, align 4
@HPI_VOLUME_MUTE = common dso_local global i32 0, align 4
@HPI_VOLUME_FLAG_HAS_MUTE = common dso_local global i32 0, align 4
@HPI_VOLUME_FLAG_MUTED = common dso_local global i32 0, align 4
@HPI_BITMASK_ALL_CHANNELS = common dso_local global i32 0, align 4
@HPI_MULTIPLEXER_SOURCE = common dso_local global i32 0, align 4
@HPI_CHANNEL_MODE_MODE = common dso_local global i32 0, align 4
@HPI_LEVEL_GAIN = common dso_local global i32 0, align 4
@HPI_TUNER_FREQ = common dso_local global i32 0, align 4
@HPI_TUNER_BAND = common dso_local global i32 0, align 4
@HPI_TUNER_LEVEL_AVG = common dso_local global i32 0, align 4
@HPI_AESEBURX_ERRORSTATUS = common dso_local global i32 0, align 4
@HPI_AESEBURX_FORMAT = common dso_local global i32 0, align 4
@HPI_AESEBUTX_FORMAT = common dso_local global i32 0, align 4
@HPI_TONEDETECTOR_STATE = common dso_local global i32 0, align 4
@HPI_SILENCEDETECTOR_STATE = common dso_local global i32 0, align 4
@HPI_MICROPHONE_PHANTOM_POWER = common dso_local global i32 0, align 4
@HPI_SAMPLECLOCK_SOURCE = common dso_local global i32 0, align 4
@HPI_SAMPLECLOCK_SOURCE_INDEX = common dso_local global i32 0, align 4
@HPI_CACHE_INVALID_UINT16 = common dso_local global i32 0, align 4
@HPI_SAMPLECLOCK_SAMPLERATE = common dso_local global i32 0, align 4
@HPI_PAD_PROGRAM_ID = common dso_local global i32 0, align 4
@HPI_PAD_PROGRAM_TYPE = common dso_local global i32 0, align 4
@pad_desc = common dso_local global %struct.TYPE_37__* null, align 8
@HPI_ERROR_INVALID_CONTROL_VALUE = common dso_local global i8* null, align 8
@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s Adap %d, Ctl %d, Type %d, Attr %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Cached\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Uncached\00", align 1
@HPI_TYPE_RESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @hpi_check_control_cache_single(%struct.hpi_control_cache_single* %0, %struct.hpi_message* %1, %struct.hpi_response* %2) #0 {
  %4 = alloca %struct.hpi_control_cache_single*, align 8
  %5 = alloca %struct.hpi_message*, align 8
  %6 = alloca %struct.hpi_response*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct.hpi_control_cache_pad*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.hpi_control_cache_single* %0, %struct.hpi_control_cache_single** %4, align 8
  store %struct.hpi_message* %1, %struct.hpi_message** %5, align 8
  store %struct.hpi_response* %2, %struct.hpi_response** %6, align 8
  store i16 1, i16* %8, align 2
  store i64 8, i64* %7, align 8
  %16 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %17 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %703 [
    i32 136, label %21
    i32 128, label %123
    i32 134, label %208
    i32 138, label %237
    i32 137, label %257
    i32 129, label %294
    i32 140, label %371
    i32 139, label %410
    i32 130, label %430
    i32 131, label %450
    i32 135, label %470
    i32 132, label %490
    i32 133, label %565
  ]

21:                                               ; preds = %3
  %22 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %23 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @HPI_METER_PEAK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %21
  %30 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %31 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %31, i32 0, i32 12
  %33 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %32, i32 0, i32 1
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %38 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  store i8* %36, i8** %42, align 8
  %43 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %44 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %44, i32 0, i32 12
  %46 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %45, i32 0, i32 1
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %51 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 1
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  store i8* %49, i8** %55, align 8
  br label %122

56:                                               ; preds = %21
  %57 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %58 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @HPI_METER_RMS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %120

64:                                               ; preds = %56
  %65 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %66 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %66, i32 0, i32 12
  %68 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** @HPI_CACHE_INVALID_SHORT, align 8
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %64
  %75 = load i8*, i8** @HPI_ERROR_INVALID_CONTROL_ATTRIBUTE, align 8
  %76 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %77 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @HPI_METER_MINIMUM, align 8
  %79 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %80 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 1
  %83 = load i8**, i8*** %82, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  store i8* %78, i8** %84, align 8
  %85 = load i8*, i8** @HPI_METER_MINIMUM, align 8
  %86 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %87 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 1
  %90 = load i8**, i8*** %89, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 1
  store i8* %85, i8** %91, align 8
  br label %119

92:                                               ; preds = %64
  %93 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %94 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %94, i32 0, i32 12
  %96 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %95, i32 0, i32 0
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %101 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 1
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 0
  store i8* %99, i8** %105, align 8
  %106 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %107 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %107, i32 0, i32 12
  %109 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %108, i32 0, i32 0
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 1
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %114 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 1
  %117 = load i8**, i8*** %116, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 1
  store i8* %112, i8** %118, align 8
  br label %119

119:                                              ; preds = %92, %74
  br label %121

120:                                              ; preds = %56
  store i16 0, i16* %8, align 2
  br label %121

121:                                              ; preds = %120, %119
  br label %122

122:                                              ; preds = %121, %29
  br label %704

123:                                              ; preds = %3
  %124 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %125 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @HPI_VOLUME_GAIN, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %158

131:                                              ; preds = %123
  %132 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %133 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %133, i32 0, i32 11
  %135 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %134, i32 0, i32 1
  %136 = load i8**, i8*** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 0
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %140 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 1
  %143 = load i8**, i8*** %142, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 0
  store i8* %138, i8** %144, align 8
  %145 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %146 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %146, i32 0, i32 11
  %148 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %147, i32 0, i32 1
  %149 = load i8**, i8*** %148, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 1
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %153 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 1
  %156 = load i8**, i8*** %155, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 1
  store i8* %151, i8** %157, align 8
  br label %207

158:                                              ; preds = %123
  %159 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %160 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @HPI_VOLUME_MUTE, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %205

166:                                              ; preds = %158
  %167 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %168 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %168, i32 0, i32 11
  %170 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @HPI_VOLUME_FLAG_HAS_MUTE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %196

175:                                              ; preds = %166
  %176 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %177 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %177, i32 0, i32 11
  %179 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @HPI_VOLUME_FLAG_MUTED, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %175
  %185 = load i32, i32* @HPI_BITMASK_ALL_CHANNELS, align 4
  %186 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %187 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 0
  store i32 %185, i32* %189, align 8
  br label %195

190:                                              ; preds = %175
  %191 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %192 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %193, i32 0, i32 0
  store i32 0, i32* %194, align 8
  br label %195

195:                                              ; preds = %190, %184
  br label %204

196:                                              ; preds = %166
  %197 = load i8*, i8** @HPI_ERROR_INVALID_CONTROL_ATTRIBUTE, align 8
  %198 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %199 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %198, i32 0, i32 5
  store i8* %197, i8** %199, align 8
  %200 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %201 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 0
  store i32 0, i32* %203, align 8
  br label %204

204:                                              ; preds = %196, %195
  br label %206

205:                                              ; preds = %158
  store i16 0, i16* %8, align 2
  br label %206

206:                                              ; preds = %205, %204
  br label %207

207:                                              ; preds = %206, %131
  br label %704

208:                                              ; preds = %3
  %209 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %210 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @HPI_MULTIPLEXER_SOURCE, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %235

216:                                              ; preds = %208
  %217 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %218 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %218, i32 0, i32 10
  %220 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %223 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 0
  store i32 %221, i32* %225, align 8
  %226 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %227 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %227, i32 0, i32 10
  %229 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %232 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i32 0, i32 2
  store i32 %230, i32* %234, align 8
  br label %236

235:                                              ; preds = %208
  store i16 0, i16* %8, align 2
  br label %236

236:                                              ; preds = %235, %216
  br label %704

237:                                              ; preds = %3
  %238 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %239 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @HPI_CHANNEL_MODE_MODE, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %255

245:                                              ; preds = %237
  %246 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %247 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %247, i32 0, i32 9
  %249 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %252 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %253, i32 0, i32 0
  store i32 %250, i32* %254, align 8
  br label %256

255:                                              ; preds = %237
  store i16 0, i16* %8, align 2
  br label %256

256:                                              ; preds = %255, %245
  br label %704

257:                                              ; preds = %3
  %258 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %259 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @HPI_LEVEL_GAIN, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %292

265:                                              ; preds = %257
  %266 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %267 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %267, i32 0, i32 8
  %269 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %268, i32 0, i32 0
  %270 = load i8**, i8*** %269, align 8
  %271 = getelementptr inbounds i8*, i8** %270, i64 0
  %272 = load i8*, i8** %271, align 8
  %273 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %274 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %275, i32 0, i32 1
  %277 = load i8**, i8*** %276, align 8
  %278 = getelementptr inbounds i8*, i8** %277, i64 0
  store i8* %272, i8** %278, align 8
  %279 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %280 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %280, i32 0, i32 8
  %282 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %281, i32 0, i32 0
  %283 = load i8**, i8*** %282, align 8
  %284 = getelementptr inbounds i8*, i8** %283, i64 1
  %285 = load i8*, i8** %284, align 8
  %286 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %287 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %288, i32 0, i32 1
  %290 = load i8**, i8*** %289, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i64 1
  store i8* %285, i8** %291, align 8
  br label %293

292:                                              ; preds = %257
  store i16 0, i16* %8, align 2
  br label %293

293:                                              ; preds = %292, %265
  br label %704

294:                                              ; preds = %3
  %295 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %296 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @HPI_TUNER_FREQ, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %312

302:                                              ; preds = %294
  %303 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %304 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %304, i32 0, i32 7
  %306 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %309 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %308, i32 0, i32 4
  %310 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %310, i32 0, i32 0
  store i32 %307, i32* %311, align 8
  br label %370

312:                                              ; preds = %294
  %313 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %314 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @HPI_TUNER_BAND, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %320, label %330

320:                                              ; preds = %312
  %321 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %322 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %322, i32 0, i32 7
  %324 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %327 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %326, i32 0, i32 4
  %328 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %328, i32 0, i32 0
  store i32 %325, i32* %329, align 8
  br label %369

330:                                              ; preds = %312
  %331 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %332 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %331, i32 0, i32 2
  %333 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @HPI_TUNER_LEVEL_AVG, align 4
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %338, label %367

338:                                              ; preds = %330
  %339 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %340 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %340, i32 0, i32 7
  %342 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %341, i32 0, i32 0
  %343 = load i8*, i8** %342, align 8
  %344 = load i8*, i8** @HPI_CACHE_INVALID_SHORT, align 8
  %345 = icmp eq i8* %343, %344
  br i1 %345, label %346, label %355

346:                                              ; preds = %338
  %347 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %348 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %347, i32 0, i32 4
  %349 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %350, i32 0, i32 0
  store i8* null, i8** %351, align 8
  %352 = load i8*, i8** @HPI_ERROR_INVALID_CONTROL_ATTRIBUTE, align 8
  %353 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %354 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %353, i32 0, i32 5
  store i8* %352, i8** %354, align 8
  br label %366

355:                                              ; preds = %338
  %356 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %357 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %357, i32 0, i32 7
  %359 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %358, i32 0, i32 0
  %360 = load i8*, i8** %359, align 8
  %361 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %362 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %361, i32 0, i32 4
  %363 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %364, i32 0, i32 0
  store i8* %360, i8** %365, align 8
  br label %366

366:                                              ; preds = %355, %346
  br label %368

367:                                              ; preds = %330
  store i16 0, i16* %8, align 2
  br label %368

368:                                              ; preds = %367, %366
  br label %369

369:                                              ; preds = %368, %320
  br label %370

370:                                              ; preds = %369, %302
  br label %704

371:                                              ; preds = %3
  %372 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %373 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* @HPI_AESEBURX_ERRORSTATUS, align 4
  %378 = icmp eq i32 %376, %377
  br i1 %378, label %379, label %389

379:                                              ; preds = %371
  %380 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %381 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %381, i32 0, i32 6
  %383 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %386 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %385, i32 0, i32 4
  %387 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %387, i32 0, i32 0
  store i32 %384, i32* %388, align 8
  br label %409

389:                                              ; preds = %371
  %390 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %391 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %390, i32 0, i32 2
  %392 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* @HPI_AESEBURX_FORMAT, align 4
  %396 = icmp eq i32 %394, %395
  br i1 %396, label %397, label %407

397:                                              ; preds = %389
  %398 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %399 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %399, i32 0, i32 6
  %401 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %404 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %403, i32 0, i32 4
  %405 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %405, i32 0, i32 0
  store i32 %402, i32* %406, align 8
  br label %408

407:                                              ; preds = %389
  store i16 0, i16* %8, align 2
  br label %408

408:                                              ; preds = %407, %397
  br label %409

409:                                              ; preds = %408, %379
  br label %704

410:                                              ; preds = %3
  %411 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %412 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %411, i32 0, i32 2
  %413 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* @HPI_AESEBUTX_FORMAT, align 4
  %417 = icmp eq i32 %415, %416
  br i1 %417, label %418, label %428

418:                                              ; preds = %410
  %419 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %420 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %420, i32 0, i32 5
  %422 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %425 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %424, i32 0, i32 4
  %426 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %426, i32 0, i32 0
  store i32 %423, i32* %427, align 8
  br label %429

428:                                              ; preds = %410
  store i16 0, i16* %8, align 2
  br label %429

429:                                              ; preds = %428, %418
  br label %704

430:                                              ; preds = %3
  %431 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %432 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %431, i32 0, i32 2
  %433 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = load i32, i32* @HPI_TONEDETECTOR_STATE, align 4
  %437 = icmp eq i32 %435, %436
  br i1 %437, label %438, label %448

438:                                              ; preds = %430
  %439 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %440 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %440, i32 0, i32 4
  %442 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %445 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %444, i32 0, i32 4
  %446 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %445, i32 0, i32 1
  %447 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %446, i32 0, i32 0
  store i32 %443, i32* %447, align 8
  br label %449

448:                                              ; preds = %430
  store i16 0, i16* %8, align 2
  br label %449

449:                                              ; preds = %448, %438
  br label %704

450:                                              ; preds = %3
  %451 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %452 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %451, i32 0, i32 2
  %453 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = load i32, i32* @HPI_SILENCEDETECTOR_STATE, align 4
  %457 = icmp eq i32 %455, %456
  br i1 %457, label %458, label %468

458:                                              ; preds = %450
  %459 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %460 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %459, i32 0, i32 0
  %461 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %460, i32 0, i32 3
  %462 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %465 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %464, i32 0, i32 4
  %466 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %465, i32 0, i32 1
  %467 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %466, i32 0, i32 0
  store i32 %463, i32* %467, align 8
  br label %469

468:                                              ; preds = %450
  store i16 0, i16* %8, align 2
  br label %469

469:                                              ; preds = %468, %458
  br label %704

470:                                              ; preds = %3
  %471 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %472 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %471, i32 0, i32 2
  %473 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  %476 = load i32, i32* @HPI_MICROPHONE_PHANTOM_POWER, align 4
  %477 = icmp eq i32 %475, %476
  br i1 %477, label %478, label %488

478:                                              ; preds = %470
  %479 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %480 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %480, i32 0, i32 2
  %482 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 4
  %484 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %485 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %484, i32 0, i32 4
  %486 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %485, i32 0, i32 1
  %487 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %486, i32 0, i32 0
  store i32 %483, i32* %487, align 8
  br label %489

488:                                              ; preds = %470
  store i16 0, i16* %8, align 2
  br label %489

489:                                              ; preds = %488, %478
  br label %704

490:                                              ; preds = %3
  %491 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %492 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %491, i32 0, i32 2
  %493 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = load i32, i32* @HPI_SAMPLECLOCK_SOURCE, align 4
  %497 = icmp eq i32 %495, %496
  br i1 %497, label %498, label %508

498:                                              ; preds = %490
  %499 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %500 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %500, i32 0, i32 1
  %502 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %501, i32 0, i32 2
  %503 = load i32, i32* %502, align 8
  %504 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %505 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %504, i32 0, i32 4
  %506 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %505, i32 0, i32 1
  %507 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %506, i32 0, i32 0
  store i32 %503, i32* %507, align 8
  br label %564

508:                                              ; preds = %490
  %509 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %510 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %509, i32 0, i32 2
  %511 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = load i32, i32* @HPI_SAMPLECLOCK_SOURCE_INDEX, align 4
  %515 = icmp eq i32 %513, %514
  br i1 %515, label %516, label %543

516:                                              ; preds = %508
  %517 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %518 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %517, i32 0, i32 0
  %519 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = load i32, i32* @HPI_CACHE_INVALID_UINT16, align 4
  %523 = icmp eq i32 %521, %522
  br i1 %523, label %524, label %532

524:                                              ; preds = %516
  %525 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %526 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %525, i32 0, i32 4
  %527 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %526, i32 0, i32 1
  %528 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %527, i32 0, i32 0
  store i32 0, i32* %528, align 8
  %529 = load i8*, i8** @HPI_ERROR_INVALID_CONTROL_ATTRIBUTE, align 8
  %530 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %531 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %530, i32 0, i32 5
  store i8* %529, i8** %531, align 8
  br label %542

532:                                              ; preds = %516
  %533 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %534 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %534, i32 0, i32 1
  %536 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %535, i32 0, i32 1
  %537 = load i32, i32* %536, align 4
  %538 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %539 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %538, i32 0, i32 4
  %540 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %539, i32 0, i32 1
  %541 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %540, i32 0, i32 0
  store i32 %537, i32* %541, align 8
  br label %542

542:                                              ; preds = %532, %524
  br label %563

543:                                              ; preds = %508
  %544 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %545 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %544, i32 0, i32 2
  %546 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %545, i32 0, i32 0
  %547 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 4
  %549 = load i32, i32* @HPI_SAMPLECLOCK_SAMPLERATE, align 4
  %550 = icmp eq i32 %548, %549
  br i1 %550, label %551, label %561

551:                                              ; preds = %543
  %552 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %553 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %553, i32 0, i32 1
  %555 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 8
  %557 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %558 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %557, i32 0, i32 4
  %559 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %558, i32 0, i32 1
  %560 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %559, i32 0, i32 0
  store i32 %556, i32* %560, align 8
  br label %562

561:                                              ; preds = %543
  store i16 0, i16* %8, align 2
  br label %562

562:                                              ; preds = %561, %551
  br label %563

563:                                              ; preds = %562, %542
  br label %564

564:                                              ; preds = %563, %498
  br label %704

565:                                              ; preds = %3
  %566 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %567 = bitcast %struct.hpi_control_cache_single* %566 to %struct.hpi_control_cache_pad*
  store %struct.hpi_control_cache_pad* %567, %struct.hpi_control_cache_pad** %9, align 8
  %568 = load %struct.hpi_control_cache_pad*, %struct.hpi_control_cache_pad** %9, align 8
  %569 = getelementptr inbounds %struct.hpi_control_cache_pad, %struct.hpi_control_cache_pad* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 4
  %571 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %572 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %571, i32 0, i32 2
  %573 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %572, i32 0, i32 0
  %574 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %573, i32 0, i32 1
  %575 = load i32, i32* %574, align 4
  %576 = call i32 @HPI_CTL_ATTR_INDEX(i32 %575)
  %577 = shl i32 1, %576
  %578 = and i32 %570, %577
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %584, label %580

580:                                              ; preds = %565
  %581 = load i8*, i8** @HPI_ERROR_INVALID_CONTROL_ATTRIBUTE, align 8
  %582 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %583 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %582, i32 0, i32 5
  store i8* %581, i8** %583, align 8
  br label %704

584:                                              ; preds = %565
  %585 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %586 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %585, i32 0, i32 2
  %587 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %586, i32 0, i32 0
  %588 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %587, i32 0, i32 1
  %589 = load i32, i32* %588, align 4
  %590 = load i32, i32* @HPI_PAD_PROGRAM_ID, align 4
  %591 = icmp eq i32 %589, %590
  br i1 %591, label %592, label %600

592:                                              ; preds = %584
  %593 = load %struct.hpi_control_cache_pad*, %struct.hpi_control_cache_pad** %9, align 8
  %594 = getelementptr inbounds %struct.hpi_control_cache_pad, %struct.hpi_control_cache_pad* %593, i32 0, i32 2
  %595 = load i32, i32* %594, align 4
  %596 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %597 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %596, i32 0, i32 4
  %598 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %597, i32 0, i32 1
  %599 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %598, i32 0, i32 0
  store i32 %595, i32* %599, align 8
  br label %702

600:                                              ; preds = %584
  %601 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %602 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %601, i32 0, i32 2
  %603 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %602, i32 0, i32 0
  %604 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %603, i32 0, i32 1
  %605 = load i32, i32* %604, align 4
  %606 = load i32, i32* @HPI_PAD_PROGRAM_TYPE, align 4
  %607 = icmp eq i32 %605, %606
  br i1 %607, label %608, label %616

608:                                              ; preds = %600
  %609 = load %struct.hpi_control_cache_pad*, %struct.hpi_control_cache_pad** %9, align 8
  %610 = getelementptr inbounds %struct.hpi_control_cache_pad, %struct.hpi_control_cache_pad* %609, i32 0, i32 1
  %611 = load i32, i32* %610, align 4
  %612 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %613 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %612, i32 0, i32 4
  %614 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %613, i32 0, i32 1
  %615 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %614, i32 0, i32 0
  store i32 %611, i32* %615, align 8
  br label %701

616:                                              ; preds = %600
  %617 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %618 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %617, i32 0, i32 2
  %619 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %618, i32 0, i32 0
  %620 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %619, i32 0, i32 1
  %621 = load i32, i32* %620, align 4
  %622 = call i32 @HPI_CTL_ATTR_INDEX(i32 %621)
  %623 = sub nsw i32 %622, 1
  store i32 %623, i32* %10, align 4
  %624 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %625 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %624, i32 0, i32 2
  %626 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %625, i32 0, i32 0
  %627 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %626, i32 0, i32 0
  %628 = load i32, i32* %627, align 4
  store i32 %628, i32* %11, align 4
  %629 = load i32, i32* %10, align 4
  %630 = load %struct.TYPE_37__*, %struct.TYPE_37__** @pad_desc, align 8
  %631 = call i32 @ARRAY_SIZE(%struct.TYPE_37__* %630)
  %632 = sub nsw i32 %631, 1
  %633 = icmp ugt i32 %629, %632
  br i1 %633, label %634, label %638

634:                                              ; preds = %616
  %635 = load i8*, i8** @HPI_ERROR_INVALID_CONTROL_ATTRIBUTE, align 8
  %636 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %637 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %636, i32 0, i32 5
  store i8* %635, i8** %637, align 8
  br label %704

638:                                              ; preds = %616
  %639 = load %struct.hpi_control_cache_pad*, %struct.hpi_control_cache_pad** %9, align 8
  %640 = bitcast %struct.hpi_control_cache_pad* %639 to i8*
  %641 = load %struct.TYPE_37__*, %struct.TYPE_37__** @pad_desc, align 8
  %642 = load i32, i32* %10, align 4
  %643 = zext i32 %642 to i64
  %644 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %641, i64 %643
  %645 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %644, i32 0, i32 0
  %646 = load i32, i32* %645, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds i8, i8* %640, i64 %647
  store i8* %648, i8** %14, align 8
  %649 = load %struct.TYPE_37__*, %struct.TYPE_37__** @pad_desc, align 8
  %650 = load i32, i32* %10, align 4
  %651 = zext i32 %650 to i64
  %652 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %649, i64 %651
  %653 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %652, i32 0, i32 1
  %654 = load i32, i32* %653, align 4
  store i32 %654, i32* %13, align 4
  %655 = load i8*, i8** %14, align 8
  %656 = load i32, i32* %13, align 4
  %657 = sub i32 %656, 1
  %658 = zext i32 %657 to i64
  %659 = getelementptr inbounds i8, i8* %655, i64 %658
  store i8 0, i8* %659, align 1
  %660 = load i8*, i8** %14, align 8
  %661 = call i32 @strlen(i8* %660)
  %662 = add nsw i32 %661, 1
  store i32 %662, i32* %12, align 4
  %663 = load i32, i32* %11, align 4
  %664 = load i32, i32* %12, align 4
  %665 = icmp ugt i32 %663, %664
  br i1 %665, label %666, label %670

666:                                              ; preds = %638
  %667 = load i8*, i8** @HPI_ERROR_INVALID_CONTROL_VALUE, align 8
  %668 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %669 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %668, i32 0, i32 5
  store i8* %667, i8** %669, align 8
  br label %704

670:                                              ; preds = %638
  %671 = load i32, i32* %12, align 4
  %672 = load i32, i32* %11, align 4
  %673 = sub i32 %671, %672
  store i32 %673, i32* %15, align 4
  %674 = load i32, i32* %15, align 4
  %675 = zext i32 %674 to i64
  %676 = icmp ugt i64 %675, 4
  br i1 %676, label %677, label %678

677:                                              ; preds = %670
  store i32 4, i32* %15, align 4
  br label %678

678:                                              ; preds = %677, %670
  %679 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %680 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %679, i32 0, i32 4
  %681 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %680, i32 0, i32 0
  %682 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %681, i32 0, i32 0
  %683 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %682, i32 0, i32 1
  %684 = load i32, i32* %683, align 4
  %685 = load i8*, i8** %14, align 8
  %686 = load i32, i32* %11, align 4
  %687 = zext i32 %686 to i64
  %688 = getelementptr inbounds i8, i8* %685, i64 %687
  %689 = load i32, i32* %15, align 4
  %690 = call i32 @memcpy(i32 %684, i8* %688, i32 %689)
  %691 = load i32, i32* %12, align 4
  %692 = load i32, i32* %11, align 4
  %693 = sub i32 %691, %692
  %694 = load i32, i32* %15, align 4
  %695 = sub i32 %693, %694
  %696 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %697 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %696, i32 0, i32 4
  %698 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %697, i32 0, i32 0
  %699 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %698, i32 0, i32 0
  %700 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %699, i32 0, i32 0
  store i32 %695, i32* %700, align 8
  br label %701

701:                                              ; preds = %678, %608
  br label %702

702:                                              ; preds = %701, %592
  br label %704

703:                                              ; preds = %3
  store i16 0, i16* %8, align 2
  br label %704

704:                                              ; preds = %703, %702, %666, %634, %580, %564, %489, %469, %449, %429, %409, %370, %293, %256, %236, %207, %122
  %705 = load i32, i32* @VERBOSE, align 4
  %706 = load i16, i16* %8, align 2
  %707 = sext i16 %706 to i32
  %708 = icmp ne i32 %707, 0
  %709 = zext i1 %708 to i64
  %710 = select i1 %708, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %711 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %712 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %711, i32 0, i32 3
  %713 = load i32, i32* %712, align 4
  %714 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %715 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %714, i32 0, i32 0
  %716 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %715, i32 0, i32 0
  %717 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %716, i32 0, i32 1
  %718 = load i32, i32* %717, align 4
  %719 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %720 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %719, i32 0, i32 0
  %721 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %720, i32 0, i32 0
  %722 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %721, i32 0, i32 0
  %723 = load i32, i32* %722, align 8
  %724 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %725 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %724, i32 0, i32 2
  %726 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %725, i32 0, i32 0
  %727 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %726, i32 0, i32 1
  %728 = load i32, i32* %727, align 4
  %729 = call i32 @HPI_DEBUG_LOG(i32 %705, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %710, i32 %713, i32 %718, i32 %723, i32 %728)
  %730 = load i16, i16* %8, align 2
  %731 = icmp ne i16 %730, 0
  br i1 %731, label %732, label %749

732:                                              ; preds = %704
  %733 = load i64, i64* %7, align 8
  %734 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %735 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %734, i32 0, i32 3
  store i64 %733, i64* %735, align 8
  %736 = load i32, i32* @HPI_TYPE_RESPONSE, align 4
  %737 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %738 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %737, i32 0, i32 2
  store i32 %736, i32* %738, align 8
  %739 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %740 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %739, i32 0, i32 1
  %741 = load i32, i32* %740, align 4
  %742 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %743 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %742, i32 0, i32 1
  store i32 %741, i32* %743, align 4
  %744 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %745 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %744, i32 0, i32 0
  %746 = load i32, i32* %745, align 4
  %747 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %748 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %747, i32 0, i32 0
  store i32 %746, i32* %748, align 8
  br label %749

749:                                              ; preds = %732, %704
  %750 = load i16, i16* %8, align 2
  ret i16 %750
}

declare dso_local i32 @HPI_CTL_ATTR_INDEX(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_37__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
