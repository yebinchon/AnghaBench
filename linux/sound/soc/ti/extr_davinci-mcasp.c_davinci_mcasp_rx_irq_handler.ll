; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_rx_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_rx_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_mcasp = type { i32*, i32, %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@DAVINCI_MCASP_RXSTAT_REG = common dso_local global i32 0, align 4
@ROVRN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Receive buffer overflow\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"unhandled rx event. rxstat: 0x%08x\0A\00", align 1
@XRERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @davinci_mcasp_rx_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_mcasp_rx_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.davinci_mcasp*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.davinci_mcasp*
  store %struct.davinci_mcasp* %11, %struct.davinci_mcasp** %5, align 8
  %12 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %5, align 8
  %13 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %5, align 8
  %19 = load i32, i32* @DAVINCI_MCASP_RXSTAT_REG, align 4
  %20 = call i32 @mcasp_get_reg(%struct.davinci_mcasp* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @ROVRN, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %2
  %28 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %5, align 8
  %29 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, i8*, ...) @dev_warn(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ROVRN, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %5, align 8
  %36 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %35, i32 0, i32 2
  %37 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %36, align 8
  %38 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %37, i64 %38
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %39, align 8
  store %struct.snd_pcm_substream* %40, %struct.snd_pcm_substream** %6, align 8
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %42 = icmp ne %struct.snd_pcm_substream* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %27
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %45 = call i32 @snd_pcm_stop_xrun(%struct.snd_pcm_substream* %44)
  br label %46

46:                                               ; preds = %43, %27
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %5, align 8
  %52 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i32, i8*, ...) @dev_warn(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @XRERR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @XRERR, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %5, align 8
  %67 = load i32, i32* @DAVINCI_MCASP_RXSTAT_REG, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @mcasp_set_reg(%struct.davinci_mcasp* %66, i32 %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @IRQ_RETVAL(i32 %70)
  ret i32 %71
}

declare dso_local i32 @mcasp_get_reg(%struct.davinci_mcasp*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @snd_pcm_stop_xrun(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mcasp_set_reg(%struct.davinci_mcasp*, i32, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
