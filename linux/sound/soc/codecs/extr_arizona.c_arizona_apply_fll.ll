; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_apply_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_apply_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { i32 }
%struct.arizona_fll_cfg = type { i32, i32, i32, i32, i32, i32, i32 }

@ARIZONA_FLL1_THETA_MASK = common dso_local global i32 0, align 4
@ARIZONA_FLL1_LAMBDA_MASK = common dso_local global i32 0, align 4
@ARIZONA_FLL1_FRATIO_MASK = common dso_local global i32 0, align 4
@ARIZONA_FLL1_FRATIO_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_FLL1_CLK_REF_DIV_MASK = common dso_local global i32 0, align 4
@ARIZONA_FLL1_CLK_REF_SRC_MASK = common dso_local global i32 0, align 4
@ARIZONA_FLL1_CLK_REF_DIV_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_FLL1_CLK_REF_SRC_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_FLL1_GAIN_MASK = common dso_local global i32 0, align 4
@ARIZONA_FLL1_GAIN_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_FLL1_OUTDIV_MASK = common dso_local global i32 0, align 4
@ARIZONA_FLL1_OUTDIV_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_FLL1_CTRL_UPD = common dso_local global i32 0, align 4
@ARIZONA_FLL1_N_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arizona*, i32, %struct.arizona_fll_cfg*, i32, i32)* @arizona_apply_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arizona_apply_fll(%struct.arizona* %0, i32 %1, %struct.arizona_fll_cfg* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.arizona*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.arizona_fll_cfg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.arizona* %0, %struct.arizona** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.arizona_fll_cfg* %2, %struct.arizona_fll_cfg** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.arizona*, %struct.arizona** %6, align 8
  %12 = getelementptr inbounds %struct.arizona, %struct.arizona* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = add i32 %14, 3
  %16 = load i32, i32* @ARIZONA_FLL1_THETA_MASK, align 4
  %17 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %8, align 8
  %18 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regmap_update_bits_async(i32 %13, i32 %15, i32 %16, i32 %19)
  %21 = load %struct.arizona*, %struct.arizona** %6, align 8
  %22 = getelementptr inbounds %struct.arizona, %struct.arizona* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add i32 %24, 4
  %26 = load i32, i32* @ARIZONA_FLL1_LAMBDA_MASK, align 4
  %27 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %8, align 8
  %28 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regmap_update_bits_async(i32 %23, i32 %25, i32 %26, i32 %29)
  %31 = load %struct.arizona*, %struct.arizona** %6, align 8
  %32 = getelementptr inbounds %struct.arizona, %struct.arizona* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, 5
  %36 = load i32, i32* @ARIZONA_FLL1_FRATIO_MASK, align 4
  %37 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %8, align 8
  %38 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ARIZONA_FLL1_FRATIO_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = call i32 @regmap_update_bits_async(i32 %33, i32 %35, i32 %36, i32 %41)
  %43 = load %struct.arizona*, %struct.arizona** %6, align 8
  %44 = getelementptr inbounds %struct.arizona, %struct.arizona* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, 6
  %48 = load i32, i32* @ARIZONA_FLL1_CLK_REF_DIV_MASK, align 4
  %49 = load i32, i32* @ARIZONA_FLL1_CLK_REF_SRC_MASK, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %8, align 8
  %52 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ARIZONA_FLL1_CLK_REF_DIV_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @ARIZONA_FLL1_CLK_REF_SRC_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = or i32 %55, %58
  %60 = call i32 @regmap_update_bits_async(i32 %45, i32 %47, i32 %50, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %5
  %64 = load %struct.arizona*, %struct.arizona** %6, align 8
  %65 = getelementptr inbounds %struct.arizona, %struct.arizona* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 7
  %69 = load i32, i32* @ARIZONA_FLL1_GAIN_MASK, align 4
  %70 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %8, align 8
  %71 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ARIZONA_FLL1_GAIN_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = call i32 @regmap_update_bits(i32 %66, i32 %68, i32 %69, i32 %74)
  br label %101

76:                                               ; preds = %5
  %77 = load %struct.arizona*, %struct.arizona** %6, align 8
  %78 = getelementptr inbounds %struct.arizona, %struct.arizona* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = add i32 %80, 5
  %82 = load i32, i32* @ARIZONA_FLL1_OUTDIV_MASK, align 4
  %83 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %8, align 8
  %84 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ARIZONA_FLL1_OUTDIV_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = call i32 @regmap_update_bits(i32 %79, i32 %81, i32 %82, i32 %87)
  %89 = load %struct.arizona*, %struct.arizona** %6, align 8
  %90 = getelementptr inbounds %struct.arizona, %struct.arizona* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = add i32 %92, 9
  %94 = load i32, i32* @ARIZONA_FLL1_GAIN_MASK, align 4
  %95 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %8, align 8
  %96 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ARIZONA_FLL1_GAIN_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = call i32 @regmap_update_bits(i32 %91, i32 %93, i32 %94, i32 %99)
  br label %101

101:                                              ; preds = %76, %63
  %102 = load %struct.arizona*, %struct.arizona** %6, align 8
  %103 = getelementptr inbounds %struct.arizona, %struct.arizona* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %7, align 4
  %106 = add i32 %105, 2
  %107 = load i32, i32* @ARIZONA_FLL1_CTRL_UPD, align 4
  %108 = load i32, i32* @ARIZONA_FLL1_N_MASK, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @ARIZONA_FLL1_CTRL_UPD, align 4
  %111 = load %struct.arizona_fll_cfg*, %struct.arizona_fll_cfg** %8, align 8
  %112 = getelementptr inbounds %struct.arizona_fll_cfg, %struct.arizona_fll_cfg* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %110, %113
  %115 = call i32 @regmap_update_bits_async(i32 %104, i32 %106, i32 %109, i32 %114)
  ret void
}

declare dso_local i32 @regmap_update_bits_async(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
