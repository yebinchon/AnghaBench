; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_snd_mixart_capture_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_snd_mixart_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.snd_pcm_substream = type { i32, %struct.snd_pcm*, %struct.snd_pcm_runtime* }
%struct.snd_pcm = type { i32 }
%struct.snd_pcm_runtime = type { %struct.TYPE_5__, %struct.mixart_stream* }
%struct.mixart_stream = type { i64, i32, i64, %struct.snd_pcm_substream*, %struct.mixart_pipe* }
%struct.mixart_pipe = type { i32 }
%struct.snd_mixart = type { %struct.mixart_mgr*, %struct.TYPE_4__*, i32, %struct.mixart_stream*, %struct.snd_pcm*, %struct.snd_pcm* }
%struct.mixart_mgr = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@MIXART_PCM_ANALOG = common dso_local global i32 0, align 4
@snd_mixart_analog_caps = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MIXART_PCM_DIGITAL = common dso_local global i32 0, align 4
@snd_mixart_digital_caps = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [39 x i8] c"snd_mixart_capture_open C%d/P%d/Sub%d\0A\00", align 1
@MIXART_STREAM_STATUS_FREE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"snd_mixart_capture_open C%d/P%d/Sub%d in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"error starting pipe!\0A\00", align 1
@MIXART_STREAM_STATUS_OPEN = common dso_local global i64 0, align 8
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_mixart_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixart_capture_open(%struct.snd_pcm_substream* %0) #0 {
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 bitcast (%struct.TYPE_5__* @snd_mixart_analog_caps to i8*), i64 24, i1 false)
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 bitcast (%struct.TYPE_5__* @snd_mixart_digital_caps to i8*), i64 24, i1 false)
  br label %47

47:                                               ; preds = %35, %30
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 2, i32* %50, align 8
  %51 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %52 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %57 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i32 %62)
  %64 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %65 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %64, i32 0, i32 3
  %66 = load %struct.mixart_stream*, %struct.mixart_stream** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %66, i64 %68
  store %struct.mixart_stream* %69, %struct.mixart_stream** %7, align 8
  %70 = load %struct.mixart_stream*, %struct.mixart_stream** %7, align 8
  %71 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MIXART_STREAM_STATUS_FREE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %47
  %76 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %77 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %82 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i32, i8*, ...) @dev_err(i32 %80, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84, i32 %87)
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %9, align 4
  br label %168

91:                                               ; preds = %47
  %92 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call %struct.mixart_pipe* @snd_mixart_add_ref_pipe(%struct.snd_mixart* %92, i32 %93, i32 1, i32 0)
  store %struct.mixart_pipe* %94, %struct.mixart_pipe** %8, align 8
  %95 = load %struct.mixart_pipe*, %struct.mixart_pipe** %8, align 8
  %96 = icmp eq %struct.mixart_pipe* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %9, align 4
  br label %168

100:                                              ; preds = %91
  %101 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %102 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %101, i32 0, i32 0
  %103 = load %struct.mixart_mgr*, %struct.mixart_mgr** %102, align 8
  %104 = load %struct.mixart_pipe*, %struct.mixart_pipe** %8, align 8
  %105 = call i32 @mixart_set_pipe_state(%struct.mixart_mgr* %103, %struct.mixart_pipe* %104, i32 1)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %100
  %109 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %110 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, ...) @dev_err(i32 %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %115 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %116 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %115, i32 0, i32 0
  %117 = load %struct.mixart_mgr*, %struct.mixart_mgr** %116, align 8
  %118 = load %struct.mixart_pipe*, %struct.mixart_pipe** %8, align 8
  %119 = call i32 @snd_mixart_kill_ref_pipe(%struct.mixart_mgr* %117, %struct.mixart_pipe* %118, i32 0)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %9, align 4
  br label %168

122:                                              ; preds = %100
  %123 = load %struct.mixart_pipe*, %struct.mixart_pipe** %8, align 8
  %124 = load %struct.mixart_stream*, %struct.mixart_stream** %7, align 8
  %125 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %124, i32 0, i32 4
  store %struct.mixart_pipe* %123, %struct.mixart_pipe** %125, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.mixart_stream*, %struct.mixart_stream** %7, align 8
  %128 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load i64, i64* @MIXART_STREAM_STATUS_OPEN, align 8
  %130 = load %struct.mixart_stream*, %struct.mixart_stream** %7, align 8
  %131 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %133 = load %struct.mixart_stream*, %struct.mixart_stream** %7, align 8
  %134 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %133, i32 0, i32 3
  store %struct.snd_pcm_substream* %132, %struct.snd_pcm_substream** %134, align 8
  %135 = load %struct.mixart_stream*, %struct.mixart_stream** %7, align 8
  %136 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %135, i32 0, i32 2
  store i64 0, i64* %136, align 8
  %137 = load %struct.mixart_stream*, %struct.mixart_stream** %7, align 8
  %138 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %139 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %138, i32 0, i32 1
  store %struct.mixart_stream* %137, %struct.mixart_stream** %139, align 8
  %140 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %141 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %142 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %140, i32 0, i32 %141, i32 32)
  %143 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %144 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %145 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %143, i32 0, i32 %144, i32 64)
  %146 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %147 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  %150 = icmp ne i32 %148, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %122
  %152 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %153 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %151
  %157 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %158 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %161 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  store i64 %159, i64* %162, align 8
  %163 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %164 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  store i64 %159, i64* %165, align 8
  br label %166

166:                                              ; preds = %156, %151
  br label %167

167:                                              ; preds = %166, %122
  br label %168

168:                                              ; preds = %167, %108, %97, %75
  %169 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %170 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %169, i32 0, i32 0
  %171 = call i32 @mutex_unlock(i32* %170)
  %172 = load i32, i32* %9, align 4
  ret i32 %172
}

declare dso_local %struct.snd_mixart* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

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
