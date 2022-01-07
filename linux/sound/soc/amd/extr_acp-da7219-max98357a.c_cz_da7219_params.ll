; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-da7219-max98357a.c_cz_da7219_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-da7219-max98357a.c_cz_da7219_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @cz_da7219_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cz_da7219_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %7 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %8 = call i32 @params_rate(%struct.snd_pcm_hw_params* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %11 = call i32 @params_channels(%struct.snd_pcm_hw_params* %10)
  %12 = mul nsw i32 %9, %11
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %14 = call i32 @params_format(%struct.snd_pcm_hw_params* %13)
  %15 = call i32 @snd_pcm_format_width(i32 %14)
  %16 = mul nsw i32 %12, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %18, 64
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %22, 64
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @da7219_clk_enable(%struct.snd_pcm_substream* %25, i32 %26, i32 %27)
  ret i32 %28
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @da7219_clk_enable(%struct.snd_pcm_substream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
