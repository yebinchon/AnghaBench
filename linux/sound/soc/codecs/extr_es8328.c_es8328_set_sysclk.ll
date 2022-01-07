; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8328.c_es8328_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8328.c_es8328_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.es8328_priv = type { i32, i32*, i32* }

@constraints_11289 = common dso_local global i32 0, align 4
@ratios_11289 = common dso_local global i32* null, align 8
@constraints_12288 = common dso_local global i32 0, align 4
@ratios_12288 = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @es8328_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es8328_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.es8328_priv*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %10, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %17 = call %struct.es8328_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.es8328_priv* %17, %struct.es8328_priv** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %38 [
    i32 0, label %19
    i32 22579200, label %24
    i32 11289600, label %25
    i32 24576000, label %31
    i32 12288000, label %32
  ]

19:                                               ; preds = %4
  %20 = load %struct.es8328_priv*, %struct.es8328_priv** %11, align 8
  %21 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.es8328_priv*, %struct.es8328_priv** %11, align 8
  %23 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  br label %41

24:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  br label %25

25:                                               ; preds = %4, %24
  %26 = load %struct.es8328_priv*, %struct.es8328_priv** %11, align 8
  %27 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %26, i32 0, i32 2
  store i32* @constraints_11289, i32** %27, align 8
  %28 = load i32*, i32** @ratios_11289, align 8
  %29 = load %struct.es8328_priv*, %struct.es8328_priv** %11, align 8
  %30 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  br label %41

31:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  br label %32

32:                                               ; preds = %4, %31
  %33 = load %struct.es8328_priv*, %struct.es8328_priv** %11, align 8
  %34 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %33, i32 0, i32 2
  store i32* @constraints_12288, i32** %34, align 8
  %35 = load i32*, i32** @ratios_12288, align 8
  %36 = load %struct.es8328_priv*, %struct.es8328_priv** %11, align 8
  %37 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  br label %41

38:                                               ; preds = %4
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %45

41:                                               ; preds = %32, %25, %19
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.es8328_priv*, %struct.es8328_priv** %11, align 8
  %44 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.es8328_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
