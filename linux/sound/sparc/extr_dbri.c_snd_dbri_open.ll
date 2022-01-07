; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_snd_dbri_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_snd_dbri_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_dbri = type { i32 }
%struct.dbri_streaminfo = type { i32, i64, i64, %struct.snd_pcm_substream* }

@D_USR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"open audio output.\0A\00", align 1
@snd_dbri_pcm_hw = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@snd_hw_rule_format = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@snd_hw_rule_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_dbri_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_dbri_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_dbri*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.dbri_streaminfo*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.snd_dbri* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_dbri* %8, %struct.snd_dbri** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = call %struct.dbri_streaminfo* @DBRI_STREAM(%struct.snd_dbri* %12, %struct.snd_pcm_substream* %13)
  store %struct.dbri_streaminfo* %14, %struct.dbri_streaminfo** %5, align 8
  %15 = load i32, i32* @D_USR, align 4
  %16 = call i32 @dprintk(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @snd_dbri_pcm_hw, align 4
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %21 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %20, i32 0, i32 0
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %25 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %5, align 8
  %26 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %25, i32 0, i32 3
  store %struct.snd_pcm_substream* %24, %struct.snd_pcm_substream** %26, align 8
  %27 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %5, align 8
  %28 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %5, align 8
  %30 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %5, align 8
  %32 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %34 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %33, i32 0, i32 0
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %38 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %39 = load i32, i32* @snd_hw_rule_format, align 4
  %40 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %41 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %37, i32 0, i32 %38, i32 %39, i32* null, i32 %40, i32 -1)
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %43 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %44 = load i32, i32* @snd_hw_rule_channels, align 4
  %45 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %46 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %42, i32 0, i32 %43, i32 %44, i32* null, i32 %45, i32 -1)
  %47 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %48 = call i32 @cs4215_open(%struct.snd_dbri* %47)
  ret i32 0
}

declare dso_local %struct.snd_dbri* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.dbri_streaminfo* @DBRI_STREAM(%struct.snd_dbri*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @cs4215_open(%struct.snd_dbri*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
