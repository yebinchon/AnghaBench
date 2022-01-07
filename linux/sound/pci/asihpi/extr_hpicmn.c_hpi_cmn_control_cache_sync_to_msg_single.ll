; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpicmn.c_hpi_cmn_control_cache_sync_to_msg_single.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpicmn.c_hpi_cmn_control_cache_sync_to_msg_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_control_cache_single = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_14__ = type { i32, i8*, i8* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_21__ = type { i32*, i32 }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_19__ = type { i8*, i8* }
%struct.TYPE_18__ = type { i32 }
%struct.hpi_message = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.hpi_response = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32* }

@HPI_VOLUME_GAIN = common dso_local global i32 0, align 4
@HPI_VOLUME_MUTE = common dso_local global i32 0, align 4
@HPI_VOLUME_FLAG_MUTED = common dso_local global i32 0, align 4
@HPI_MULTIPLEXER_SOURCE = common dso_local global i32 0, align 4
@HPI_CHANNEL_MODE_MODE = common dso_local global i32 0, align 4
@HPI_LEVEL_GAIN = common dso_local global i32 0, align 4
@HPI_MICROPHONE_PHANTOM_POWER = common dso_local global i32 0, align 4
@HPI_AESEBUTX_FORMAT = common dso_local global i32 0, align 4
@HPI_AESEBURX_FORMAT = common dso_local global i32 0, align 4
@HPI_SAMPLECLOCK_SOURCE = common dso_local global i32 0, align 4
@HPI_SAMPLECLOCK_SOURCE_INDEX = common dso_local global i32 0, align 4
@HPI_SAMPLECLOCK_SAMPLERATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpi_cmn_control_cache_sync_to_msg_single(%struct.hpi_control_cache_single* %0, %struct.hpi_message* %1, %struct.hpi_response* %2) #0 {
  %4 = alloca %struct.hpi_control_cache_single*, align 8
  %5 = alloca %struct.hpi_message*, align 8
  %6 = alloca %struct.hpi_response*, align 8
  store %struct.hpi_control_cache_single* %0, %struct.hpi_control_cache_single** %4, align 8
  store %struct.hpi_message* %1, %struct.hpi_message** %5, align 8
  store %struct.hpi_response* %2, %struct.hpi_response** %6, align 8
  %7 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %8 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 7
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %291 [
    i32 128, label %12
    i32 130, label %82
    i32 133, label %114
    i32 132, label %135
    i32 131, label %171
    i32 134, label %192
    i32 135, label %211
    i32 129, label %230
  ]

12:                                               ; preds = %3
  %13 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %14 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HPI_VOLUME_GAIN, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %12
  %21 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %22 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %29 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %27, i32* %33, align 4
  %34 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %35 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %42 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %40, i32* %46, align 4
  br label %81

47:                                               ; preds = %12
  %48 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %49 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @HPI_VOLUME_MUTE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %47
  %56 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %57 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load i32, i32* @HPI_VOLUME_FLAG_MUTED, align 4
  %64 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %65 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %63
  store i32 %69, i32* %67, align 8
  br label %79

70:                                               ; preds = %55
  %71 = load i32, i32* @HPI_VOLUME_FLAG_MUTED, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %74 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %72
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %70, %62
  br label %80

80:                                               ; preds = %79, %47
  br label %81

81:                                               ; preds = %80, %20
  br label %292

82:                                               ; preds = %3
  %83 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %84 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @HPI_MULTIPLEXER_SOURCE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %82
  %91 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %92 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %99 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  store i8* %97, i8** %101, align 8
  %102 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %103 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %110 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  store i8* %108, i8** %112, align 8
  br label %113

113:                                              ; preds = %90, %82
  br label %292

114:                                              ; preds = %3
  %115 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %116 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @HPI_CHANNEL_MODE_MODE, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %114
  %123 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %124 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i8*
  %130 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %131 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  store i8* %129, i8** %133, align 8
  br label %134

134:                                              ; preds = %122, %114
  br label %292

135:                                              ; preds = %3
  %136 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %137 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @HPI_LEVEL_GAIN, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %170

143:                                              ; preds = %135
  %144 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %145 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %152 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  store i32 %150, i32* %156, align 4
  %157 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %158 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %165 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  store i32 %163, i32* %169, align 4
  br label %170

170:                                              ; preds = %143, %135
  br label %292

171:                                              ; preds = %3
  %172 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %173 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @HPI_MICROPHONE_PHANTOM_POWER, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %191

179:                                              ; preds = %171
  %180 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %181 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8*
  %187 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %188 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 0
  store i8* %186, i8** %190, align 8
  br label %191

191:                                              ; preds = %179, %171
  br label %292

192:                                              ; preds = %3
  %193 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %194 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @HPI_AESEBUTX_FORMAT, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %210

200:                                              ; preds = %192
  %201 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %202 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %207 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 0
  store i32 %205, i32* %209, align 4
  br label %210

210:                                              ; preds = %200, %192
  br label %292

211:                                              ; preds = %3
  %212 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %213 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @HPI_AESEBURX_FORMAT, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %229

219:                                              ; preds = %211
  %220 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %221 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %226 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 0
  store i32 %224, i32* %228, align 8
  br label %229

229:                                              ; preds = %219, %211
  br label %292

230:                                              ; preds = %3
  %231 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %232 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @HPI_SAMPLECLOCK_SOURCE, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %250

238:                                              ; preds = %230
  %239 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %240 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = inttoptr i64 %244 to i8*
  %246 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %247 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 2
  store i8* %245, i8** %249, align 8
  br label %290

250:                                              ; preds = %230
  %251 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %252 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @HPI_SAMPLECLOCK_SOURCE_INDEX, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %270

258:                                              ; preds = %250
  %259 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %260 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = inttoptr i64 %264 to i8*
  %266 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %267 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 1
  store i8* %265, i8** %269, align 8
  br label %289

270:                                              ; preds = %250
  %271 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %272 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @HPI_SAMPLECLOCK_SAMPLERATE, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %288

278:                                              ; preds = %270
  %279 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %280 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.hpi_control_cache_single*, %struct.hpi_control_cache_single** %4, align 8
  %285 = getelementptr inbounds %struct.hpi_control_cache_single, %struct.hpi_control_cache_single* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 0
  store i32 %283, i32* %287, align 8
  br label %288

288:                                              ; preds = %278, %270
  br label %289

289:                                              ; preds = %288, %258
  br label %290

290:                                              ; preds = %289, %238
  br label %292

291:                                              ; preds = %3
  br label %292

292:                                              ; preds = %291, %290, %229, %210, %191, %170, %134, %113, %81
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
