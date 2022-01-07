; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-ssi.c_imx_ssi_set_dai_clkdiv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-ssi.c_imx_ssi_set_dai_clkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.imx_ssi = type { i64 }

@SSI_STCCR = common dso_local global i64 0, align 8
@SSI_SRCCR = common dso_local global i64 0, align 8
@SSI_STCCR_DIV2 = common dso_local global i32 0, align 4
@SSI_STCCR_PSR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32)* @imx_ssi_set_dai_clkdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ssi_set_dai_clkdiv(%struct.snd_soc_dai* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.imx_ssi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %12 = call %struct.imx_ssi* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.imx_ssi* %12, %struct.imx_ssi** %8, align 8
  %13 = load %struct.imx_ssi*, %struct.imx_ssi** %8, align 8
  %14 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SSI_STCCR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.imx_ssi*, %struct.imx_ssi** %8, align 8
  %20 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SSI_SRCCR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %72 [
    i32 130, label %26
    i32 128, label %34
    i32 129, label %42
    i32 133, label %49
    i32 131, label %57
    i32 132, label %65
  ]

26:                                               ; preds = %3
  %27 = load i32, i32* @SSI_STCCR_DIV2, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  br label %75

34:                                               ; preds = %3
  %35 = load i32, i32* @SSI_STCCR_PSR, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %75

42:                                               ; preds = %3
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, -256
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @SSI_STCCR_PM(i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %75

49:                                               ; preds = %3
  %50 = load i32, i32* @SSI_STCCR_DIV2, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %75

57:                                               ; preds = %3
  %58 = load i32, i32* @SSI_STCCR_PSR, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %75

65:                                               ; preds = %3
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, -256
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @SSI_STCCR_PM(i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %75

72:                                               ; preds = %3
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %90

75:                                               ; preds = %65, %57, %49, %42, %34, %26
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.imx_ssi*, %struct.imx_ssi** %8, align 8
  %78 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SSI_STCCR, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 %76, i64 %81)
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.imx_ssi*, %struct.imx_ssi** %8, align 8
  %85 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SSI_SRCCR, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writel(i32 %83, i64 %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %75, %72
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.imx_ssi* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @SSI_STCCR_PM(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
