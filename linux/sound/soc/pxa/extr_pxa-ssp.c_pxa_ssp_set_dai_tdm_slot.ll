; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_dai_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_dai_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.ssp_priv = type { %struct.ssp_device* }
%struct.ssp_device = type { i32 }

@SSCR0 = common dso_local global i32 0, align 4
@SSCR0_MOD = common dso_local global i32 0, align 4
@SSCR0_EDSS = common dso_local global i32 0, align 4
@SSCR0_DSS = common dso_local global i32 0, align 4
@SSTSA = common dso_local global i32 0, align 4
@SSRSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @pxa_ssp_set_dai_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_ssp_set_dai_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ssp_priv*, align 8
  %12 = alloca %struct.ssp_device*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %15 = call %struct.ssp_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %14)
  store %struct.ssp_priv* %15, %struct.ssp_priv** %11, align 8
  %16 = load %struct.ssp_priv*, %struct.ssp_priv** %11, align 8
  %17 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %16, i32 0, i32 0
  %18 = load %struct.ssp_device*, %struct.ssp_device** %17, align 8
  store %struct.ssp_device* %18, %struct.ssp_device** %12, align 8
  %19 = load %struct.ssp_device*, %struct.ssp_device** %12, align 8
  %20 = load i32, i32* @SSCR0, align 4
  %21 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %19, i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* @SSCR0_MOD, align 4
  %23 = call i32 @SSCR0_SlotsPerFrm(i32 8)
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SSCR0_EDSS, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SSCR0_DSS, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %13, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %32, 16
  br i1 %33, label %34, label %42

34:                                               ; preds = %5
  %35 = load i32, i32* @SSCR0_EDSS, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %36, 16
  %38 = call i32 @SSCR0_DataSize(i32 %37)
  %39 = or i32 %35, %38
  %40 = load i32, i32* %13, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %13, align 4
  br label %47

42:                                               ; preds = %5
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @SSCR0_DataSize(i32 %43)
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %42, %34
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load i32, i32* @SSCR0_MOD, align 4
  %52 = load i32, i32* %13, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @SSCR0_SlotsPerFrm(i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %13, align 4
  %58 = load %struct.ssp_device*, %struct.ssp_device** %12, align 8
  %59 = load i32, i32* @SSTSA, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %58, i32 %59, i32 %60)
  %62 = load %struct.ssp_device*, %struct.ssp_device** %12, align 8
  %63 = load i32, i32* @SSRSA, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %50, %47
  %67 = load %struct.ssp_device*, %struct.ssp_device** %12, align 8
  %68 = load i32, i32* @SSCR0, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %67, i32 %68, i32 %69)
  ret i32 0
}

declare dso_local %struct.ssp_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @pxa_ssp_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @SSCR0_SlotsPerFrm(i32) #1

declare dso_local i32 @SSCR0_DataSize(i32) #1

declare dso_local i32 @pxa_ssp_write_reg(%struct.ssp_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
