; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-ssi.c_imx_ssi_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-ssi.c_imx_ssi_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.imx_ssi = type { i32, i64 }

@SSI_SCR = common dso_local global i64 0, align 8
@SSI_SCR_SYN = common dso_local global i32 0, align 4
@SSI_SCR_NET = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SSI_STCR_TXBIT0 = common dso_local global i32 0, align 4
@SSI_STCR_TSCKP = common dso_local global i32 0, align 4
@SSI_STCR_TFSI = common dso_local global i32 0, align 4
@SSI_STCR_TEFS = common dso_local global i32 0, align 4
@IMX_SSI_USE_I2S_SLAVE = common dso_local global i32 0, align 4
@SSI_I2S_MODE_MASK = common dso_local global i32 0, align 4
@SSI_SCR_I2S_MODE_SLAVE = common dso_local global i32 0, align 4
@SSI_STCR_TFSL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SSI_STCR_TFEN0 = common dso_local global i32 0, align 4
@IMX_SSI_NET = common dso_local global i32 0, align 4
@IMX_SSI_SYN = common dso_local global i32 0, align 4
@SSI_STCR = common dso_local global i64 0, align 8
@SSI_SRCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @imx_ssi_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ssi_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.imx_ssi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = call %struct.imx_ssi* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.imx_ssi* %10, %struct.imx_ssi** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.imx_ssi*, %struct.imx_ssi** %6, align 8
  %12 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SSI_SCR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  %17 = load i32, i32* @SSI_SCR_SYN, align 4
  %18 = load i32, i32* @SSI_SCR_NET, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %16, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %77 [
    i32 133, label %25
    i32 130, label %53
    i32 134, label %59
    i32 135, label %67
  ]

25:                                               ; preds = %2
  %26 = load i32, i32* @SSI_STCR_TXBIT0, align 4
  %27 = load i32, i32* @SSI_STCR_TSCKP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SSI_STCR_TFSI, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SSI_STCR_TEFS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @SSI_SCR_NET, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.imx_ssi*, %struct.imx_ssi** %6, align 8
  %39 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IMX_SSI_USE_I2S_SLAVE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %25
  %45 = load i32, i32* @SSI_I2S_MODE_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @SSI_SCR_I2S_MODE_SLAVE, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %44, %25
  br label %77

53:                                               ; preds = %2
  %54 = load i32, i32* @SSI_STCR_TXBIT0, align 4
  %55 = load i32, i32* @SSI_STCR_TSCKP, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %77

59:                                               ; preds = %2
  %60 = load i32, i32* @SSI_STCR_TXBIT0, align 4
  %61 = load i32, i32* @SSI_STCR_TSCKP, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SSI_STCR_TFSL, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %77

67:                                               ; preds = %2
  %68 = load i32, i32* @SSI_STCR_TXBIT0, align 4
  %69 = load i32, i32* @SSI_STCR_TSCKP, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @SSI_STCR_TFSL, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @SSI_STCR_TEFS, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %2, %67, %59, %53, %52
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %80 = and i32 %78, %79
  switch i32 %80, label %96 [
    i32 132, label %81
    i32 131, label %87
    i32 129, label %91
    i32 128, label %95
  ]

81:                                               ; preds = %77
  %82 = load i32, i32* @SSI_STCR_TSCKP, align 4
  %83 = load i32, i32* @SSI_STCR_TFSI, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = xor i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %96

87:                                               ; preds = %77
  %88 = load i32, i32* @SSI_STCR_TSCKP, align 4
  %89 = load i32, i32* %7, align 4
  %90 = xor i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %96

91:                                               ; preds = %77
  %92 = load i32, i32* @SSI_STCR_TFSI, align 4
  %93 = load i32, i32* %7, align 4
  %94 = xor i32 %93, %92
  store i32 %94, i32* %7, align 4
  br label %96

95:                                               ; preds = %77
  br label %96

96:                                               ; preds = %77, %95, %91, %87, %81
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %99 = and i32 %97, %98
  switch i32 %99, label %101 [
    i32 136, label %100
  ]

100:                                              ; preds = %96
  br label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %151

104:                                              ; preds = %100
  %105 = load i32, i32* @SSI_STCR_TFEN0, align 4
  %106 = load i32, i32* %7, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %7, align 4
  %108 = load %struct.imx_ssi*, %struct.imx_ssi** %6, align 8
  %109 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @IMX_SSI_NET, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %104
  %115 = load i32, i32* @SSI_SCR_NET, align 4
  %116 = load i32, i32* %8, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %114, %104
  %119 = load %struct.imx_ssi*, %struct.imx_ssi** %6, align 8
  %120 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @IMX_SSI_SYN, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load i32, i32* @SSI_SCR_SYN, align 4
  %127 = load i32, i32* %8, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %125, %118
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.imx_ssi*, %struct.imx_ssi** %6, align 8
  %132 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @SSI_STCR, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @writel(i32 %130, i64 %135)
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.imx_ssi*, %struct.imx_ssi** %6, align 8
  %139 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SSI_SRCR, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @writel(i32 %137, i64 %142)
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.imx_ssi*, %struct.imx_ssi** %6, align 8
  %146 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @SSI_SCR, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @writel(i32 %144, i64 %149)
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %129, %101
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.imx_ssi* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
