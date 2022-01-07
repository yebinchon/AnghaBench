; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mmp-sspa.c_mmp_sspa_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mmp-sspa.c_mmp_sspa_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.sspa_priv = type { i32, %struct.ssp_device* }
%struct.ssp_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SSPA_TXSP = common dso_local global i32 0, align 4
@SSPA_SP_S_EN = common dso_local global i32 0, align 4
@SSPA_RXSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"can't change hardware dai format: stream is in use\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SSPA_SP_WEN = common dso_local global i32 0, align 4
@SSPA_SP_S_RST = common dso_local global i32 0, align 4
@SSPA_SP_FFLUSH = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@SSPA_SP_MSL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SSPA_SP_FSP = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SSPA_TXCTL = common dso_local global i32 0, align 4
@SSPA_RXCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @mmp_sspa_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_sspa_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sspa_priv*, align 8
  %7 = alloca %struct.ssp_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = call %struct.sspa_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.sspa_priv* %11, %struct.sspa_priv** %6, align 8
  %12 = load %struct.sspa_priv*, %struct.sspa_priv** %6, align 8
  %13 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %12, i32 0, i32 1
  %14 = load %struct.ssp_device*, %struct.ssp_device** %13, align 8
  store %struct.ssp_device* %14, %struct.ssp_device** %7, align 8
  %15 = load %struct.sspa_priv*, %struct.sspa_priv** %6, align 8
  %16 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %130

21:                                               ; preds = %2
  %22 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %23 = load i32, i32* @SSPA_TXSP, align 4
  %24 = call i32 @mmp_sspa_read_reg(%struct.ssp_device* %22, i32 %23)
  %25 = load i32, i32* @SSPA_SP_S_EN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %30 = load i32, i32* @SSPA_RXSP, align 4
  %31 = call i32 @mmp_sspa_read_reg(%struct.ssp_device* %29, i32 %30)
  %32 = load i32, i32* @SSPA_SP_S_EN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28, %21
  %36 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %37 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %130

43:                                               ; preds = %28
  %44 = load i32, i32* @SSPA_SP_WEN, align 4
  %45 = load i32, i32* @SSPA_SP_S_RST, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SSPA_SP_FFLUSH, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %51 = and i32 %49, %50
  switch i32 %51, label %57 [
    i32 130, label %52
    i32 131, label %56
  ]

52:                                               ; preds = %43
  %53 = load i32, i32* @SSPA_SP_MSL, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %60

56:                                               ; preds = %43
  br label %60

57:                                               ; preds = %43
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %130

60:                                               ; preds = %56, %52
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %63 = and i32 %61, %62
  switch i32 %63, label %68 [
    i32 128, label %64
  ]

64:                                               ; preds = %60
  %65 = load i32, i32* @SSPA_SP_FSP, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %71

68:                                               ; preds = %60
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %130

71:                                               ; preds = %64
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %74 = and i32 %72, %73
  switch i32 %74, label %85 [
    i32 129, label %75
  ]

75:                                               ; preds = %71
  %76 = call i32 @SSPA_TXSP_FPER(i32 63)
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = call i32 @SSPA_SP_FWID(i32 31)
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = call i32 @SSPA_CTL_XDATDLY(i32 1)
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %88

85:                                               ; preds = %71
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %130

88:                                               ; preds = %75
  %89 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %90 = load i32, i32* @SSPA_TXSP, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @mmp_sspa_write_reg(%struct.ssp_device* %89, i32 %90, i32 %91)
  %93 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %94 = load i32, i32* @SSPA_RXSP, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @mmp_sspa_write_reg(%struct.ssp_device* %93, i32 %94, i32 %95)
  %97 = load i32, i32* @SSPA_SP_S_RST, align 4
  %98 = load i32, i32* @SSPA_SP_FFLUSH, align 4
  %99 = or i32 %97, %98
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %8, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %104 = load i32, i32* @SSPA_TXSP, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @mmp_sspa_write_reg(%struct.ssp_device* %103, i32 %104, i32 %105)
  %107 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %108 = load i32, i32* @SSPA_RXSP, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @mmp_sspa_write_reg(%struct.ssp_device* %107, i32 %108, i32 %109)
  %111 = load i32, i32* @SSPA_SP_MSL, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %8, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %8, align 4
  %115 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %116 = load i32, i32* @SSPA_TXSP, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @mmp_sspa_write_reg(%struct.ssp_device* %115, i32 %116, i32 %117)
  %119 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %120 = load i32, i32* @SSPA_TXCTL, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @mmp_sspa_write_reg(%struct.ssp_device* %119, i32 %120, i32 %121)
  %123 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %124 = load i32, i32* @SSPA_RXCTL, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @mmp_sspa_write_reg(%struct.ssp_device* %123, i32 %124, i32 %125)
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.sspa_priv*, %struct.sspa_priv** %6, align 8
  %129 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %88, %85, %68, %57, %35, %20
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.sspa_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @mmp_sspa_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @SSPA_TXSP_FPER(i32) #1

declare dso_local i32 @SSPA_SP_FWID(i32) #1

declare dso_local i32 @SSPA_CTL_XDATDLY(i32) #1

declare dso_local i32 @mmp_sspa_write_reg(%struct.ssp_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
