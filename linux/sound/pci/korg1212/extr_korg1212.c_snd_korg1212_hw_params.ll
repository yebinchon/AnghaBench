; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_korg1212 = type { i64, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"K1212_DEBUG: snd_korg1212_hw_params [%s]\0A\00", align 1
@stateName = common dso_local global i32* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@K1212_PERIOD_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_korg1212_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_korg1212_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.snd_korg1212*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = call %struct.snd_korg1212* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_korg1212* %12, %struct.snd_korg1212** %7, align 8
  %13 = load i32*, i32** @stateName, align 8
  %14 = load %struct.snd_korg1212*, %struct.snd_korg1212** %7, align 8
  %15 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @K1212_DEBUG_PRINTK(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.snd_korg1212*, %struct.snd_korg1212** %7, align 8
  %21 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %20, i32 0, i32 4
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.snd_korg1212*, %struct.snd_korg1212** %7, align 8
  %33 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load %struct.snd_korg1212*, %struct.snd_korg1212** %7, align 8
  %36 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %10, align 8
  br label %45

38:                                               ; preds = %2
  %39 = load %struct.snd_korg1212*, %struct.snd_korg1212** %7, align 8
  %40 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %9, align 8
  %42 = load %struct.snd_korg1212*, %struct.snd_korg1212** %7, align 8
  %43 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %38, %31
  %46 = load i64, i64* %10, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %45
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %54 = call i64 @params_rate(%struct.snd_pcm_hw_params* %53)
  %55 = trunc i64 %54 to i32
  %56 = load %struct.snd_korg1212*, %struct.snd_korg1212** %7, align 8
  %57 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %52
  %61 = load %struct.snd_korg1212*, %struct.snd_korg1212** %7, align 8
  %62 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %61, i32 0, i32 4
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %66 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %67 = call i32 @_snd_pcm_hw_param_setempty(%struct.snd_pcm_hw_params* %65, i32 %66)
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %99

70:                                               ; preds = %52
  %71 = load %struct.snd_korg1212*, %struct.snd_korg1212** %7, align 8
  %72 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %71, i32 0, i32 4
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  store i32 0, i32* %3, align 4
  br label %99

75:                                               ; preds = %48, %45
  %76 = load %struct.snd_korg1212*, %struct.snd_korg1212** %7, align 8
  %77 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %78 = call i64 @params_rate(%struct.snd_pcm_hw_params* %77)
  %79 = call i32 @snd_korg1212_SetRate(%struct.snd_korg1212* %76, i64 %78)
  store i32 %79, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.snd_korg1212*, %struct.snd_korg1212** %7, align 8
  %83 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %82, i32 0, i32 4
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %99

87:                                               ; preds = %75
  %88 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %89 = call i32 @params_channels(%struct.snd_pcm_hw_params* %88)
  %90 = load %struct.snd_korg1212*, %struct.snd_korg1212** %7, align 8
  %91 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @K1212_PERIOD_BYTES, align 4
  %93 = load %struct.snd_korg1212*, %struct.snd_korg1212** %7, align 8
  %94 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  %95 = load %struct.snd_korg1212*, %struct.snd_korg1212** %7, align 8
  %96 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %95, i32 0, i32 4
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %87, %81, %70, %60
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.snd_korg1212* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @K1212_DEBUG_PRINTK(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @_snd_pcm_hw_param_setempty(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_korg1212_SetRate(%struct.snd_korg1212*, i64) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
