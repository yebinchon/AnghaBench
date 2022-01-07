; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-dmic.c_omap_dmic_dai_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-dmic.c_omap_dmic_dai_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.omap_dmic = type { i32, i32, i32, i32 }

@OMAP_DMIC_FIFO_CTRL_REG = common dso_local global i32 0, align 4
@OMAP_DMIC_CTRL_REG = common dso_local global i32 0, align 4
@OMAP_DMIC_FORMAT = common dso_local global i32 0, align 4
@OMAP_DMIC_POLAR_MASK = common dso_local global i32 0, align 4
@OMAP_DMICOUTFORMAT_LJUST = common dso_local global i32 0, align 4
@OMAP_DMIC_POLAR1 = common dso_local global i32 0, align 4
@OMAP_DMIC_POLAR2 = common dso_local global i32 0, align 4
@OMAP_DMIC_POLAR3 = common dso_local global i32 0, align 4
@OMAP_DMIC_CLK_DIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @omap_dmic_dai_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dmic_dai_prepare(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.omap_dmic*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = call %struct.omap_dmic* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %7)
  store %struct.omap_dmic* %8, %struct.omap_dmic** %5, align 8
  %9 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %10 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %9, i32 0, i32 3
  %11 = call i64 @pm_qos_request_active(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %15 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %14, i32 0, i32 3
  %16 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %17 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pm_qos_update_request(i32* %15, i32 %18)
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %22 = load i32, i32* @OMAP_DMIC_FIFO_CTRL_REG, align 4
  %23 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %24 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @omap_dmic_write(%struct.omap_dmic* %21, i32 %22, i32 %25)
  %27 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %28 = load i32, i32* @OMAP_DMIC_CTRL_REG, align 4
  %29 = call i32 @omap_dmic_read(%struct.omap_dmic* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @OMAP_DMIC_FORMAT, align 4
  %31 = load i32, i32* @OMAP_DMIC_POLAR_MASK, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @OMAP_DMICOUTFORMAT_LJUST, align 4
  %37 = load i32, i32* @OMAP_DMIC_POLAR1, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @OMAP_DMIC_POLAR2, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @OMAP_DMIC_POLAR3, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @OMAP_DMIC_CLK_DIV_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %50 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @OMAP_DMIC_CLK_DIV(i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %56 = load i32, i32* @OMAP_DMIC_CTRL_REG, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @omap_dmic_write(%struct.omap_dmic* %55, i32 %56, i32 %57)
  %59 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %60 = load i32, i32* @OMAP_DMIC_CTRL_REG, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @OMAP_DMICOUTFORMAT_LJUST, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @OMAP_DMIC_POLAR1, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @OMAP_DMIC_POLAR2, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @OMAP_DMIC_POLAR3, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @omap_dmic_write(%struct.omap_dmic* %59, i32 %60, i32 %69)
  ret i32 0
}

declare dso_local %struct.omap_dmic* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i64 @pm_qos_request_active(i32*) #1

declare dso_local i32 @pm_qos_update_request(i32*, i32) #1

declare dso_local i32 @omap_dmic_write(%struct.omap_dmic*, i32, i32) #1

declare dso_local i32 @omap_dmic_read(%struct.omap_dmic*, i32) #1

declare dso_local i32 @OMAP_DMIC_CLK_DIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
