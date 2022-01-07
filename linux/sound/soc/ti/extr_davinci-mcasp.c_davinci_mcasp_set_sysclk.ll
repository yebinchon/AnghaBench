; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.davinci_mcasp = type { i32, i32, i32 }

@SND_SOC_CLOCK_OUT = common dso_local global i32 0, align 4
@DAVINCI_MCASP_AHCLKXCTL_REG = common dso_local global i32 0, align 4
@AHCLKXE = common dso_local global i32 0, align 4
@DAVINCI_MCASP_AHCLKRCTL_REG = common dso_local global i32 0, align 4
@AHCLKRE = common dso_local global i32 0, align 4
@PIN_BIT_AHCLKX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @davinci_mcasp_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_mcasp_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.davinci_mcasp*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = call %struct.davinci_mcasp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.davinci_mcasp* %11, %struct.davinci_mcasp** %9, align 8
  %12 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %9, align 8
  %13 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pm_runtime_get_sync(i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %4
  %20 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %9, align 8
  %21 = load i32, i32* @DAVINCI_MCASP_AHCLKXCTL_REG, align 4
  %22 = load i32, i32* @AHCLKXE, align 4
  %23 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %20, i32 %21, i32 %22)
  %24 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %9, align 8
  %25 = load i32, i32* @DAVINCI_MCASP_AHCLKRCTL_REG, align 4
  %26 = load i32, i32* @AHCLKRE, align 4
  %27 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @PIN_BIT_AHCLKX, align 4
  %29 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %9, align 8
  %30 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %29, i32 0, i32 2
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  br label %45

32:                                               ; preds = %4
  %33 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %9, align 8
  %34 = load i32, i32* @DAVINCI_MCASP_AHCLKXCTL_REG, align 4
  %35 = load i32, i32* @AHCLKXE, align 4
  %36 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %33, i32 %34, i32 %35)
  %37 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %9, align 8
  %38 = load i32, i32* @DAVINCI_MCASP_AHCLKRCTL_REG, align 4
  %39 = load i32, i32* @AHCLKRE, align 4
  %40 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @PIN_BIT_AHCLKX, align 4
  %42 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %9, align 8
  %43 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %42, i32 0, i32 2
  %44 = call i32 @clear_bit(i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %32, %19
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %9, align 8
  %48 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %9, align 8
  %50 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pm_runtime_put(i32 %51)
  ret i32 0
}

declare dso_local %struct.davinci_mcasp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @mcasp_set_bits(%struct.davinci_mcasp*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mcasp_clr_bits(%struct.davinci_mcasp*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
