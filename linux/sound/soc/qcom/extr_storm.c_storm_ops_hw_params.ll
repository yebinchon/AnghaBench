; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_storm.c_storm_ops_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_storm.c_storm_ops_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32, %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"invalid bit width given: %d\0A\00", align 1
@STORM_SYSCLK_MULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"error setting sysclk to %u: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @storm_ops_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storm_ops_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %14, align 8
  store %struct.snd_soc_pcm_runtime* %15, %struct.snd_soc_pcm_runtime** %6, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %16, i32 0, i32 1
  %18 = load %struct.snd_soc_card*, %struct.snd_soc_card** %17, align 8
  store %struct.snd_soc_card* %18, %struct.snd_soc_card** %7, align 8
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %20 = call i32 @params_format(%struct.snd_pcm_hw_params* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @snd_pcm_format_width(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %29 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %3, align 4
  br label %57

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %11, align 4
  %37 = mul i32 %35, %36
  %38 = mul i32 %37, 2
  %39 = load i32, i32* @STORM_SYSCLK_MULT, align 4
  %40 = mul i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %42 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @snd_soc_dai_set_sysclk(i32 %43, i32 0, i32 %44, i32 0)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %34
  %49 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %50 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %48, %27
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
