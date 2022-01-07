; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_media_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_media_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.sst_runtime_stream* }
%struct.sst_runtime_stream = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.snd_pcm_substream*, i64 }
%struct.snd_soc_dai = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sst_lock = common dso_local global i32 0, align 4
@sst = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"no device available to run\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @sst_media_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_media_open(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.sst_runtime_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sst_runtime_stream* @kzalloc(i32 24, i32 %12)
  store %struct.sst_runtime_stream* %13, %struct.sst_runtime_stream** %8, align 8
  %14 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %8, align 8
  %15 = icmp ne %struct.sst_runtime_stream* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %80

19:                                               ; preds = %2
  %20 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %8, align 8
  %21 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %20, i32 0, i32 2
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = call i32 @mutex_lock(i32* @sst_lock)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sst, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sst, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @try_module_get(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26, %19
  %37 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %75

43:                                               ; preds = %26
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sst, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %8, align 8
  %48 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = call i32 @mutex_unlock(i32* @sst_lock)
  %50 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %8, align 8
  %51 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %54 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %8, align 8
  %55 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store %struct.snd_pcm_substream* %53, %struct.snd_pcm_substream** %56, align 8
  %57 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %8, align 8
  %58 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %58, i32 0, i32 0
  store %struct.sst_runtime_stream* %57, %struct.sst_runtime_stream** %59, align 8
  %60 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %8, align 8
  %61 = call i32 @power_up_sst(%struct.sst_runtime_stream* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %43
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %80

66:                                               ; preds = %43
  %67 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %67, i32 0, i32 0
  %69 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %68, align 8
  %70 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %71 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %69, i32 0, i32 %70, i32 2)
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %73 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %74 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %72, i32 %73)
  store i32 %74, i32* %3, align 4
  br label %80

75:                                               ; preds = %36
  %76 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %8, align 8
  %77 = call i32 @kfree(%struct.sst_runtime_stream* %76)
  %78 = call i32 @mutex_unlock(i32* @sst_lock)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %66, %64, %16
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.sst_runtime_stream* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @power_up_sst(%struct.sst_runtime_stream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @kfree(%struct.sst_runtime_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
