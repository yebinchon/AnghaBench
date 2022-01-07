; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-ssi.c_imx_ssi_set_dai_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-ssi.c_imx_ssi_set_dai_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.imx_ssi = type { i64 }

@SSI_STCCR = common dso_local global i64 0, align 8
@SSI_STCCR_DC_MASK = common dso_local global i32 0, align 4
@SSI_SRCCR = common dso_local global i64 0, align 8
@SSI_STMSK = common dso_local global i64 0, align 8
@SSI_SRMSK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @imx_ssi_set_dai_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ssi_set_dai_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.imx_ssi*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = call %struct.imx_ssi* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.imx_ssi* %14, %struct.imx_ssi** %11, align 8
  %15 = load %struct.imx_ssi*, %struct.imx_ssi** %11, align 8
  %16 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SSI_STCCR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @SSI_STCCR_DC_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %12, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %25, 1
  %27 = call i32 @SSI_STCCR_DC(i32 %26)
  %28 = load i32, i32* %12, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.imx_ssi*, %struct.imx_ssi** %11, align 8
  %32 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SSI_STCCR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load %struct.imx_ssi*, %struct.imx_ssi** %11, align 8
  %38 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SSI_SRCCR, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* @SSI_STCCR_DC_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %12, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, 1
  %49 = call i32 @SSI_STCCR_DC(i32 %48)
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.imx_ssi*, %struct.imx_ssi** %11, align 8
  %54 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SSI_SRCCR, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = load i32, i32* %7, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.imx_ssi*, %struct.imx_ssi** %11, align 8
  %62 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SSI_STMSK, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  %67 = load i32, i32* %8, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.imx_ssi*, %struct.imx_ssi** %11, align 8
  %70 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SSI_SRMSK, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  ret i32 0
}

declare dso_local %struct.imx_ssi* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @SSI_STCCR_DC(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
