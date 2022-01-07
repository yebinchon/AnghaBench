; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9081.c_wm9081_set_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9081.c_wm9081_set_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm9081_priv = type { i32, i32 }
%struct._fll_div = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"FLL disabled\0A\00", align 1
@WM9081_FLL_CONTROL_5 = common dso_local global i32 0, align 4
@WM9081_FLL_CLK_SRC_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Unknown FLL ID %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM9081_CLOCK_CONTROL_3 = common dso_local global i32 0, align 4
@WM9081_CLK_SYS_ENA = common dso_local global i32 0, align 4
@WM9081_FLL_CONTROL_1 = common dso_local global i32 0, align 4
@WM9081_FLL_ENA = common dso_local global i32 0, align 4
@WM9081_FLL_FRAC_MASK = common dso_local global i32 0, align 4
@WM9081_FLL_CONTROL_2 = common dso_local global i32 0, align 4
@WM9081_FLL_OUTDIV_SHIFT = common dso_local global i32 0, align 4
@WM9081_FLL_FRATIO_SHIFT = common dso_local global i32 0, align 4
@WM9081_FLL_CONTROL_3 = common dso_local global i32 0, align 4
@WM9081_FLL_CONTROL_4 = common dso_local global i32 0, align 4
@WM9081_FLL_N_MASK = common dso_local global i32 0, align 4
@WM9081_FLL_N_SHIFT = common dso_local global i32 0, align 4
@WM9081_FLL_CLK_REF_DIV_MASK = common dso_local global i32 0, align 4
@WM9081_FLL_CLK_REF_DIV_SHIFT = common dso_local global i32 0, align 4
@WM9081_FLL_GAIN_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"FLL enabled at %dHz->%dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32)* @wm9081_set_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9081_set_fll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wm9081_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct._fll_div, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %18 = call %struct.wm9081_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.wm9081_priv* %18, %struct.wm9081_priv** %10, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.wm9081_priv*, %struct.wm9081_priv** %10, align 8
  %21 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.wm9081_priv*, %struct.wm9081_priv** %10, align 8
  %27 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %196

31:                                               ; preds = %24, %4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %36 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @dev_dbg(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.wm9081_priv*, %struct.wm9081_priv** %10, align 8
  %40 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.wm9081_priv*, %struct.wm9081_priv** %10, align 8
  %42 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  store i32 0, i32* %5, align 4
  br label %196

43:                                               ; preds = %31
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @fll_factors(%struct._fll_div* %14, i32 %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %5, align 4
  br label %196

51:                                               ; preds = %43
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %53 = load i32, i32* @WM9081_FLL_CONTROL_5, align 4
  %54 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* @WM9081_FLL_CLK_SRC_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %13, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %7, align 4
  switch i32 %59, label %63 [
    i32 128, label %60
  ]

60:                                               ; preds = %51
  %61 = load i32, i32* %13, align 4
  %62 = or i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %71

63:                                               ; preds = %51
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %65 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %196

71:                                               ; preds = %60
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %73 = load i32, i32* @WM9081_CLOCK_CONTROL_3, align 4
  %74 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %72, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* @WM9081_CLK_SYS_ENA, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %81 = load i32, i32* @WM9081_CLOCK_CONTROL_3, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @WM9081_CLK_SYS_ENA, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  %86 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %80, i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %79, %71
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %89 = load i32, i32* @WM9081_FLL_CONTROL_1, align 4
  %90 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %88, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* @WM9081_FLL_ENA, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %11, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %11, align 4
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %96 = load i32, i32* @WM9081_FLL_CONTROL_1, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %95, i32 %96, i32 %97)
  %99 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %87
  %103 = load i32, i32* @WM9081_FLL_FRAC_MASK, align 4
  %104 = load i32, i32* %11, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %11, align 4
  br label %111

106:                                              ; preds = %87
  %107 = load i32, i32* @WM9081_FLL_FRAC_MASK, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %11, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %106, %102
  %112 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %113 = load i32, i32* @WM9081_FLL_CONTROL_1, align 4
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %112, i32 %113, i32 %114)
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %117 = load i32, i32* @WM9081_FLL_CONTROL_2, align 4
  %118 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @WM9081_FLL_OUTDIV_SHIFT, align 4
  %121 = shl i32 %119, %120
  %122 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @WM9081_FLL_FRATIO_SHIFT, align 4
  %125 = shl i32 %123, %124
  %126 = or i32 %121, %125
  %127 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %116, i32 %117, i32 %126)
  %128 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %129 = load i32, i32* @WM9081_FLL_CONTROL_3, align 4
  %130 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %128, i32 %129, i32 %131)
  %133 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %134 = load i32, i32* @WM9081_FLL_CONTROL_4, align 4
  %135 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %133, i32 %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* @WM9081_FLL_N_MASK, align 4
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %12, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %12, align 4
  %140 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @WM9081_FLL_N_SHIFT, align 4
  %143 = shl i32 %141, %142
  %144 = load i32, i32* %12, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %12, align 4
  %146 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %147 = load i32, i32* @WM9081_FLL_CONTROL_4, align 4
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %146, i32 %147, i32 %148)
  %150 = load i32, i32* @WM9081_FLL_CLK_REF_DIV_MASK, align 4
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %13, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %13, align 4
  %154 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @WM9081_FLL_CLK_REF_DIV_SHIFT, align 4
  %157 = shl i32 %155, %156
  %158 = load i32, i32* %13, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %13, align 4
  %160 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %161 = load i32, i32* @WM9081_FLL_CONTROL_5, align 4
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %160, i32 %161, i32 %162)
  %164 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %165 = load i32, i32* @WM9081_FLL_CONTROL_4, align 4
  %166 = load i32, i32* @WM9081_FLL_GAIN_MASK, align 4
  %167 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %164, i32 %165, i32 %166, i32 0)
  %168 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %169 = load i32, i32* @WM9081_FLL_CONTROL_1, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* @WM9081_FLL_ENA, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %168, i32 %169, i32 %172)
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* @WM9081_CLK_SYS_ENA, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %111
  %179 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %180 = load i32, i32* @WM9081_CLOCK_CONTROL_3, align 4
  %181 = load i32, i32* %16, align 4
  %182 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %179, i32 %180, i32 %181)
  br label %183

183:                                              ; preds = %178, %111
  %184 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %185 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %9, align 4
  %189 = call i32 (i32, i8*, ...) @dev_dbg(i32 %186, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %187, i32 %188)
  %190 = load i32, i32* %8, align 4
  %191 = load %struct.wm9081_priv*, %struct.wm9081_priv** %10, align 8
  %192 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 4
  %193 = load i32, i32* %9, align 4
  %194 = load %struct.wm9081_priv*, %struct.wm9081_priv** %10, align 8
  %195 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  store i32 0, i32* %5, align 4
  br label %196

196:                                              ; preds = %183, %63, %49, %34, %30
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local %struct.wm9081_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @fll_factors(%struct._fll_div*, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
