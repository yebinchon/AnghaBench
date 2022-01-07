; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-sgtl5000.c_mxs_sgtl5000_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-sgtl5000.c_mxs_sgtl5000_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@SGTL5000_SYSCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to set sysclk to %u.%03uMHz\0A\00", align 1
@MXS_SAIF_MCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @mxs_sgtl5000_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_sgtl5000_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %13, align 8
  store %struct.snd_soc_pcm_runtime* %14, %struct.snd_soc_pcm_runtime** %6, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 1
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %16, align 8
  store %struct.snd_soc_dai* %17, %struct.snd_soc_dai** %7, align 8
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %19 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %19, align 8
  store %struct.snd_soc_dai* %20, %struct.snd_soc_dai** %8, align 8
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %27 [
    i32 96000, label %24
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = mul i32 256, %25
  store i32 %26, i32* %10, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  %29 = mul i32 512, %28
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %32 = load i32, i32* @SGTL5000_SYSCLK, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %31, i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %39 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sdiv i32 %41, 1000000
  %43 = load i32, i32* %10, align 4
  %44 = sdiv i32 %43, 1000
  %45 = srem i32 %44, 1000
  %46 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %3, align 4
  br label %67

48:                                               ; preds = %30
  %49 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %50 = load i32, i32* @MXS_SAIF_MCLK, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %49, i32 %50, i32 %51, i32 0)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %57 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sdiv i32 %59, 1000000
  %61 = load i32, i32* %10, align 4
  %62 = sdiv i32 %61, 1000
  %63 = srem i32 %62, 1000
  %64 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %63)
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %3, align 4
  br label %67

66:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %55, %37
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
