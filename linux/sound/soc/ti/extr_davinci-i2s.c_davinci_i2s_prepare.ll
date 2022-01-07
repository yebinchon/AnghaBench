; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-i2s.c_davinci_i2s_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-i2s.c_davinci_i2s_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.davinci_mcbsp_dev = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@DAVINCI_MCBSP_SPCR_XRST = common dso_local global i32 0, align 4
@DAVINCI_MCBSP_SPCR_RRST = common dso_local global i32 0, align 4
@DAVINCI_MCBSP_SPCR_REG = common dso_local global i32 0, align 4
@DAVINCI_MCBSP_PCR_FSXM = common dso_local global i32 0, align 4
@DAVINCI_MCBSP_PCR_FSRM = common dso_local global i32 0, align 4
@DAVINCI_MCBSP_PCR_CLKXM = common dso_local global i32 0, align 4
@DAVINCI_MCBSP_PCR_CLKRM = common dso_local global i32 0, align 4
@DAVINCI_MCBSP_SPCR_GRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @davinci_i2s_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_i2s_prepare(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.davinci_mcbsp_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = call %struct.davinci_mcbsp_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.davinci_mcbsp_dev* %10, %struct.davinci_mcbsp_dev** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @DAVINCI_MCBSP_SPCR_XRST, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @DAVINCI_MCBSP_SPCR_RRST, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %8, align 4
  %25 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @davinci_mcbsp_stop(%struct.davinci_mcbsp_dev* %25, i32 %26)
  %28 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %5, align 8
  %29 = load i32, i32* @DAVINCI_MCBSP_SPCR_REG, align 4
  %30 = call i32 @davinci_mcbsp_read_reg(%struct.davinci_mcbsp_dev* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %23
  %36 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %5, align 8
  %37 = load i32, i32* @DAVINCI_MCBSP_SPCR_REG, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = call i32 @davinci_mcbsp_write_reg(%struct.davinci_mcbsp_dev* %36, i32 %37, i32 %41)
  %43 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @toggle_clock(%struct.davinci_mcbsp_dev* %43, i32 %44)
  br label %46

46:                                               ; preds = %35, %23
  %47 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %5, align 8
  %48 = getelementptr inbounds %struct.davinci_mcbsp_dev, %struct.davinci_mcbsp_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DAVINCI_MCBSP_PCR_FSXM, align 4
  %51 = load i32, i32* @DAVINCI_MCBSP_PCR_FSRM, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @DAVINCI_MCBSP_PCR_CLKXM, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @DAVINCI_MCBSP_PCR_CLKRM, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %49, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %46
  %60 = load i32, i32* @DAVINCI_MCBSP_SPCR_GRST, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %5, align 8
  %64 = load i32, i32* @DAVINCI_MCBSP_SPCR_REG, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @davinci_mcbsp_write_reg(%struct.davinci_mcbsp_dev* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %59, %46
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %67
  %71 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %5, align 8
  %72 = load i32, i32* @DAVINCI_MCBSP_SPCR_REG, align 4
  %73 = call i32 @davinci_mcbsp_read_reg(%struct.davinci_mcbsp_dev* %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* @DAVINCI_MCBSP_SPCR_XRST, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %5, align 8
  %78 = load i32, i32* @DAVINCI_MCBSP_SPCR_REG, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @davinci_mcbsp_write_reg(%struct.davinci_mcbsp_dev* %77, i32 %78, i32 %79)
  %81 = call i32 @udelay(i32 100)
  %82 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %5, align 8
  %83 = load i32, i32* @DAVINCI_MCBSP_SPCR_REG, align 4
  %84 = call i32 @davinci_mcbsp_read_reg(%struct.davinci_mcbsp_dev* %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* @DAVINCI_MCBSP_SPCR_XRST, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %5, align 8
  %90 = load i32, i32* @DAVINCI_MCBSP_SPCR_REG, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @davinci_mcbsp_write_reg(%struct.davinci_mcbsp_dev* %89, i32 %90, i32 %91)
  %93 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @toggle_clock(%struct.davinci_mcbsp_dev* %93, i32 %94)
  br label %96

96:                                               ; preds = %70, %67
  ret i32 0
}

declare dso_local %struct.davinci_mcbsp_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @davinci_mcbsp_stop(%struct.davinci_mcbsp_dev*, i32) #1

declare dso_local i32 @davinci_mcbsp_read_reg(%struct.davinci_mcbsp_dev*, i32) #1

declare dso_local i32 @davinci_mcbsp_write_reg(%struct.davinci_mcbsp_dev*, i32, i32) #1

declare dso_local i32 @toggle_clock(%struct.davinci_mcbsp_dev*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
