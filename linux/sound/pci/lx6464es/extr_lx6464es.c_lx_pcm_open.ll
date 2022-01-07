; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.lx6464es*, i32 }
%struct.lx6464es = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"->lx_pcm_open\0A\00", align 1
@lx_caps = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"could not constrain periods\0A\00", align 1
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@MICROBLAZE_IBL_MIN = common dso_local global i32 0, align 4
@MICROBLAZE_IBL_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"could not constrain period size\0A\00", align 1
@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"<-lx_pcm_open, %d\0A\00", align 1
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @lx_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lx_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.lx6464es*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.lx6464es* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.lx6464es* %8, %struct.lx6464es** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %13 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, ...) @dev_dbg(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %19 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %18, i32 0, i32 2
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* @lx_caps, align 4
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %25 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %6, align 4
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %28 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @snd_pcm_hw_constraint_single(%struct.snd_pcm_runtime* %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %35 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_warn(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %61

40:                                               ; preds = %1
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %42 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %43 = load i32, i32* @MICROBLAZE_IBL_MIN, align 4
  %44 = load i32, i32* @MICROBLAZE_IBL_MAX, align 4
  %45 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %50 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_warn(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %61

55:                                               ; preds = %40
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %57 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %58 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %56, i32 0, i32 %57, i32 32)
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %60 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %59)
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %55, %48, %33
  %62 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %63, i32 0, i32 0
  store %struct.lx6464es* %62, %struct.lx6464es** %64, align 8
  %65 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %66 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %65, i32 0, i32 2
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %69 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 (i32, i8*, ...) @dev_dbg(i32 %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.lx6464es* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_single(%struct.snd_pcm_runtime*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
