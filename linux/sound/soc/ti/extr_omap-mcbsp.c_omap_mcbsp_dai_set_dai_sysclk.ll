; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_dai_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_dai_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.omap_mcbsp = type { i32, i64, %struct.omap_mcbsp_reg_cfg }
%struct.omap_mcbsp_reg_cfg = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@CLKSM = common dso_local global i32 0, align 4
@SCLKME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MCBSP_CLKS_PRCM_SRC = common dso_local global i32 0, align 4
@MCBSP_CLKS_PAD_SRC = common dso_local global i32 0, align 4
@CLKXM = common dso_local global i32 0, align 4
@CLKRM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @omap_mcbsp_dai_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcbsp_dai_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.omap_mcbsp*, align 8
  %11 = alloca %struct.omap_mcbsp_reg_cfg*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = call %struct.omap_mcbsp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.omap_mcbsp* %14, %struct.omap_mcbsp** %10, align 8
  %15 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %10, align 8
  %16 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %15, i32 0, i32 2
  store %struct.omap_mcbsp_reg_cfg* %16, %struct.omap_mcbsp_reg_cfg** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %10, align 8
  %18 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %10, align 8
  %24 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %106

28:                                               ; preds = %21
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %106

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %10, align 8
  %34 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @CLKSM, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %38 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @SCLKME, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %44 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %7, align 4
  switch i32 %47, label %101 [
    i32 132, label %48
    i32 129, label %54
    i32 130, label %64
    i32 128, label %72
    i32 131, label %89
  ]

48:                                               ; preds = %31
  %49 = load i32, i32* @CLKSM, align 4
  %50 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %51 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %104

54:                                               ; preds = %31
  %55 = call i32 (...) @mcbsp_omap1()
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %104

60:                                               ; preds = %54
  %61 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %10, align 8
  %62 = load i32, i32* @MCBSP_CLKS_PRCM_SRC, align 4
  %63 = call i32 @omap2_mcbsp_set_clks_src(%struct.omap_mcbsp* %61, i32 %62)
  store i32 %63, i32* %12, align 4
  br label %104

64:                                               ; preds = %31
  %65 = call i32 (...) @mcbsp_omap1()
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %12, align 4
  br label %104

68:                                               ; preds = %64
  %69 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %10, align 8
  %70 = load i32, i32* @MCBSP_CLKS_PAD_SRC, align 4
  %71 = call i32 @omap2_mcbsp_set_clks_src(%struct.omap_mcbsp* %69, i32 %70)
  store i32 %71, i32* %12, align 4
  br label %104

72:                                               ; preds = %31
  %73 = load i32, i32* @CLKSM, align 4
  %74 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %75 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @SCLKME, align 4
  %79 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %80 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* @CLKXM, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %86 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %104

89:                                               ; preds = %31
  %90 = load i32, i32* @SCLKME, align 4
  %91 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %92 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* @CLKRM, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %98 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %104

101:                                              ; preds = %31
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %101, %89, %72, %68, %67, %60, %57, %48
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %28, %27
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.omap_mcbsp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @mcbsp_omap1(...) #1

declare dso_local i32 @omap2_mcbsp_set_clks_src(%struct.omap_mcbsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
