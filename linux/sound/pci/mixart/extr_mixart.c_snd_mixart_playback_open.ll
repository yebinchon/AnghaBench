; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_snd_mixart_playback_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_snd_mixart_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm*, %struct.snd_pcm_runtime* }
%struct.snd_pcm = type { i32 }
%struct.snd_pcm_runtime = type { %struct.TYPE_5__, %struct.mixart_stream* }
%struct.mixart_stream = type { i64, i32, i64, %struct.snd_pcm_substream*, %struct.mixart_pipe* }
%struct.mixart_pipe = type { i32 }
%struct.snd_mixart = type { %struct.mixart_mgr*, %struct.TYPE_4__*, i32, %struct.mixart_stream**, %struct.snd_pcm*, %struct.snd_pcm* }
%struct.mixart_mgr = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@MIXART_PCM_ANALOG = common dso_local global i32 0, align 4
@snd_mixart_analog_caps = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MIXART_PCM_DIGITAL = common dso_local global i32 0, align 4
@snd_mixart_digital_caps = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [40 x i8] c"snd_mixart_playback_open C%d/P%d/Sub%d\0A\00", align 1
@MIXART_STREAM_STATUS_FREE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"snd_mixart_playback_open C%d/P%d/Sub%d in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"error starting pipe!\0A\00", align 1
@MIXART_STREAM_STATUS_OPEN = common dso_local global i64 0, align 8
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_mixart_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixart_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_mixart*, align 8
  %4 = alloca %struct.mixart_mgr*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca %struct.mixart_stream*, align 8
  %8 = alloca %struct.mixart_pipe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = call %struct.snd_mixart* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_mixart* %12, %struct.snd_mixart** %3, align 8
  %13 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %14 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %13, i32 0, i32 0
  %15 = load %struct.mixart_mgr*, %struct.mixart_mgr** %14, align 8
  store %struct.mixart_mgr* %15, %struct.mixart_mgr** %4, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 2
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %17, align 8
  store %struct.snd_pcm_runtime* %18, %struct.snd_pcm_runtime** %5, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 1
  %21 = load %struct.snd_pcm*, %struct.snd_pcm** %20, align 8
  store %struct.snd_pcm* %21, %struct.snd_pcm** %6, align 8
  store i32 0, i32* %9, align 4
  %22 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %23 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %26 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %27 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %26, i32 0, i32 5
  %28 = load %struct.snd_pcm*, %struct.snd_pcm** %27, align 8
  %29 = icmp eq %struct.snd_pcm* %25, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load i32, i32* @MIXART_PCM_ANALOG, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 0
  %34 = bitcast %struct.TYPE_5__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 bitcast (%struct.TYPE_5__* @snd_mixart_analog_caps to i8*), i64 16, i1 false)
  br label %47

35:                                               ; preds = %1
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %37 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %38 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %37, i32 0, i32 4
  %39 = load %struct.snd_pcm*, %struct.snd_pcm** %38, align 8
  %40 = icmp ne %struct.snd_pcm* %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @snd_BUG_ON(i32 %41)
  %43 = load i32, i32* @MIXART_PCM_DIGITAL, align 4
  store i32 %43, i32* %10, align 4
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 0
  %46 = bitcast %struct.TYPE_5__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 bitcast (%struct.TYPE_5__* @snd_mixart_digital_caps to i8*), i64 16, i1 false)
  br label %47

47:                                               ; preds = %35, %30
  %48 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %49 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %54 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i64 %59)
  %61 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %62 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %61, i32 0, i32 3
  %63 = load %struct.mixart_stream**, %struct.mixart_stream*** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.mixart_stream*, %struct.mixart_stream** %63, i64 %65
  %67 = load %struct.mixart_stream*, %struct.mixart_stream** %66, align 8
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %67, i64 %70
  store %struct.mixart_stream* %71, %struct.mixart_stream** %7, align 8
  %72 = load %struct.mixart_stream*, %struct.mixart_stream** %7, align 8
  %73 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @MIXART_STREAM_STATUS_FREE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %47
  %78 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %79 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %84 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %88 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (i32, i8*, ...) @dev_err(i32 %82, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %86, i64 %89)
  %91 = load i32, i32* @EBUSY, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %9, align 4
  br label %170

93:                                               ; preds = %47
  %94 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call %struct.mixart_pipe* @snd_mixart_add_ref_pipe(%struct.snd_mixart* %94, i32 %95, i32 0, i32 0)
  store %struct.mixart_pipe* %96, %struct.mixart_pipe** %8, align 8
  %97 = load %struct.mixart_pipe*, %struct.mixart_pipe** %8, align 8
  %98 = icmp eq %struct.mixart_pipe* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %9, align 4
  br label %170

102:                                              ; preds = %93
  %103 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %104 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %103, i32 0, i32 0
  %105 = load %struct.mixart_mgr*, %struct.mixart_mgr** %104, align 8
  %106 = load %struct.mixart_pipe*, %struct.mixart_pipe** %8, align 8
  %107 = call i32 @mixart_set_pipe_state(%struct.mixart_mgr* %105, %struct.mixart_pipe* %106, i32 1)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %102
  %111 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %112 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @dev_err(i32 %115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %117 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %118 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %117, i32 0, i32 0
  %119 = load %struct.mixart_mgr*, %struct.mixart_mgr** %118, align 8
  %120 = load %struct.mixart_pipe*, %struct.mixart_pipe** %8, align 8
  %121 = call i32 @snd_mixart_kill_ref_pipe(%struct.mixart_mgr* %119, %struct.mixart_pipe* %120, i32 0)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %9, align 4
  br label %170

124:                                              ; preds = %102
  %125 = load %struct.mixart_pipe*, %struct.mixart_pipe** %8, align 8
  %126 = load %struct.mixart_stream*, %struct.mixart_stream** %7, align 8
  %127 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %126, i32 0, i32 4
  store %struct.mixart_pipe* %125, %struct.mixart_pipe** %127, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.mixart_stream*, %struct.mixart_stream** %7, align 8
  %130 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load i64, i64* @MIXART_STREAM_STATUS_OPEN, align 8
  %132 = load %struct.mixart_stream*, %struct.mixart_stream** %7, align 8
  %133 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %135 = load %struct.mixart_stream*, %struct.mixart_stream** %7, align 8
  %136 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %135, i32 0, i32 3
  store %struct.snd_pcm_substream* %134, %struct.snd_pcm_substream** %136, align 8
  %137 = load %struct.mixart_stream*, %struct.mixart_stream** %7, align 8
  %138 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %137, i32 0, i32 2
  store i64 0, i64* %138, align 8
  %139 = load %struct.mixart_stream*, %struct.mixart_stream** %7, align 8
  %140 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %141 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %140, i32 0, i32 1
  store %struct.mixart_stream* %139, %struct.mixart_stream** %141, align 8
  %142 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %143 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %144 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %142, i32 0, i32 %143, i32 32)
  %145 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %146 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %147 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %145, i32 0, i32 %146, i32 64)
  %148 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %149 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 8
  %152 = icmp ne i32 %150, 0
  br i1 %152, label %153, label %169

153:                                              ; preds = %124
  %154 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %155 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %160 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %163 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  store i64 %161, i64* %164, align 8
  %165 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %166 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  store i64 %161, i64* %167, align 8
  br label %168

168:                                              ; preds = %158, %153
  br label %169

169:                                              ; preds = %168, %124
  br label %170

170:                                              ; preds = %169, %110, %99, %77
  %171 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %172 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %171, i32 0, i32 0
  %173 = call i32 @mutex_unlock(i32* %172)
  %174 = load i32, i32* %9, align 4
  ret i32 %174
}

declare dso_local %struct.snd_mixart* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.mixart_pipe* @snd_mixart_add_ref_pipe(%struct.snd_mixart*, i32, i32, i32) #1

declare dso_local i32 @mixart_set_pipe_state(%struct.mixart_mgr*, %struct.mixart_pipe*, i32) #1

declare dso_local i32 @snd_mixart_kill_ref_pipe(%struct.mixart_mgr*, %struct.mixart_pipe*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
