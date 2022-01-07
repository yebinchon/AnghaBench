; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_da7219_max98927.c_kbl_fe_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_da7219_max98927.c_kbl_fe_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_pcm_runtime = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@DUAL_CHANNEL = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@constraints_channels = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"kblda7219m98373\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"kblmax98373\00", align 1
@SNDRV_PCM_FMTBIT_S24_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S16_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@constraints_rates = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @kbl_fe_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbl_fe_startup(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 1
  %7 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  store %struct.snd_pcm_runtime* %7, %struct.snd_pcm_runtime** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  store %struct.snd_soc_pcm_runtime* %10, %struct.snd_soc_pcm_runtime** %4, align 8
  %11 = load i32, i32* @DUAL_CHANNEL, align 4
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %16 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %17 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %15, i32 0, i32 %16, i32* @constraints_channels)
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %19 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strcmp(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %27 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strcmp(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %25, %1
  %34 = load i32, i32* @SNDRV_PCM_FMTBIT_S24_LE, align 4
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %39 = call i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime* %38, i32 0, i32 32, i32 24)
  br label %47

40:                                               ; preds = %25
  %41 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_LE, align 4
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %46 = call i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime* %45, i32 0, i32 16, i32 16)
  br label %47

47:                                               ; preds = %40, %33
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %49 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %50 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %48, i32 0, i32 %49, i32* @constraints_rates)
  ret i32 0
}

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime*, i32, i32, i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
