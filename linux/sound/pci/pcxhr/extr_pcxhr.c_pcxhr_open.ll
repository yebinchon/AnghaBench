; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { i64, i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.pcxhr_stream*, %struct.TYPE_4__ }
%struct.pcxhr_stream = type { i64, i64, %struct.snd_pcm_substream* }
%struct.snd_pcxhr = type { i32, %struct.TYPE_3__*, %struct.pcxhr_stream*, %struct.pcxhr_stream*, %struct.pcxhr_mgr* }
%struct.TYPE_3__ = type { i32 }
%struct.pcxhr_mgr = type { i32, i64, i32, i32, i64, i64 }

@pcxhr_caps = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"pcxhr_open playback chip%d subs%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"pcxhr_open capture chip%d subs%d\0A\00", align 1
@PCXHR_STREAM_STATUS_FREE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"pcxhr_open chip%d subs%d in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_FLOAT_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@PCXHR_CLOCK_TYPE_INTERNAL = common dso_local global i64 0, align 8
@PCXHR_STREAM_STATUS_OPEN = common dso_local global i64 0, align 8
@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcxhr_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcxhr*, align 8
  %5 = alloca %struct.pcxhr_mgr*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.pcxhr_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.snd_pcxhr* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_pcxhr* %11, %struct.snd_pcxhr** %4, align 8
  %12 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %12, i32 0, i32 4
  %14 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %13, align 8
  store %struct.pcxhr_mgr* %14, %struct.pcxhr_mgr** %5, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 2
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  store %struct.snd_pcm_runtime* %17, %struct.snd_pcm_runtime** %6, align 8
  %18 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %19 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %18, i32 0, i32 2
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %21, i32 0, i32 1
  %23 = bitcast %struct.TYPE_4__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 4 bitcast (%struct.TYPE_4__* @pcxhr_caps to i8*), i64 20, i1 false)
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %1
  %30 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %31 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %36 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %40)
  %42 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %43 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %42, i32 0, i32 3
  %44 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %43, align 8
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %44, i64 %47
  store %struct.pcxhr_stream* %48, %struct.pcxhr_stream** %7, align 8
  br label %82

49:                                               ; preds = %1
  %50 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %51 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %56 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @dev_dbg(i32 %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %57, i64 %60)
  %62 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %63 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %49
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %74

70:                                               ; preds = %49
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 2, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %66
  %75 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %76 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %75, i32 0, i32 2
  %77 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %76, align 8
  %78 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %77, i64 %80
  store %struct.pcxhr_stream* %81, %struct.pcxhr_stream** %7, align 8
  br label %82

82:                                               ; preds = %74, %29
  %83 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %7, align 8
  %84 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PCXHR_STREAM_STATUS_FREE, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %82
  %89 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %90 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %95 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %98 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %96, i64 %99)
  %101 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %102 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %101, i32 0, i32 2
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* @EBUSY, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %204

106:                                              ; preds = %82
  %107 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %108 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load i32, i32* @SNDRV_PCM_FMTBIT_FLOAT_LE, align 4
  %113 = xor i32 %112, -1
  %114 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %115 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, %113
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %111, %106
  %120 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %121 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %122 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %120, i32 %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %127 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %126, i32 0, i32 2
  %128 = call i32 @mutex_unlock(i32* %127)
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %2, align 4
  br label %204

130:                                              ; preds = %119
  %131 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %132 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %137 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %140 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  store i32 %138, i32* %141, align 4
  %142 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %143 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  store i32 %138, i32* %144, align 8
  br label %177

145:                                              ; preds = %130
  %146 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %147 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @PCXHR_CLOCK_TYPE_INTERNAL, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %176

151:                                              ; preds = %145
  %152 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %153 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %154 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @pcxhr_get_external_clock(%struct.pcxhr_mgr* %152, i64 %155, i32* %9)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %151
  %159 = load i32, i32* %9, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %158, %151
  %162 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %163 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %162, i32 0, i32 2
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load i32, i32* @EBUSY, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %2, align 4
  br label %204

167:                                              ; preds = %158
  %168 = load i32, i32* %9, align 4
  %169 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %170 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 2
  store i32 %168, i32* %171, align 8
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %174 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 3
  store i32 %172, i32* %175, align 4
  br label %176

176:                                              ; preds = %167, %145
  br label %177

177:                                              ; preds = %176, %135
  %178 = load i64, i64* @PCXHR_STREAM_STATUS_OPEN, align 8
  %179 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %7, align 8
  %180 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  %181 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %182 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %7, align 8
  %183 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %182, i32 0, i32 2
  store %struct.snd_pcm_substream* %181, %struct.snd_pcm_substream** %183, align 8
  %184 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %7, align 8
  %185 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %184, i32 0, i32 1
  store i64 0, i64* %185, align 8
  %186 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %7, align 8
  %187 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %188 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %187, i32 0, i32 0
  store %struct.pcxhr_stream* %186, %struct.pcxhr_stream** %188, align 8
  %189 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %190 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %191 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %189, i32 0, i32 %190, i32 32)
  %192 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %193 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %194 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %192, i32 0, i32 %193, i32 32)
  %195 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %196 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %195)
  %197 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %198 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  %201 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %202 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %201, i32 0, i32 2
  %203 = call i32 @mutex_unlock(i32* %202)
  store i32 0, i32* %2, align 4
  br label %204

204:                                              ; preds = %177, %161, %125, %88
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local %struct.snd_pcxhr* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i64 @pcxhr_get_external_clock(%struct.pcxhr_mgr*, i64, i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
