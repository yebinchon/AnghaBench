; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_write_adsp_clk_setting.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_write_adsp_clk_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_priv = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wm_adsp = type { i32, i32, i64, i32 }

@MADERA_DSP_RATE_MASK = common dso_local global i32 0, align 4
@MADERA_DSP_RATE_SHIFT = common dso_local global i32 0, align 4
@MADERA_DSP_CLK_SEL_MASK = common dso_local global i32 0, align 4
@MADERA_DSP_CLK_SEL_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Set DSP frequency to 0x%x\0A\00", align 1
@MADERA_DSP_CONFIG_2_OFFS = common dso_local global i64 0, align 8
@MADERA_DSP_CONFIG_1_OFFS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Set DSP clocking to 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to set DSP%d clock: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.madera_priv*, %struct.wm_adsp*, i32)* @madera_write_adsp_clk_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_write_adsp_clk_setting(%struct.madera_priv* %0, %struct.wm_adsp* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.madera_priv*, align 8
  %6 = alloca %struct.wm_adsp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.madera_priv* %0, %struct.madera_priv** %5, align 8
  store %struct.wm_adsp* %1, %struct.wm_adsp** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @MADERA_DSP_RATE_MASK, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.madera_priv*, %struct.madera_priv** %5, align 8
  %13 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.wm_adsp*, %struct.wm_adsp** %6, align 8
  %16 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %14, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MADERA_DSP_RATE_SHIFT, align 4
  %23 = shl i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.madera_priv*, %struct.madera_priv** %5, align 8
  %25 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %38 [
    i32 130, label %29
    i32 129, label %29
    i32 128, label %29
  ]

29:                                               ; preds = %3, %3, %3
  %30 = load i32, i32* @MADERA_DSP_CLK_SEL_MASK, align 4
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MADERA_DSP_CLK_SEL_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %60

38:                                               ; preds = %3
  %39 = load %struct.madera_priv*, %struct.madera_priv** %5, align 8
  %40 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.wm_adsp*, %struct.wm_adsp** %6, align 8
  %47 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.wm_adsp*, %struct.wm_adsp** %6, align 8
  %50 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MADERA_DSP_CONFIG_2_OFFS, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @regmap_write(i32 %48, i64 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %38
  br label %83

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %59, %29
  %61 = load %struct.wm_adsp*, %struct.wm_adsp** %6, align 8
  %62 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.wm_adsp*, %struct.wm_adsp** %6, align 8
  %65 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MADERA_DSP_CONFIG_1_OFFS, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @regmap_update_bits(i32 %63, i64 %68, i32 %69, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  br label %83

75:                                               ; preds = %60
  %76 = load %struct.madera_priv*, %struct.madera_priv** %5, align 8
  %77 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @dev_dbg(i32 %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  store i32 0, i32* %4, align 4
  br label %93

83:                                               ; preds = %74, %58
  %84 = load %struct.wm_adsp*, %struct.wm_adsp** %6, align 8
  %85 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.wm_adsp*, %struct.wm_adsp** %6, align 8
  %88 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %83, %75
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
