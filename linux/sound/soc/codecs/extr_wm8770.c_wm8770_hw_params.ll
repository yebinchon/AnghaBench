; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8770.c_wm8770_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8770.c_wm8770_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8770_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WM8770_MSTRCTRL = common dso_local global i32 0, align 4
@mclk_ratios = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"Unable to configure MCLK ratio %d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"MCLK is %dfs\0A\00", align 1
@WM8770_IFACECTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8770_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8770_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm8770_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %8, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %18 = call %struct.wm8770_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.wm8770_priv* %18, %struct.wm8770_priv** %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %20 = call i32 @params_width(%struct.snd_pcm_hw_params* %19)
  switch i32 %20, label %31 [
    i32 16, label %21
    i32 20, label %22
    i32 24, label %25
    i32 32, label %28
  ]

21:                                               ; preds = %3
  br label %31

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  %24 = or i32 %23, 16
  store i32 %24, i32* %11, align 4
  br label %31

25:                                               ; preds = %3
  %26 = load i32, i32* %11, align 4
  %27 = or i32 %26, 32
  store i32 %27, i32* %11, align 4
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  %30 = or i32 %29, 48
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %3, %28, %25, %22, %21
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %37 [
    i32 128, label %35
    i32 129, label %36
  ]

35:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  store i32 4, i32* %12, align 4
  br label %40

36:                                               ; preds = %31
  store i32 2, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %111

40:                                               ; preds = %36, %35
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %42 = load i32, i32* @WM8770_MSTRCTRL, align 4
  %43 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %41, i32 %42)
  %44 = and i32 %43, 256
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %106

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %68, %46
  %48 = load i32, i32* %10, align 4
  %49 = load i32*, i32** @mclk_ratios, align 8
  %50 = call i32 @ARRAY_SIZE(i32* %49)
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load %struct.wm8770_priv*, %struct.wm8770_priv** %9, align 8
  %54 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %57 = call i32 @params_rate(%struct.snd_pcm_hw_params* %56)
  %58 = sdiv i32 %55, %57
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32*, i32** @mclk_ratios, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %59, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  br label %71

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %47

71:                                               ; preds = %66, %47
  %72 = load i32, i32* %10, align 4
  %73 = load i32*, i32** @mclk_ratios, align 8
  %74 = call i32 @ARRAY_SIZE(i32* %73)
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %78 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.wm8770_priv*, %struct.wm8770_priv** %9, align 8
  %81 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %84 = call i32 @params_rate(%struct.snd_pcm_hw_params* %83)
  %85 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %111

88:                                               ; preds = %71
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %90 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** @mclk_ratios, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dev_dbg(i32 %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %99 = load i32, i32* @WM8770_MSTRCTRL, align 4
  %100 = load i32, i32* %12, align 4
  %101 = shl i32 7, %100
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %12, align 4
  %104 = shl i32 %102, %103
  %105 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %98, i32 %99, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %88, %40
  %107 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %108 = load i32, i32* @WM8770_IFACECTRL, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %107, i32 %108, i32 48, i32 %109)
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %106, %76, %37
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.wm8770_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
