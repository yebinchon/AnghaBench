; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8955.c_wm8955_configure_clocking.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8955.c_wm8955_configure_clocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm8955_priv = type { i32, i64 }
%struct.pll_factors = type { i32, i32, i64 }

@clock_cfgs = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Sample rate %dHz unsupported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8955_MCLKSEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Unable to generate %dHz from %dHz MCLK\0A\00", align 1
@WM8955_PLL_CONTROL_1 = common dso_local global i32 0, align 4
@WM8955_N_MASK = common dso_local global i32 0, align 4
@WM8955_K_21_18_MASK = common dso_local global i32 0, align 4
@WM8955_N_SHIFT = common dso_local global i32 0, align 4
@WM8955_PLL_CONTROL_2 = common dso_local global i32 0, align 4
@WM8955_K_17_9_MASK = common dso_local global i32 0, align 4
@WM8955_PLL_CONTROL_3 = common dso_local global i32 0, align 4
@WM8955_K_8_0_MASK = common dso_local global i32 0, align 4
@WM8955_PLL_CONTROL_4 = common dso_local global i32 0, align 4
@WM8955_KEN = common dso_local global i32 0, align 4
@WM8955_PLL_RB = common dso_local global i32 0, align 4
@WM8955_PLLOUTDIV2 = common dso_local global i32 0, align 4
@WM8955_CLOCKING_PLL = common dso_local global i32 0, align 4
@WM8955_PLLEN = common dso_local global i32 0, align 4
@WM8955_SR_SHIFT = common dso_local global i32 0, align 4
@WM8955_SAMPLE_RATE = common dso_local global i32 0, align 4
@WM8955_USB = common dso_local global i32 0, align 4
@WM8955_SR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8955_configure_clocking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8955_configure_clocking(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm8955_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pll_factors, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = call %struct.wm8955_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.wm8955_priv* %13, %struct.wm8955_priv** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %14 = load %struct.wm8955_priv*, %struct.wm8955_priv** %4, align 8
  %15 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.wm8955_priv*, %struct.wm8955_priv** %4, align 8
  %20 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %19, i32 0, i32 0
  store i32 8000, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %1
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %53, %21
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clock_cfgs, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %22
  %28 = load %struct.wm8955_priv*, %struct.wm8955_priv** %4, align 8
  %29 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clock_cfgs, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %30, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %53

39:                                               ; preds = %27
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.wm8955_priv*, %struct.wm8955_priv** %4, align 8
  %42 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clock_cfgs, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %43, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %56

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %38
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %22

56:                                               ; preds = %51, %22
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %61 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.wm8955_priv*, %struct.wm8955_priv** %4, align 8
  %64 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, -1
  %69 = zext i1 %68 to i32
  %70 = call i32 @WARN_ON(i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %207

73:                                               ; preds = %56
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clock_cfgs, align 8
  %76 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %75)
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %179

78:                                               ; preds = %73
  %79 = load i32, i32* @WM8955_MCLKSEL, align 4
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %83 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.wm8955_priv*, %struct.wm8955_priv** %4, align 8
  %86 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clock_cfgs, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @wm8955_pll_factors(i32 %84, i64 %87, i64 %93, %struct.pll_factors* %11)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %78
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %99 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.wm8955_priv*, %struct.wm8955_priv** %4, align 8
  %102 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.wm8955_priv*, %struct.wm8955_priv** %4, align 8
  %105 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %100, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %103, i64 %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %207

110:                                              ; preds = %78
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %112 = load i32, i32* @WM8955_PLL_CONTROL_1, align 4
  %113 = load i32, i32* @WM8955_N_MASK, align 4
  %114 = load i32, i32* @WM8955_K_21_18_MASK, align 4
  %115 = or i32 %113, %114
  %116 = getelementptr inbounds %struct.pll_factors, %struct.pll_factors* %11, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @WM8955_N_SHIFT, align 4
  %119 = shl i32 %117, %118
  %120 = getelementptr inbounds %struct.pll_factors, %struct.pll_factors* %11, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, 18
  %123 = or i32 %119, %122
  %124 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %111, i32 %112, i32 %115, i32 %123)
  %125 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %126 = load i32, i32* @WM8955_PLL_CONTROL_2, align 4
  %127 = load i32, i32* @WM8955_K_17_9_MASK, align 4
  %128 = getelementptr inbounds %struct.pll_factors, %struct.pll_factors* %11, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 9
  %131 = load i32, i32* @WM8955_K_17_9_MASK, align 4
  %132 = and i32 %130, %131
  %133 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %125, i32 %126, i32 %127, i32 %132)
  %134 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %135 = load i32, i32* @WM8955_PLL_CONTROL_3, align 4
  %136 = load i32, i32* @WM8955_K_8_0_MASK, align 4
  %137 = getelementptr inbounds %struct.pll_factors, %struct.pll_factors* %11, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @WM8955_K_8_0_MASK, align 4
  %140 = and i32 %138, %139
  %141 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %134, i32 %135, i32 %136, i32 %140)
  %142 = getelementptr inbounds %struct.pll_factors, %struct.pll_factors* %11, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %110
  %146 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %147 = load i32, i32* @WM8955_PLL_CONTROL_4, align 4
  %148 = load i32, i32* @WM8955_KEN, align 4
  %149 = load i32, i32* @WM8955_KEN, align 4
  %150 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %146, i32 %147, i32 %148, i32 %149)
  br label %156

151:                                              ; preds = %110
  %152 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %153 = load i32, i32* @WM8955_PLL_CONTROL_4, align 4
  %154 = load i32, i32* @WM8955_KEN, align 4
  %155 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %152, i32 %153, i32 %154, i32 0)
  br label %156

156:                                              ; preds = %151, %145
  %157 = getelementptr inbounds %struct.pll_factors, %struct.pll_factors* %11, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i32, i32* @WM8955_PLL_RB, align 4
  %162 = load i32, i32* @WM8955_PLLOUTDIV2, align 4
  %163 = or i32 %161, %162
  store i32 %163, i32* %7, align 4
  br label %166

164:                                              ; preds = %156
  %165 = load i32, i32* @WM8955_PLL_RB, align 4
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %164, %160
  %167 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %168 = load i32, i32* @WM8955_CLOCKING_PLL, align 4
  %169 = load i32, i32* @WM8955_PLL_RB, align 4
  %170 = load i32, i32* @WM8955_PLLOUTDIV2, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %167, i32 %168, i32 %171, i32 %172)
  %174 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %175 = load i32, i32* @WM8955_CLOCKING_PLL, align 4
  %176 = load i32, i32* @WM8955_PLLEN, align 4
  %177 = load i32, i32* @WM8955_PLLEN, align 4
  %178 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %174, i32 %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %166, %73
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clock_cfgs, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clock_cfgs, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @WM8955_SR_SHIFT, align 4
  %193 = shl i32 %191, %192
  %194 = or i32 %185, %193
  store i32 %194, i32* %9, align 4
  %195 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %196 = load i32, i32* @WM8955_SAMPLE_RATE, align 4
  %197 = load i32, i32* @WM8955_USB, align 4
  %198 = load i32, i32* @WM8955_SR_MASK, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %195, i32 %196, i32 %199, i32 %200)
  %202 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %203 = load i32, i32* @WM8955_CLOCKING_PLL, align 4
  %204 = load i32, i32* @WM8955_MCLKSEL, align 4
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %202, i32 %203, i32 %204, i32 %205)
  store i32 0, i32* %2, align 4
  br label %207

207:                                              ; preds = %179, %97, %59
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local %struct.wm8955_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wm8955_pll_factors(i32, i64, i64, %struct.pll_factors*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
