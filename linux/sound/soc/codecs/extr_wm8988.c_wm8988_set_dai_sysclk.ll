; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8988.c_wm8988_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8988.c_wm8988_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8988_priv = type { i32, i32* }

@constraints_112896 = common dso_local global i32 0, align 4
@constraints_12288 = common dso_local global i32 0, align 4
@constraints_12 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8988_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8988_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.wm8988_priv*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %10, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %16 = call %struct.wm8988_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.wm8988_priv* %16, %struct.wm8988_priv** %11, align 8
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %36 [
    i32 11289600, label %18
    i32 18432000, label %18
    i32 22579200, label %18
    i32 36864000, label %18
    i32 12288000, label %24
    i32 16934400, label %24
    i32 24576000, label %24
    i32 33868800, label %24
    i32 12000000, label %30
    i32 24000000, label %30
  ]

18:                                               ; preds = %4, %4, %4, %4
  %19 = load %struct.wm8988_priv*, %struct.wm8988_priv** %11, align 8
  %20 = getelementptr inbounds %struct.wm8988_priv, %struct.wm8988_priv* %19, i32 0, i32 1
  store i32* @constraints_112896, i32** %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.wm8988_priv*, %struct.wm8988_priv** %11, align 8
  %23 = getelementptr inbounds %struct.wm8988_priv, %struct.wm8988_priv* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  store i32 0, i32* %5, align 4
  br label %39

24:                                               ; preds = %4, %4, %4, %4
  %25 = load %struct.wm8988_priv*, %struct.wm8988_priv** %11, align 8
  %26 = getelementptr inbounds %struct.wm8988_priv, %struct.wm8988_priv* %25, i32 0, i32 1
  store i32* @constraints_12288, i32** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.wm8988_priv*, %struct.wm8988_priv** %11, align 8
  %29 = getelementptr inbounds %struct.wm8988_priv, %struct.wm8988_priv* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  store i32 0, i32* %5, align 4
  br label %39

30:                                               ; preds = %4, %4
  %31 = load %struct.wm8988_priv*, %struct.wm8988_priv** %11, align 8
  %32 = getelementptr inbounds %struct.wm8988_priv, %struct.wm8988_priv* %31, i32 0, i32 1
  store i32* @constraints_12, i32** %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.wm8988_priv*, %struct.wm8988_priv** %11, align 8
  %35 = getelementptr inbounds %struct.wm8988_priv, %struct.wm8988_priv* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %5, align 4
  br label %39

36:                                               ; preds = %4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %30, %24, %18
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.wm8988_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
