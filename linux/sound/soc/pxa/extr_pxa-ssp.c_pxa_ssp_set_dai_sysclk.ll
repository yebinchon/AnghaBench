; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.ssp_priv = type { i32, i64, %struct.ssp_device* }
%struct.ssp_device = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SSCR0 = common dso_local global i32 0, align 4
@SSCR0_ECS = common dso_local global i32 0, align 4
@SSCR0_NCS = common dso_local global i32 0, align 4
@SSCR0_MOD = common dso_local global i32 0, align 4
@SSCR0_ACS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"pxa_ssp_set_dai_sysclk id: %d, clk_id %d, freq %u\0A\00", align 1
@PXA25x_SSP = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@PXA3xx_SSP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @pxa_ssp_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_ssp_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ssp_priv*, align 8
  %11 = alloca %struct.ssp_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %15 = call %struct.ssp_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %14)
  store %struct.ssp_priv* %15, %struct.ssp_priv** %10, align 8
  %16 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %17 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %16, i32 0, i32 2
  %18 = load %struct.ssp_device*, %struct.ssp_device** %17, align 8
  store %struct.ssp_device* %18, %struct.ssp_device** %11, align 8
  %19 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %20 = load i32, i32* @SSCR0, align 4
  %21 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %19, i32 %20)
  %22 = load i32, i32* @SSCR0_ECS, align 4
  %23 = load i32, i32* @SSCR0_NCS, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SSCR0_MOD, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SSCR0_ACS, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %21, %29
  store i32 %30, i32* %12, align 4
  %31 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %32 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %4
  %36 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %37 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @clk_set_rate(i64 %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %5, align 4
  br label %129

45:                                               ; preds = %35
  store i32 131, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %4
  %47 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %48 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %52 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @dev_dbg(i32* %50, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %7, align 4
  switch i32 %57, label %99 [
    i32 129, label %58
    i32 128, label %62
    i32 131, label %75
    i32 130, label %82
    i32 132, label %91
  ]

58:                                               ; preds = %46
  %59 = load i32, i32* @SSCR0_MOD, align 4
  %60 = load i32, i32* %12, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %102

62:                                               ; preds = %46
  %63 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %64 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PXA25x_SSP, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %70 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %69, i32 0, i32 0
  store i32 1843200, i32* %70, align 8
  br label %74

71:                                               ; preds = %62
  %72 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %73 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %72, i32 0, i32 0
  store i32 13000000, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %68
  br label %102

75:                                               ; preds = %46
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %78 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @SSCR0_ECS, align 4
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %12, align 4
  br label %102

82:                                               ; preds = %46
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %85 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @SSCR0_NCS, align 4
  %87 = load i32, i32* @SSCR0_MOD, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %12, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %12, align 4
  br label %102

91:                                               ; preds = %46
  %92 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %93 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  %94 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %95 = call i32 @pxa_ssp_set_scr(%struct.ssp_device* %94, i32 1)
  %96 = load i32, i32* @SSCR0_ACS, align 4
  %97 = load i32, i32* %12, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %12, align 4
  br label %102

99:                                               ; preds = %46
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %129

102:                                              ; preds = %91, %82, %75, %74, %58
  %103 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %104 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @PXA3xx_SSP, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %110 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @clk_disable_unprepare(i32 %111)
  br label %113

113:                                              ; preds = %108, %102
  %114 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %115 = load i32, i32* @SSCR0, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %114, i32 %115, i32 %116)
  %118 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %119 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @PXA3xx_SSP, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %113
  %124 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %125 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @clk_prepare_enable(i32 %126)
  br label %128

128:                                              ; preds = %123, %113
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %128, %99, %43
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local %struct.ssp_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @pxa_ssp_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @clk_set_rate(i64, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @pxa_ssp_set_scr(%struct.ssp_device*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pxa_ssp_write_reg(%struct.ssp_device*, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
