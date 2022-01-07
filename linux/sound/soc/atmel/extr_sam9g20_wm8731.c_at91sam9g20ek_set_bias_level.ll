; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_sam9g20_wm8731.c_at91sam9g20ek_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_sam9g20_wm8731.c_at91sam9g20ek_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }

@at91sam9g20ek_set_bias_level.mclk_on = internal global i32 0, align 4
@mclk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*, %struct.snd_soc_dapm_context*, i32)* @at91sam9g20ek_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91sam9g20ek_set_bias_level(%struct.snd_soc_card* %0, %struct.snd_soc_dapm_context* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %4, align 8
  store %struct.snd_soc_dapm_context* %1, %struct.snd_soc_dapm_context** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %27 [
    i32 130, label %9
    i32 129, label %9
    i32 131, label %20
    i32 128, label %20
  ]

9:                                                ; preds = %3, %3
  %10 = load i32, i32* @at91sam9g20ek_set_bias_level.mclk_on, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @mclk, align 4
  %14 = call i32 @clk_enable(i32 %13)
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 1, i32* @at91sam9g20ek_set_bias_level.mclk_on, align 4
  br label %19

19:                                               ; preds = %18, %15
  br label %27

20:                                               ; preds = %3, %3
  %21 = load i32, i32* @at91sam9g20ek_set_bias_level.mclk_on, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @mclk, align 4
  %25 = call i32 @clk_disable(i32 %24)
  br label %26

26:                                               ; preds = %23, %20
  store i32 0, i32* @at91sam9g20ek_set_bias_level.mclk_on, align 4
  br label %27

27:                                               ; preds = %3, %26, %19
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
