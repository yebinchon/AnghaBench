; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_write_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_write_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera = type { i32 }
%struct.madera_fll_cfg = type { i32, i32, i32, i32, i32 }

@MADERA_FLL_CONTROL_3_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_THETA_MASK = common dso_local global i32 0, align 4
@MADERA_FLL_CONTROL_4_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_LAMBDA_MASK = common dso_local global i32 0, align 4
@MADERA_FLL_CONTROL_5_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_FRATIO_MASK = common dso_local global i32 0, align 4
@MADERA_FLL1_FRATIO_SHIFT = common dso_local global i32 0, align 4
@MADERA_FLL_CONTROL_6_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_REFCLK_DIV_MASK = common dso_local global i32 0, align 4
@MADERA_FLL1_REFCLK_SRC_MASK = common dso_local global i32 0, align 4
@MADERA_FLL1_REFCLK_DIV_SHIFT = common dso_local global i32 0, align 4
@MADERA_FLL1_REFCLK_SRC_SHIFT = common dso_local global i32 0, align 4
@MADERA_FLL_SYNCHRONISER_7_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_GAIN_MASK = common dso_local global i32 0, align 4
@MADERA_FLL1_GAIN_SHIFT = common dso_local global i32 0, align 4
@MADERA_FLL_CONTROL_7_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL_CONTROL_2_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_CTRL_UPD = common dso_local global i32 0, align 4
@MADERA_FLL1_N_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.madera*, i32, %struct.madera_fll_cfg*, i32, i32, i32)* @madera_write_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_write_fll(%struct.madera* %0, i32 %1, %struct.madera_fll_cfg* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.madera*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.madera_fll_cfg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.madera* %0, %struct.madera** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.madera_fll_cfg* %2, %struct.madera_fll_cfg** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.madera*, %struct.madera** %7, align 8
  %16 = getelementptr inbounds %struct.madera, %struct.madera* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* @MADERA_FLL_CONTROL_3_OFFS, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* @MADERA_FLL1_THETA_MASK, align 4
  %23 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %9, align 8
  %24 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regmap_update_bits_check(i32 %17, i64 %21, i32 %22, i32 %25, i32* %13)
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %14, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %14, align 4
  %30 = load %struct.madera*, %struct.madera** %7, align 8
  %31 = getelementptr inbounds %struct.madera, %struct.madera* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = load i64, i64* @MADERA_FLL_CONTROL_4_OFFS, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* @MADERA_FLL1_LAMBDA_MASK, align 4
  %38 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %9, align 8
  %39 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regmap_update_bits_check(i32 %32, i64 %36, i32 %37, i32 %40, i32* %13)
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %14, align 4
  %45 = load %struct.madera*, %struct.madera** %7, align 8
  %46 = getelementptr inbounds %struct.madera, %struct.madera* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = load i64, i64* @MADERA_FLL_CONTROL_5_OFFS, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* @MADERA_FLL1_FRATIO_MASK, align 4
  %53 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %9, align 8
  %54 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MADERA_FLL1_FRATIO_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = call i32 @regmap_update_bits_check(i32 %47, i64 %51, i32 %52, i32 %57, i32* %13)
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %14, align 4
  %62 = load %struct.madera*, %struct.madera** %7, align 8
  %63 = getelementptr inbounds %struct.madera, %struct.madera* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* @MADERA_FLL_CONTROL_6_OFFS, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i32, i32* @MADERA_FLL1_REFCLK_DIV_MASK, align 4
  %70 = load i32, i32* @MADERA_FLL1_REFCLK_SRC_MASK, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %9, align 8
  %73 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MADERA_FLL1_REFCLK_DIV_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @MADERA_FLL1_REFCLK_SRC_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = or i32 %76, %79
  %81 = call i32 @regmap_update_bits_check(i32 %64, i64 %68, i32 %71, i32 %80, i32* %13)
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %14, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %6
  %88 = load %struct.madera*, %struct.madera** %7, align 8
  %89 = getelementptr inbounds %struct.madera, %struct.madera* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* @MADERA_FLL_SYNCHRONISER_7_OFFS, align 8
  %94 = add nsw i64 %92, %93
  %95 = load i32, i32* @MADERA_FLL1_GAIN_MASK, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @MADERA_FLL1_GAIN_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = call i32 @regmap_update_bits_check(i32 %90, i64 %94, i32 %95, i32 %98, i32* %13)
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %14, align 4
  br label %119

103:                                              ; preds = %6
  %104 = load %struct.madera*, %struct.madera** %7, align 8
  %105 = getelementptr inbounds %struct.madera, %struct.madera* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %8, align 4
  %108 = zext i32 %107 to i64
  %109 = load i64, i64* @MADERA_FLL_CONTROL_7_OFFS, align 8
  %110 = add nsw i64 %108, %109
  %111 = load i32, i32* @MADERA_FLL1_GAIN_MASK, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @MADERA_FLL1_GAIN_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = call i32 @regmap_update_bits_check(i32 %106, i64 %110, i32 %111, i32 %114, i32* %13)
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %103, %87
  %120 = load %struct.madera*, %struct.madera** %7, align 8
  %121 = getelementptr inbounds %struct.madera, %struct.madera* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %8, align 4
  %124 = zext i32 %123 to i64
  %125 = load i64, i64* @MADERA_FLL_CONTROL_2_OFFS, align 8
  %126 = add nsw i64 %124, %125
  %127 = load i32, i32* @MADERA_FLL1_CTRL_UPD, align 4
  %128 = load i32, i32* @MADERA_FLL1_N_MASK, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @MADERA_FLL1_CTRL_UPD, align 4
  %131 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %9, align 8
  %132 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %130, %133
  %135 = call i32 @regmap_update_bits_check(i32 %122, i64 %126, i32 %129, i32 %134, i32* %13)
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %14, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  ret i32 %139
}

declare dso_local i32 @regmap_update_bits_check(i32, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
