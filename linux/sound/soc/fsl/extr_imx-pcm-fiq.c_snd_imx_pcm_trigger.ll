; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-pcm-fiq.c_snd_imx_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-pcm-fiq.c_snd_imx_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.imx_pcm_runtime_data* }
%struct.imx_pcm_runtime_data = type { i32, i32, i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@imx_pcm_fiq = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_imx_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_imx_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.imx_pcm_runtime_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 1
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %6, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 0
  %13 = load %struct.imx_pcm_runtime_data*, %struct.imx_pcm_runtime_data** %12, align 8
  store %struct.imx_pcm_runtime_data* %13, %struct.imx_pcm_runtime_data** %7, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %68 [
    i32 130, label %15
    i32 131, label %15
    i32 132, label %15
    i32 129, label %40
    i32 128, label %40
    i32 133, label %40
  ]

15:                                               ; preds = %2, %2, %2
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.imx_pcm_runtime_data*, %struct.imx_pcm_runtime_data** %7, align 8
  %23 = getelementptr inbounds %struct.imx_pcm_runtime_data, %struct.imx_pcm_runtime_data* %22, i32 0, i32 1
  %24 = call i32 @atomic_set(i32* %23, i32 1)
  br label %29

25:                                               ; preds = %15
  %26 = load %struct.imx_pcm_runtime_data*, %struct.imx_pcm_runtime_data** %7, align 8
  %27 = getelementptr inbounds %struct.imx_pcm_runtime_data, %struct.imx_pcm_runtime_data* %26, i32 0, i32 0
  %28 = call i32 @atomic_set(i32* %27, i32 1)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.imx_pcm_runtime_data*, %struct.imx_pcm_runtime_data** %7, align 8
  %31 = getelementptr inbounds %struct.imx_pcm_runtime_data, %struct.imx_pcm_runtime_data* %30, i32 0, i32 3
  %32 = load %struct.imx_pcm_runtime_data*, %struct.imx_pcm_runtime_data** %7, align 8
  %33 = getelementptr inbounds %struct.imx_pcm_runtime_data, %struct.imx_pcm_runtime_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ns_to_ktime(i32 %34)
  %36 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %37 = call i32 @hrtimer_start(i32* %31, i32 %35, i32 %36)
  %38 = load i32, i32* @imx_pcm_fiq, align 4
  %39 = call i32 @enable_fiq(i32 %38)
  br label %71

40:                                               ; preds = %2, %2, %2
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.imx_pcm_runtime_data*, %struct.imx_pcm_runtime_data** %7, align 8
  %48 = getelementptr inbounds %struct.imx_pcm_runtime_data, %struct.imx_pcm_runtime_data* %47, i32 0, i32 1
  %49 = call i32 @atomic_set(i32* %48, i32 0)
  br label %54

50:                                               ; preds = %40
  %51 = load %struct.imx_pcm_runtime_data*, %struct.imx_pcm_runtime_data** %7, align 8
  %52 = getelementptr inbounds %struct.imx_pcm_runtime_data, %struct.imx_pcm_runtime_data* %51, i32 0, i32 0
  %53 = call i32 @atomic_set(i32* %52, i32 0)
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.imx_pcm_runtime_data*, %struct.imx_pcm_runtime_data** %7, align 8
  %56 = getelementptr inbounds %struct.imx_pcm_runtime_data, %struct.imx_pcm_runtime_data* %55, i32 0, i32 1
  %57 = call i32 @atomic_read(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = load %struct.imx_pcm_runtime_data*, %struct.imx_pcm_runtime_data** %7, align 8
  %61 = getelementptr inbounds %struct.imx_pcm_runtime_data, %struct.imx_pcm_runtime_data* %60, i32 0, i32 0
  %62 = call i32 @atomic_read(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @imx_pcm_fiq, align 4
  %66 = call i32 @disable_fiq(i32 %65)
  br label %67

67:                                               ; preds = %64, %59, %54
  br label %71

68:                                               ; preds = %2
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %67, %29
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %68
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @enable_fiq(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @disable_fiq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
