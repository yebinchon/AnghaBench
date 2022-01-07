; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/hiface/extr_pcm.c_hiface_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/hiface/extr_pcm.c_hiface_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_6__ }
%struct.pcm_runtime = type { i32, i64, %struct.TYPE_5__*, %struct.pcm_substream, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.pcm_substream = type { i32, %struct.snd_pcm_substream* }

@EPIPE = common dso_local global i32 0, align 4
@pcm_hw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Invalid stream type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_KNOT = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@constraints_extra_rates = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @hiface_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hiface_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.pcm_runtime*, align 8
  %5 = alloca %struct.pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.pcm_runtime* %10, %struct.pcm_runtime** %4, align 8
  store %struct.pcm_substream* null, %struct.pcm_substream** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %6, align 8
  %14 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %15 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EPIPE, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %90

21:                                               ; preds = %1
  %22 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %23 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 0
  %27 = bitcast %struct.TYPE_6__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 bitcast (%struct.TYPE_6__* @pcm_hw to i8*), i64 8, i1 false)
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %35 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %34, i32 0, i32 3
  store %struct.pcm_substream* %35, %struct.pcm_substream** %5, align 8
  br label %36

36:                                               ; preds = %33, %21
  %37 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %38 = icmp ne %struct.pcm_substream* %37, null
  br i1 %38, label %53, label %39

39:                                               ; preds = %36
  %40 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %41 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store %struct.device* %45, %struct.device** %8, align 8
  %46 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %47 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.device*, %struct.device** %8, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %90

53:                                               ; preds = %36
  %54 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %55 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %53
  %59 = load i32, i32* @SNDRV_PCM_RATE_KNOT, align 4
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 384000, i32* %67, align 4
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %68, i32 0, i32 1
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %69, align 8
  %71 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %72 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %70, i32 0, i32 %71, i32* @constraints_extra_rates)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %58
  %76 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %77 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  br label %90

80:                                               ; preds = %58
  br label %81

81:                                               ; preds = %80, %53
  %82 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %83 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %84 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %83, i32 0, i32 1
  store %struct.snd_pcm_substream* %82, %struct.snd_pcm_substream** %84, align 8
  %85 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %86 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %88 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %81, %75, %39, %18
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
