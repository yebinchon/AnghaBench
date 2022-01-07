; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-i2s.c_davinci_mcbsp_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-i2s.c_davinci_mcbsp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_mcbsp_dev = type { i32 }
%struct.snd_pcm_substream = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@DAVINCI_MCBSP_SPCR_XRST = common dso_local global i32 0, align 4
@DAVINCI_MCBSP_SPCR_RRST = common dso_local global i32 0, align 4
@DAVINCI_MCBSP_SPCR_REG = common dso_local global i32 0, align 4
@DAVINCI_MCBSP_PCR_FSXM = common dso_local global i32 0, align 4
@DAVINCI_MCBSP_PCR_FSRM = common dso_local global i32 0, align 4
@DAVINCI_MCBSP_SPCR_FRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davinci_mcbsp_dev*, %struct.snd_pcm_substream*)* @davinci_mcbsp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davinci_mcbsp_start(%struct.davinci_mcbsp_dev* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.davinci_mcbsp_dev*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.davinci_mcbsp_dev* %0, %struct.davinci_mcbsp_dev** %3, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @DAVINCI_MCBSP_SPCR_XRST, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @DAVINCI_MCBSP_SPCR_RRST, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %7, align 4
  %22 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %3, align 8
  %23 = load i32, i32* @DAVINCI_MCBSP_SPCR_REG, align 4
  %24 = call i32 @davinci_mcbsp_read_reg(%struct.davinci_mcbsp_dev* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %3, align 8
  %29 = getelementptr inbounds %struct.davinci_mcbsp_dev, %struct.davinci_mcbsp_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DAVINCI_MCBSP_PCR_FSXM, align 4
  %32 = load i32, i32* @DAVINCI_MCBSP_PCR_FSRM, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %20
  %37 = load i32, i32* @DAVINCI_MCBSP_SPCR_FRST, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %36, %20
  %41 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %3, align 8
  %42 = load i32, i32* @DAVINCI_MCBSP_SPCR_REG, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @davinci_mcbsp_write_reg(%struct.davinci_mcbsp_dev* %41, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @davinci_mcbsp_read_reg(%struct.davinci_mcbsp_dev*, i32) #1

declare dso_local i32 @davinci_mcbsp_write_reg(%struct.davinci_mcbsp_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
