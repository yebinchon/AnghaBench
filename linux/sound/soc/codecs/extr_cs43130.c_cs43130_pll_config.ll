; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_pll_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_pll_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs43130_private = type { i32, i32, i32, i32 }
%struct.cs43130_pll_params = type { i64, i32, i64, i64, i32, i64 }

@.str = private unnamed_addr constant [44 x i8] c"cs43130->mclk = %u, cs43130->mclk_int = %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CS43130_PLL_SET_1 = common dso_local global i32 0, align 4
@CS43130_PLL_START_MASK = common dso_local global i32 0, align 4
@CS43130_PLL_SET_2 = common dso_local global i32 0, align 4
@CS43130_PLL_DIV_DATA_MASK = common dso_local global i32 0, align 4
@CS43130_PLL_DIV_FRAC_0_DATA_SHIFT = common dso_local global i32 0, align 4
@CS43130_PLL_SET_3 = common dso_local global i32 0, align 4
@CS43130_PLL_DIV_FRAC_1_DATA_SHIFT = common dso_local global i32 0, align 4
@CS43130_PLL_SET_4 = common dso_local global i32 0, align 4
@CS43130_PLL_DIV_FRAC_2_DATA_SHIFT = common dso_local global i32 0, align 4
@CS43130_PLL_SET_5 = common dso_local global i32 0, align 4
@CS43130_PLL_SET_6 = common dso_local global i32 0, align 4
@CS43130_PLL_SET_7 = common dso_local global i32 0, align 4
@CS43130_PLL_SET_8 = common dso_local global i32 0, align 4
@CS43130_PLL_MODE_MASK = common dso_local global i32 0, align 4
@CS43130_PLL_MODE_SHIFT = common dso_local global i32 0, align 4
@CS43130_PLL_SET_9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cs43130_pll_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs43130_pll_config(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.cs43130_private*, align 8
  %5 = alloca %struct.cs43130_pll_params*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.cs43130_private* %7, %struct.cs43130_private** %4, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cs43130_private*, %struct.cs43130_private** %4, align 8
  %12 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cs43130_private*, %struct.cs43130_private** %4, align 8
  %15 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.cs43130_private*, %struct.cs43130_private** %4, align 8
  %19 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cs43130_private*, %struct.cs43130_private** %4, align 8
  %22 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.cs43130_pll_params* @cs43130_get_pll_table(i32 %20, i32 %23)
  store %struct.cs43130_pll_params* %24, %struct.cs43130_pll_params** %5, align 8
  %25 = load %struct.cs43130_pll_params*, %struct.cs43130_pll_params** %5, align 8
  %26 = icmp ne %struct.cs43130_pll_params* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %129

30:                                               ; preds = %1
  %31 = load %struct.cs43130_pll_params*, %struct.cs43130_pll_params** %5, align 8
  %32 = getelementptr inbounds %struct.cs43130_pll_params, %struct.cs43130_pll_params* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.cs43130_private*, %struct.cs43130_private** %4, align 8
  %37 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CS43130_PLL_SET_1, align 4
  %40 = load i32, i32* @CS43130_PLL_START_MASK, align 4
  %41 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %40, i32 0)
  %42 = load %struct.cs43130_private*, %struct.cs43130_private** %4, align 8
  %43 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  store i32 0, i32* %2, align 4
  br label %129

44:                                               ; preds = %30
  %45 = load %struct.cs43130_private*, %struct.cs43130_private** %4, align 8
  %46 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load %struct.cs43130_private*, %struct.cs43130_private** %4, align 8
  %48 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CS43130_PLL_SET_2, align 4
  %51 = load i32, i32* @CS43130_PLL_DIV_DATA_MASK, align 4
  %52 = load %struct.cs43130_pll_params*, %struct.cs43130_pll_params** %5, align 8
  %53 = getelementptr inbounds %struct.cs43130_pll_params, %struct.cs43130_pll_params* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CS43130_PLL_DIV_FRAC_0_DATA_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 %51, i32 %56)
  %58 = load %struct.cs43130_private*, %struct.cs43130_private** %4, align 8
  %59 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CS43130_PLL_SET_3, align 4
  %62 = load i32, i32* @CS43130_PLL_DIV_DATA_MASK, align 4
  %63 = load %struct.cs43130_pll_params*, %struct.cs43130_pll_params** %5, align 8
  %64 = getelementptr inbounds %struct.cs43130_pll_params, %struct.cs43130_pll_params* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CS43130_PLL_DIV_FRAC_1_DATA_SHIFT, align 4
  %67 = ashr i32 %65, %66
  %68 = call i32 @regmap_update_bits(i32 %60, i32 %61, i32 %62, i32 %67)
  %69 = load %struct.cs43130_private*, %struct.cs43130_private** %4, align 8
  %70 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CS43130_PLL_SET_4, align 4
  %73 = load i32, i32* @CS43130_PLL_DIV_DATA_MASK, align 4
  %74 = load %struct.cs43130_pll_params*, %struct.cs43130_pll_params** %5, align 8
  %75 = getelementptr inbounds %struct.cs43130_pll_params, %struct.cs43130_pll_params* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CS43130_PLL_DIV_FRAC_2_DATA_SHIFT, align 4
  %78 = ashr i32 %76, %77
  %79 = call i32 @regmap_update_bits(i32 %71, i32 %72, i32 %73, i32 %78)
  %80 = load %struct.cs43130_private*, %struct.cs43130_private** %4, align 8
  %81 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CS43130_PLL_SET_5, align 4
  %84 = load %struct.cs43130_pll_params*, %struct.cs43130_pll_params** %5, align 8
  %85 = getelementptr inbounds %struct.cs43130_pll_params, %struct.cs43130_pll_params* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @regmap_write(i32 %82, i32 %83, i64 %86)
  %88 = load %struct.cs43130_private*, %struct.cs43130_private** %4, align 8
  %89 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @CS43130_PLL_SET_6, align 4
  %92 = load %struct.cs43130_pll_params*, %struct.cs43130_pll_params** %5, align 8
  %93 = getelementptr inbounds %struct.cs43130_pll_params, %struct.cs43130_pll_params* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @regmap_write(i32 %90, i32 %91, i64 %94)
  %96 = load %struct.cs43130_private*, %struct.cs43130_private** %4, align 8
  %97 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @CS43130_PLL_SET_7, align 4
  %100 = load %struct.cs43130_pll_params*, %struct.cs43130_pll_params** %5, align 8
  %101 = getelementptr inbounds %struct.cs43130_pll_params, %struct.cs43130_pll_params* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @regmap_write(i32 %98, i32 %99, i64 %102)
  %104 = load %struct.cs43130_private*, %struct.cs43130_private** %4, align 8
  %105 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CS43130_PLL_SET_8, align 4
  %108 = load i32, i32* @CS43130_PLL_MODE_MASK, align 4
  %109 = load %struct.cs43130_pll_params*, %struct.cs43130_pll_params** %5, align 8
  %110 = getelementptr inbounds %struct.cs43130_pll_params, %struct.cs43130_pll_params* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @CS43130_PLL_MODE_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = call i32 @regmap_update_bits(i32 %106, i32 %107, i32 %108, i32 %113)
  %115 = load %struct.cs43130_private*, %struct.cs43130_private** %4, align 8
  %116 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @CS43130_PLL_SET_9, align 4
  %119 = load %struct.cs43130_pll_params*, %struct.cs43130_pll_params** %5, align 8
  %120 = getelementptr inbounds %struct.cs43130_pll_params, %struct.cs43130_pll_params* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @regmap_write(i32 %117, i32 %118, i64 %121)
  %123 = load %struct.cs43130_private*, %struct.cs43130_private** %4, align 8
  %124 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @CS43130_PLL_SET_1, align 4
  %127 = load i32, i32* @CS43130_PLL_START_MASK, align 4
  %128 = call i32 @regmap_update_bits(i32 %125, i32 %126, i32 %127, i32 1)
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %44, %35, %27
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local %struct.cs43130_pll_params* @cs43130_get_pll_table(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
