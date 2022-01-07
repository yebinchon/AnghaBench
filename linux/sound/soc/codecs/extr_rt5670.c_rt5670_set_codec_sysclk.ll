; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_set_codec_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_set_codec_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5670_priv = type { i32, i32 }

@RT5670_SCLK_SRC_MCLK = common dso_local global i32 0, align 4
@RT5670_SCLK_SRC_PLL1 = common dso_local global i32 0, align 4
@RT5670_SCLK_SRC_RCCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid clock id (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RT5670_GLB_CLK = common dso_local global i32 0, align 4
@RT5670_SCLK_SRC_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Sysclk : %dHz clock id : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @rt5670_set_codec_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5670_set_codec_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rt5670_priv*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = call %struct.rt5670_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.rt5670_priv* %15, %struct.rt5670_priv** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %29 [
    i32 130, label %17
    i32 129, label %21
    i32 128, label %25
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* @RT5670_SCLK_SRC_MCLK, align 4
  %19 = load i32, i32* %13, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %13, align 4
  br label %37

21:                                               ; preds = %5
  %22 = load i32, i32* @RT5670_SCLK_SRC_PLL1, align 4
  %23 = load i32, i32* %13, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %13, align 4
  br label %37

25:                                               ; preds = %5
  %26 = load i32, i32* @RT5670_SCLK_SRC_RCCLK, align 4
  %27 = load i32, i32* %13, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %13, align 4
  br label %37

29:                                               ; preds = %5
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %31 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %59

37:                                               ; preds = %25, %21, %17
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %39 = load i32, i32* @RT5670_GLB_CLK, align 4
  %40 = load i32, i32* @RT5670_SCLK_SRC_MASK, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.rt5670_priv*, %struct.rt5670_priv** %12, align 8
  %45 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 128
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.rt5670_priv*, %struct.rt5670_priv** %12, align 8
  %51 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %37
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %54 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %52, %29
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.rt5670_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
