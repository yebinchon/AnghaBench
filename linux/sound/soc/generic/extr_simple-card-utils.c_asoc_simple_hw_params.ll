; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32, i32, %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.asoc_simple_priv = type { i32 }
%struct.simple_dai_props = type { i32, i32, i32 }

@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asoc_simple_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca %struct.asoc_simple_priv*, align 8
  %10 = alloca %struct.simple_dai_props*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %6, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 3
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %18, align 8
  store %struct.snd_soc_dai* %19, %struct.snd_soc_dai** %7, align 8
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %21 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %20, i32 0, i32 2
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %21, align 8
  store %struct.snd_soc_dai* %22, %struct.snd_soc_dai** %8, align 8
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %24 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.asoc_simple_priv* @snd_soc_card_get_drvdata(i32 %25)
  store %struct.asoc_simple_priv* %26, %struct.asoc_simple_priv** %9, align 8
  %27 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %9, align 8
  %28 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %29 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.simple_dai_props* @simple_priv_to_props(%struct.asoc_simple_priv* %27, i32 %30)
  store %struct.simple_dai_props* %31, %struct.simple_dai_props** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %32 = load %struct.simple_dai_props*, %struct.simple_dai_props** %10, align 8
  %33 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.simple_dai_props*, %struct.simple_dai_props** %10, align 8
  %38 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %36, %2
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %94

43:                                               ; preds = %40
  %44 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %45 = call i32 @params_rate(%struct.snd_pcm_hw_params* %44)
  %46 = load i32, i32* %12, align 4
  %47 = mul i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load %struct.simple_dai_props*, %struct.simple_dai_props** %10, align 8
  %49 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @asoc_simple_set_clk_rate(i32 %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %3, align 4
  br label %97

57:                                               ; preds = %43
  %58 = load %struct.simple_dai_props*, %struct.simple_dai_props** %10, align 8
  %59 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @asoc_simple_set_clk_rate(i32 %60, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %3, align 4
  br label %97

67:                                               ; preds = %57
  %68 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %71 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %68, i32 0, i32 %69, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @ENOTSUPP, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %95

80:                                               ; preds = %74, %67
  %81 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %84 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %81, i32 0, i32 %82, i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @ENOTSUPP, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %95

93:                                               ; preds = %87, %80
  br label %94

94:                                               ; preds = %93, %40
  store i32 0, i32* %3, align 4
  br label %97

95:                                               ; preds = %92, %79
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %94, %65, %55
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.asoc_simple_priv* @snd_soc_card_get_drvdata(i32) #1

declare dso_local %struct.simple_dai_props* @simple_priv_to_props(%struct.asoc_simple_priv*, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @asoc_simple_set_clk_rate(i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
