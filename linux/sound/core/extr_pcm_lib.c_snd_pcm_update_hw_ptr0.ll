; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_pcm_update_hw_ptr0.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_pcm_update_hw_ptr0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, i32, %struct.TYPE_8__*, %struct.snd_pcm_runtime* }
%struct.TYPE_8__ = type { i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*, %struct.timespec*, %struct.timespec*, %struct.TYPE_9__*, %struct.TYPE_10__*)* }
%struct.timespec = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.snd_pcm_runtime = type { i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i32, %struct.TYPE_7__*, %struct.TYPE_6__, i64, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@SNDRV_PCM_TSTAMP_ENABLE = common dso_local global i64 0, align 8
@SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT = common dso_local global i64 0, align 8
@SNDRV_PCM_POS_XRUN = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"invalid position: %s, pos = %ld, buffer size = %ld, period size = %ld\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Unexpected hw_ptr\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"(stream=%i, pos=%ld, new_hw_ptr=%ld, old_hw_ptr=%ld)\0A\00", align 1
@XRUN_DEBUG_JIFFIESCHECK = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_BATCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"hw_ptr skipping\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"(pos=%ld, delta=%ld, period=%ld, jdelta=%lu/%lu/%lu, hw_ptr=%ld/%ld)\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Lost interrupts?\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"(stream=%i, delta=%ld, new_hw_ptr=%ld, old_hw_ptr=%ld)\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_pcm_update_hw_ptr0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_update_hw_ptr0(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.timespec, align 4
  %16 = alloca %struct.timespec, align 4
  %17 = alloca i32, align 4
  %18 = alloca [16 x i8], align 16
  %19 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 3
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %21, align 8
  store %struct.snd_pcm_runtime* %22, %struct.snd_pcm_runtime** %6, align 8
  store i32 0, i32* %17, align 4
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 13
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %31, align 8
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %34 = call i32 %32(%struct.snd_pcm_substream* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i64, i64* @jiffies, align 8
  store i64 %35, i64* %14, align 8
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SNDRV_PCM_TSTAMP_ENABLE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %81

41:                                               ; preds = %2
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32 (%struct.snd_pcm_substream*, %struct.timespec*, %struct.timespec*, %struct.TYPE_9__*, %struct.TYPE_10__*)*, i32 (%struct.snd_pcm_substream*, %struct.timespec*, %struct.timespec*, %struct.TYPE_9__*, %struct.TYPE_10__*)** %45, align 8
  %47 = icmp ne i32 (%struct.snd_pcm_substream*, %struct.timespec*, %struct.timespec*, %struct.TYPE_9__*, %struct.TYPE_10__*)* %46, null
  br i1 %47, label %48, label %77

48:                                               ; preds = %41
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 17
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %48
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %56, i32 0, i32 2
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32 (%struct.snd_pcm_substream*, %struct.timespec*, %struct.timespec*, %struct.TYPE_9__*, %struct.TYPE_10__*)*, i32 (%struct.snd_pcm_substream*, %struct.timespec*, %struct.timespec*, %struct.TYPE_9__*, %struct.TYPE_10__*)** %59, align 8
  %61 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %62 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %62, i32 0, i32 17
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %64, i32 0, i32 16
  %66 = call i32 %60(%struct.snd_pcm_substream* %61, %struct.timespec* %15, %struct.timespec* %16, %struct.TYPE_9__* %63, %struct.TYPE_10__* %65)
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %67, i32 0, i32 16
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %55
  %74 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %75 = call i32 @snd_pcm_gettime(%struct.snd_pcm_runtime* %74, %struct.timespec* %15)
  br label %76

76:                                               ; preds = %73, %55
  br label %80

77:                                               ; preds = %48, %41
  %78 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %79 = call i32 @snd_pcm_gettime(%struct.snd_pcm_runtime* %78, %struct.timespec* %15)
  br label %80

80:                                               ; preds = %77, %76
  br label %81

81:                                               ; preds = %80, %2
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @SNDRV_PCM_POS_XRUN, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %87 = call i32 @__snd_pcm_xrun(%struct.snd_pcm_substream* %86)
  %88 = load i32, i32* @EPIPE, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %564

90:                                               ; preds = %81
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp sge i32 %91, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %90
  %97 = call i64 (...) @printk_ratelimit()
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %101 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i64 0, i64 0
  %102 = call i32 @snd_pcm_debug_name(%struct.snd_pcm_substream* %100, i8* %101, i32 16)
  %103 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %104 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i64 0, i64 0
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %109 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %112 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @pcm_err(i32 %105, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i8* %106, i32 %107, i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %99, %96
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %115, %90
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %119 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = srem i32 %117, %120
  %122 = load i32, i32* %7, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @trace_hwptr(%struct.snd_pcm_substream* %124, i32 %125, i32 %126)
  %128 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %129 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %131, %132
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %181

136:                                              ; preds = %116
  %137 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %138 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %141 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %139, %142
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %180

147:                                              ; preds = %136
  %148 = load i64, i64* %14, align 8
  %149 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %150 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %149, i32 0, i32 6
  %151 = load i64, i64* %150, align 8
  %152 = sub i64 %148, %151
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %156 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = sdiv i32 %157, 2
  %159 = add nsw i32 %158, 1
  %160 = icmp sgt i32 %154, %159
  br i1 %160, label %161, label %179

161:                                              ; preds = %147
  %162 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %163 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %10, align 4
  %168 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %169 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 4
  %171 = icmp sge i32 %167, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %161
  store i32 0, i32* %10, align 4
  %173 = load i32, i32* %17, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %17, align 4
  br label %175

175:                                              ; preds = %172, %161
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %176, %177
  store i32 %178, i32* %9, align 4
  br label %204

179:                                              ; preds = %147
  br label %180

180:                                              ; preds = %179, %136
  br label %181

181:                                              ; preds = %180, %116
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %203

185:                                              ; preds = %181
  %186 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %187 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %193 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 4
  %195 = icmp sge i32 %191, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %185
  store i32 0, i32* %10, align 4
  %197 = load i32, i32* %17, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %17, align 4
  br label %199

199:                                              ; preds = %196, %185
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %200, %201
  store i32 %202, i32* %9, align 4
  br label %203

203:                                              ; preds = %199, %181
  br label %204

204:                                              ; preds = %203, %175
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %8, align 4
  %207 = sub nsw i32 %205, %206
  store i32 %207, i32* %12, align 4
  %208 = load i32, i32* %12, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %204
  %211 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %212 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %211, i32 0, i32 8
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %12, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %12, align 4
  br label %216

216:                                              ; preds = %210, %204
  %217 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %218 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %217, i32 0, i32 15
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %285

221:                                              ; preds = %216
  %222 = load i64, i64* %14, align 8
  %223 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %224 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %223, i32 0, i32 6
  %225 = load i64, i64* %224, align 8
  %226 = sub i64 %222, %225
  store i64 %226, i64* %13, align 8
  %227 = load i64, i64* %13, align 8
  %228 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %229 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 8
  %231 = sdiv i32 %230, 2
  %232 = sext i32 %231 to i64
  %233 = icmp ult i64 %227, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %221
  br label %460

235:                                              ; preds = %221
  %236 = load i64, i64* %13, align 8
  %237 = load i32, i32* %12, align 4
  %238 = load i32, i32* @HZ, align 4
  %239 = mul nsw i32 %237, %238
  %240 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %241 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %240, i32 0, i32 9
  %242 = load i32, i32* %241, align 8
  %243 = sdiv i32 %239, %242
  %244 = sext i32 %243 to i64
  %245 = sub i64 %236, %244
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %11, align 4
  %247 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %248 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %247, i32 0, i32 7
  %249 = load i32, i32* %248, align 8
  %250 = sdiv i32 %249, 2
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %19, align 4
  br label %252

252:                                              ; preds = %275, %235
  %253 = load i32, i32* %11, align 4
  %254 = load i32, i32* %19, align 4
  %255 = icmp sgt i32 %253, %254
  br i1 %255, label %256, label %284

256:                                              ; preds = %252
  %257 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %258 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %12, align 4
  %261 = add nsw i32 %260, %259
  store i32 %261, i32* %12, align 4
  %262 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %263 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %10, align 4
  %266 = add nsw i32 %265, %264
  store i32 %266, i32* %10, align 4
  %267 = load i32, i32* %10, align 4
  %268 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %269 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %268, i32 0, i32 8
  %270 = load i32, i32* %269, align 4
  %271 = icmp sge i32 %267, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %256
  store i32 0, i32* %10, align 4
  %273 = load i32, i32* %17, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %17, align 4
  br label %275

275:                                              ; preds = %272, %256
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* %7, align 4
  %278 = add nsw i32 %276, %277
  store i32 %278, i32* %9, align 4
  %279 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %280 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %279, i32 0, i32 7
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %11, align 4
  %283 = sub nsw i32 %282, %281
  store i32 %283, i32* %11, align 4
  br label %252

284:                                              ; preds = %252
  br label %460

285:                                              ; preds = %216
  %286 = load i32, i32* %12, align 4
  %287 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %288 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %291 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %289, %292
  %294 = icmp sge i32 %286, %293
  br i1 %294, label %295, label %309

295:                                              ; preds = %285
  %296 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %297 = load i32, i32* %5, align 4
  %298 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %299 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = sext i32 %300 to i64
  %302 = load i32, i32* %7, align 4
  %303 = sext i32 %302 to i64
  %304 = load i32, i32* %9, align 4
  %305 = sext i32 %304 to i64
  %306 = load i32, i32* %8, align 4
  %307 = sext i32 %306 to i64
  %308 = call i32 (%struct.snd_pcm_substream*, i32, i8*, i8*, i64, i64, i64, i64, ...) @hw_ptr_error(%struct.snd_pcm_substream* %296, i32 %297, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %301, i64 %303, i64 %305, i64 %307)
  store i32 0, i32* %3, align 4
  br label %564

309:                                              ; preds = %285
  %310 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %311 = load i32, i32* @XRUN_DEBUG_JIFFIESCHECK, align 4
  %312 = call i32 @xrun_debug(%struct.snd_pcm_substream* %310, i32 %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %315, label %314

314:                                              ; preds = %309
  br label %434

315:                                              ; preds = %309
  %316 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %317 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %316, i32 0, i32 14
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @SNDRV_PCM_INFO_BATCH, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %315
  br label %434

324:                                              ; preds = %315
  %325 = load i32, i32* %12, align 4
  store i32 %325, i32* %11, align 4
  %326 = load i32, i32* %11, align 4
  %327 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %328 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %327, i32 0, i32 10
  %329 = load i32, i32* %328, align 4
  %330 = icmp slt i32 %326, %329
  br i1 %330, label %331, label %332

331:                                              ; preds = %324
  br label %434

332:                                              ; preds = %324
  %333 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %334 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %333, i32 0, i32 10
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* %11, align 4
  %337 = sub nsw i32 %336, %335
  store i32 %337, i32* %11, align 4
  %338 = load i64, i64* %14, align 8
  %339 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %340 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %339, i32 0, i32 6
  %341 = load i64, i64* %340, align 8
  %342 = sub i64 %338, %341
  store i64 %342, i64* %13, align 8
  %343 = load i32, i32* %11, align 4
  %344 = load i32, i32* @HZ, align 4
  %345 = mul nsw i32 %343, %344
  %346 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %347 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %346, i32 0, i32 9
  %348 = load i32, i32* %347, align 8
  %349 = sdiv i32 %345, %348
  %350 = sext i32 %349 to i64
  %351 = load i64, i64* %13, align 8
  %352 = load i32, i32* @HZ, align 4
  %353 = sdiv i32 %352, 100
  %354 = sext i32 %353 to i64
  %355 = add i64 %351, %354
  %356 = icmp ugt i64 %350, %355
  br i1 %356, label %357, label %433

357:                                              ; preds = %332
  %358 = load i64, i64* %13, align 8
  %359 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %360 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @HZ, align 4
  %363 = mul nsw i32 %361, %362
  %364 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %365 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %364, i32 0, i32 9
  %366 = load i32, i32* %365, align 8
  %367 = sdiv i32 %363, %366
  %368 = load i32, i32* @HZ, align 4
  %369 = sdiv i32 %368, 100
  %370 = add nsw i32 %367, %369
  %371 = sext i32 %370 to i64
  %372 = udiv i64 %358, %371
  %373 = trunc i64 %372 to i32
  store i32 %373, i32* %12, align 4
  %374 = load i32, i32* %8, align 4
  store i32 %374, i32* %9, align 4
  %375 = load i32, i32* %12, align 4
  store i32 %375, i32* %10, align 4
  br label %376

376:                                              ; preds = %398, %357
  %377 = load i32, i32* %12, align 4
  %378 = icmp sgt i32 %377, 0
  br i1 %378, label %379, label %401

379:                                              ; preds = %376
  %380 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %381 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* %9, align 4
  %384 = add nsw i32 %383, %382
  store i32 %384, i32* %9, align 4
  %385 = load i32, i32* %9, align 4
  %386 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %387 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %386, i32 0, i32 8
  %388 = load i32, i32* %387, align 4
  %389 = icmp sge i32 %385, %388
  br i1 %389, label %390, label %398

390:                                              ; preds = %379
  %391 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %392 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %391, i32 0, i32 8
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* %9, align 4
  %395 = sub nsw i32 %394, %393
  store i32 %395, i32* %9, align 4
  %396 = load i32, i32* %17, align 4
  %397 = add nsw i32 %396, -1
  store i32 %397, i32* %17, align 4
  br label %398

398:                                              ; preds = %390, %379
  %399 = load i32, i32* %12, align 4
  %400 = add nsw i32 %399, -1
  store i32 %400, i32* %12, align 4
  br label %376

401:                                              ; preds = %376
  %402 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %403 = load i32, i32* %5, align 4
  %404 = load i32, i32* %7, align 4
  %405 = sext i32 %404 to i64
  %406 = load i32, i32* %11, align 4
  %407 = sext i32 %406 to i64
  %408 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %409 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 4
  %411 = sext i32 %410 to i64
  %412 = load i64, i64* %13, align 8
  %413 = load i32, i32* %11, align 4
  %414 = load i32, i32* @HZ, align 4
  %415 = mul nsw i32 %413, %414
  %416 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %417 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %416, i32 0, i32 9
  %418 = load i32, i32* %417, align 8
  %419 = sdiv i32 %415, %418
  %420 = load i32, i32* %10, align 4
  %421 = load i32, i32* %8, align 4
  %422 = sext i32 %421 to i64
  %423 = load i32, i32* %9, align 4
  %424 = sext i32 %423 to i64
  %425 = call i32 (%struct.snd_pcm_substream*, i32, i8*, i8*, i64, i64, i64, i64, ...) @hw_ptr_error(%struct.snd_pcm_substream* %402, i32 %403, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i64 %405, i64 %407, i64 %411, i64 %412, i32 %419, i32 %420, i64 %422, i64 %424)
  store i32 0, i32* %12, align 4
  %426 = load i32, i32* %9, align 4
  %427 = load i32, i32* %9, align 4
  %428 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %429 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 8
  %431 = srem i32 %427, %430
  %432 = sub nsw i32 %426, %431
  store i32 %432, i32* %10, align 4
  br label %433

433:                                              ; preds = %401, %332
  br label %434

434:                                              ; preds = %433, %331, %323, %314
  %435 = load i32, i32* %12, align 4
  %436 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %437 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 4
  %439 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %440 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %439, i32 0, i32 2
  %441 = load i32, i32* %440, align 4
  %442 = sdiv i32 %441, 2
  %443 = add nsw i32 %438, %442
  %444 = icmp sgt i32 %435, %443
  br i1 %444, label %445, label %459

445:                                              ; preds = %434
  %446 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %447 = load i32, i32* %5, align 4
  %448 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %449 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = sext i32 %450 to i64
  %452 = load i32, i32* %12, align 4
  %453 = sext i32 %452 to i64
  %454 = load i32, i32* %9, align 4
  %455 = sext i32 %454 to i64
  %456 = load i32, i32* %8, align 4
  %457 = sext i32 %456 to i64
  %458 = call i32 (%struct.snd_pcm_substream*, i32, i8*, i8*, i64, i64, i64, i64, ...) @hw_ptr_error(%struct.snd_pcm_substream* %446, i32 %447, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i64 %451, i64 %453, i64 %455, i64 %457)
  br label %459

459:                                              ; preds = %445, %434
  br label %460

460:                                              ; preds = %459, %284, %234
  %461 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %462 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %461, i32 0, i32 13
  %463 = load %struct.TYPE_7__*, %struct.TYPE_7__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 4
  %466 = load i32, i32* %9, align 4
  %467 = icmp eq i32 %465, %466
  br i1 %467, label %468, label %471

468:                                              ; preds = %460
  %469 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %470 = call i32 @update_audio_tstamp(%struct.snd_pcm_substream* %469, %struct.timespec* %15, %struct.timespec* %16)
  store i32 0, i32* %3, align 4
  br label %564

471:                                              ; preds = %460
  %472 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %473 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %476 = icmp eq i32 %474, %475
  br i1 %476, label %477, label %486

477:                                              ; preds = %471
  %478 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %479 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %478, i32 0, i32 11
  %480 = load i64, i64* %479, align 8
  %481 = icmp sgt i64 %480, 0
  br i1 %481, label %482, label %486

482:                                              ; preds = %477
  %483 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %484 = load i32, i32* %9, align 4
  %485 = call i32 @snd_pcm_playback_silence(%struct.snd_pcm_substream* %483, i32 %484)
  br label %486

486:                                              ; preds = %482, %477, %471
  %487 = load i32, i32* %5, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %532

489:                                              ; preds = %486
  %490 = load i32, i32* %9, align 4
  %491 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %492 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %491, i32 0, i32 5
  %493 = load i32, i32* %492, align 8
  %494 = sub nsw i32 %490, %493
  store i32 %494, i32* %12, align 4
  %495 = load i32, i32* %12, align 4
  %496 = icmp slt i32 %495, 0
  br i1 %496, label %497, label %503

497:                                              ; preds = %489
  %498 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %499 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %498, i32 0, i32 8
  %500 = load i32, i32* %499, align 4
  %501 = load i32, i32* %12, align 4
  %502 = add nsw i32 %501, %500
  store i32 %502, i32* %12, align 4
  br label %503

503:                                              ; preds = %497, %489
  %504 = load i32, i32* %12, align 4
  %505 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %506 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %505, i32 0, i32 2
  %507 = load i32, i32* %506, align 4
  %508 = srem i32 %504, %507
  %509 = load i32, i32* %12, align 4
  %510 = sub nsw i32 %509, %508
  store i32 %510, i32* %12, align 4
  %511 = load i32, i32* %12, align 4
  %512 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %513 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %512, i32 0, i32 5
  %514 = load i32, i32* %513, align 8
  %515 = add nsw i32 %514, %511
  store i32 %515, i32* %513, align 8
  %516 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %517 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %516, i32 0, i32 5
  %518 = load i32, i32* %517, align 8
  %519 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %520 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %519, i32 0, i32 8
  %521 = load i32, i32* %520, align 4
  %522 = icmp sge i32 %518, %521
  br i1 %522, label %523, label %531

523:                                              ; preds = %503
  %524 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %525 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %524, i32 0, i32 8
  %526 = load i32, i32* %525, align 4
  %527 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %528 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %527, i32 0, i32 5
  %529 = load i32, i32* %528, align 8
  %530 = sub nsw i32 %529, %526
  store i32 %530, i32* %528, align 8
  br label %531

531:                                              ; preds = %523, %503
  br label %532

532:                                              ; preds = %531, %486
  %533 = load i32, i32* %10, align 4
  %534 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %535 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %534, i32 0, i32 4
  store i32 %533, i32* %535, align 4
  %536 = load i32, i32* %9, align 4
  %537 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %538 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %537, i32 0, i32 13
  %539 = load %struct.TYPE_7__*, %struct.TYPE_7__** %538, align 8
  %540 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %539, i32 0, i32 0
  store i32 %536, i32* %540, align 4
  %541 = load i64, i64* %14, align 8
  %542 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %543 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %542, i32 0, i32 6
  store i64 %541, i64* %543, align 8
  %544 = load i32, i32* %17, align 4
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %546, label %558

546:                                              ; preds = %532
  %547 = load i32, i32* %17, align 4
  %548 = icmp ne i32 %547, 1
  %549 = zext i1 %548 to i32
  %550 = call i32 @snd_BUG_ON(i32 %549)
  %551 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %552 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %551, i32 0, i32 8
  %553 = load i32, i32* %552, align 4
  %554 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %555 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %554, i32 0, i32 12
  %556 = load i32, i32* %555, align 8
  %557 = add nsw i32 %556, %553
  store i32 %557, i32* %555, align 8
  br label %558

558:                                              ; preds = %546, %532
  %559 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %560 = call i32 @update_audio_tstamp(%struct.snd_pcm_substream* %559, %struct.timespec* %15, %struct.timespec* %16)
  %561 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %562 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %563 = call i32 @snd_pcm_update_state(%struct.snd_pcm_substream* %561, %struct.snd_pcm_runtime* %562)
  store i32 %563, i32* %3, align 4
  br label %564

564:                                              ; preds = %558, %468, %295, %85
  %565 = load i32, i32* %3, align 4
  ret i32 %565
}

declare dso_local i32 @snd_pcm_gettime(%struct.snd_pcm_runtime*, %struct.timespec*) #1

declare dso_local i32 @__snd_pcm_xrun(%struct.snd_pcm_substream*) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @snd_pcm_debug_name(%struct.snd_pcm_substream*, i8*, i32) #1

declare dso_local i32 @pcm_err(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @trace_hwptr(%struct.snd_pcm_substream*, i32, i32) #1

declare dso_local i32 @hw_ptr_error(%struct.snd_pcm_substream*, i32, i8*, i8*, i64, i64, i64, i64, ...) #1

declare dso_local i32 @xrun_debug(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @update_audio_tstamp(%struct.snd_pcm_substream*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @snd_pcm_playback_silence(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_pcm_update_state(%struct.snd_pcm_substream*, %struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
