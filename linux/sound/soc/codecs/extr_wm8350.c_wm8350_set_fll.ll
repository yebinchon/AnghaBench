; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_set_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_set_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8350_data = type { i32, i32, %struct.wm8350* }
%struct.wm8350 = type { i32 }
%struct._fll_div = type { i32, i32, i32, i32 }

@WM8350_POWER_MGMT_4 = common dso_local global i32 0, align 4
@WM8350_FLL_ENA = common dso_local global i32 0, align 4
@WM8350_FLL_OSC_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"FLL in %u FLL out %u N 0x%x K 0x%x div %d ratio %d\00", align 1
@WM8350_FLL_CONTROL_1 = common dso_local global i32 0, align 4
@WM8350_FLL_OUTDIV_MASK = common dso_local global i32 0, align 4
@WM8350_FLL_RSP_RATE_MASK = common dso_local global i32 0, align 4
@WM8350_FLL_CONTROL_2 = common dso_local global i32 0, align 4
@WM8350_FLL_N_MASK = common dso_local global i32 0, align 4
@WM8350_FLL_CONTROL_3 = common dso_local global i32 0, align 4
@WM8350_FLL_CONTROL_4 = common dso_local global i32 0, align 4
@WM8350_FLL_FRAC = common dso_local global i32 0, align 4
@WM8350_FLL_SLOW_LOCK_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @wm8350_set_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_set_fll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.wm8350_data*, align 8
  %14 = alloca %struct.wm8350*, align 8
  %15 = alloca %struct._fll_div, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %19, i32 0, i32 0
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %20, align 8
  store %struct.snd_soc_component* %21, %struct.snd_soc_component** %12, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %23 = call %struct.wm8350_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %22)
  store %struct.wm8350_data* %23, %struct.wm8350_data** %13, align 8
  %24 = load %struct.wm8350_data*, %struct.wm8350_data** %13, align 8
  %25 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %24, i32 0, i32 2
  %26 = load %struct.wm8350*, %struct.wm8350** %25, align 8
  store %struct.wm8350* %26, %struct.wm8350** %14, align 8
  store i32 0, i32* %16, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.wm8350_data*, %struct.wm8350_data** %13, align 8
  %29 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %5
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.wm8350_data*, %struct.wm8350_data** %13, align 8
  %35 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %154

39:                                               ; preds = %32, %5
  %40 = load %struct.wm8350*, %struct.wm8350** %14, align 8
  %41 = load i32, i32* @WM8350_POWER_MGMT_4, align 4
  %42 = load i32, i32* @WM8350_FLL_ENA, align 4
  %43 = load i32, i32* @WM8350_FLL_OSC_ENA, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @wm8350_clear_bits(%struct.wm8350* %40, i32 %41, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48, %39
  %52 = load i32, i32* %16, align 4
  store i32 %52, i32* %6, align 4
  br label %154

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @fll_factors(%struct._fll_div* %15, i32 %54, i32 %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %6, align 4
  br label %154

61:                                               ; preds = %53
  %62 = load %struct.wm8350*, %struct.wm8350** %14, align 8
  %63 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %15, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %15, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %15, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %15, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_dbg(i32 %64, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %68, i32 %70, i32 %72, i32 %74)
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %77 = load i32, i32* @WM8350_FLL_CONTROL_1, align 4
  %78 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %76, i32 %77)
  %79 = load i32, i32* @WM8350_FLL_OUTDIV_MASK, align 4
  %80 = load i32, i32* @WM8350_FLL_RSP_RATE_MASK, align 4
  %81 = or i32 %79, %80
  %82 = or i32 %81, 49152
  %83 = xor i32 %82, -1
  %84 = and i32 %78, %83
  store i32 %84, i32* %17, align 4
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %86 = load i32, i32* @WM8350_FLL_CONTROL_1, align 4
  %87 = load i32, i32* %17, align 4
  %88 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %15, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 8
  %91 = or i32 %87, %90
  %92 = or i32 %91, 80
  %93 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %85, i32 %86, i32 %92)
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %95 = load i32, i32* @WM8350_FLL_CONTROL_2, align 4
  %96 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %15, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 11
  %99 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %15, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @WM8350_FLL_N_MASK, align 4
  %102 = and i32 %100, %101
  %103 = or i32 %98, %102
  %104 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %94, i32 %95, i32 %103)
  %105 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %106 = load i32, i32* @WM8350_FLL_CONTROL_3, align 4
  %107 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %15, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %105, i32 %106, i32 %108)
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %111 = load i32, i32* @WM8350_FLL_CONTROL_4, align 4
  %112 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %110, i32 %111)
  %113 = load i32, i32* @WM8350_FLL_FRAC, align 4
  %114 = load i32, i32* @WM8350_FLL_SLOW_LOCK_REF, align 4
  %115 = or i32 %113, %114
  %116 = xor i32 %115, -1
  %117 = and i32 %112, %116
  store i32 %117, i32* %18, align 4
  %118 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %119 = load i32, i32* @WM8350_FLL_CONTROL_4, align 4
  %120 = load i32, i32* %18, align 4
  %121 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %15, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %61
  %125 = load i32, i32* @WM8350_FLL_FRAC, align 4
  br label %127

126:                                              ; preds = %61
  br label %127

127:                                              ; preds = %126, %124
  %128 = phi i32 [ %125, %124 ], [ 0, %126 ]
  %129 = or i32 %120, %128
  %130 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %15, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 8
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = load i32, i32* @WM8350_FLL_SLOW_LOCK_REF, align 4
  br label %136

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %133
  %137 = phi i32 [ %134, %133 ], [ 0, %135 ]
  %138 = or i32 %129, %137
  %139 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %118, i32 %119, i32 %138)
  %140 = load %struct.wm8350*, %struct.wm8350** %14, align 8
  %141 = load i32, i32* @WM8350_POWER_MGMT_4, align 4
  %142 = load i32, i32* @WM8350_FLL_OSC_ENA, align 4
  %143 = call i32 @wm8350_set_bits(%struct.wm8350* %140, i32 %141, i32 %142)
  %144 = load %struct.wm8350*, %struct.wm8350** %14, align 8
  %145 = load i32, i32* @WM8350_POWER_MGMT_4, align 4
  %146 = load i32, i32* @WM8350_FLL_ENA, align 4
  %147 = call i32 @wm8350_set_bits(%struct.wm8350* %144, i32 %145, i32 %146)
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.wm8350_data*, %struct.wm8350_data** %13, align 8
  %150 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.wm8350_data*, %struct.wm8350_data** %13, align 8
  %153 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %136, %59, %51, %38
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local %struct.wm8350_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @fll_factors(%struct._fll_div*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
