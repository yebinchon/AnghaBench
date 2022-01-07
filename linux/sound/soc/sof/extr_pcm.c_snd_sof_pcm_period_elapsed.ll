; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_pcm.c_snd_sof_pcm_period_elapsed.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_pcm.c_snd_sof_pcm_period_elapsed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.snd_sof_dev = type { i32 }
%struct.snd_sof_pcm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"error: period elapsed for unknown stream!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_sof_pcm_period_elapsed(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_sof_dev*, align 8
  %6 = alloca %struct.snd_sof_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 1
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  store %struct.snd_soc_pcm_runtime* %9, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %11 = load i32, i32* @DRV_NAME, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %10, i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %4, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %14 = call %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.snd_sof_dev* %14, %struct.snd_sof_dev** %5, align 8
  %15 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %17 = call %struct.snd_sof_pcm* @snd_sof_find_spcm_dai(%struct.snd_sof_dev* %15, %struct.snd_soc_pcm_runtime* %16)
  store %struct.snd_sof_pcm* %17, %struct.snd_sof_pcm** %6, align 8
  %18 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %6, align 8
  %19 = icmp ne %struct.snd_sof_pcm* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %22 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %35

25:                                               ; preds = %1
  %26 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %6, align 8
  %27 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @schedule_work(i32* %33)
  br label %35

35:                                               ; preds = %25, %20
  ret void
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_sof_pcm* @snd_sof_find_spcm_dai(%struct.snd_sof_dev*, %struct.snd_soc_pcm_runtime*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
