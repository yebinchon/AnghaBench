; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l56.c_cs42l56_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l56.c_cs42l56_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs42l56_private = type { i32, i8*, i8* }

@CS42L56_MCLK_DIV2 = common dso_local global i8* null, align 8
@CS42L56_MCLK_PREDIV = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@CS42L56_CLKCTL_1 = common dso_local global i32 0, align 4
@CS42L56_MCLK_PREDIV_MASK = common dso_local global i32 0, align 4
@CS42L56_MCLK_DIV2_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @cs42l56_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l56_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.cs42l56_private*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %10, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %16 = call %struct.cs42l56_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.cs42l56_private* %16, %struct.cs42l56_private** %11, align 8
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %36 [
    i32 130, label %18
    i32 129, label %18
    i32 128, label %18
    i32 136, label %23
    i32 135, label %23
    i32 134, label %23
    i32 133, label %29
    i32 132, label %29
    i32 131, label %29
  ]

18:                                               ; preds = %4, %4, %4
  %19 = load %struct.cs42l56_private*, %struct.cs42l56_private** %11, align 8
  %20 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %19, i32 0, i32 1
  store i8* null, i8** %20, align 8
  %21 = load %struct.cs42l56_private*, %struct.cs42l56_private** %11, align 8
  %22 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %21, i32 0, i32 2
  store i8* null, i8** %22, align 8
  br label %39

23:                                               ; preds = %4, %4, %4
  %24 = load i8*, i8** @CS42L56_MCLK_DIV2, align 8
  %25 = load %struct.cs42l56_private*, %struct.cs42l56_private** %11, align 8
  %26 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.cs42l56_private*, %struct.cs42l56_private** %11, align 8
  %28 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %27, i32 0, i32 2
  store i8* null, i8** %28, align 8
  br label %39

29:                                               ; preds = %4, %4, %4
  %30 = load i8*, i8** @CS42L56_MCLK_DIV2, align 8
  %31 = load %struct.cs42l56_private*, %struct.cs42l56_private** %11, align 8
  %32 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @CS42L56_MCLK_PREDIV, align 8
  %34 = load %struct.cs42l56_private*, %struct.cs42l56_private** %11, align 8
  %35 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  br label %39

36:                                               ; preds = %4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %57

39:                                               ; preds = %29, %23, %18
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.cs42l56_private*, %struct.cs42l56_private** %11, align 8
  %42 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %44 = load i32, i32* @CS42L56_CLKCTL_1, align 4
  %45 = load i32, i32* @CS42L56_MCLK_PREDIV_MASK, align 4
  %46 = load %struct.cs42l56_private*, %struct.cs42l56_private** %11, align 8
  %47 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %43, i32 %44, i32 %45, i8* %48)
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %51 = load i32, i32* @CS42L56_CLKCTL_1, align 4
  %52 = load i32, i32* @CS42L56_MCLK_DIV2_MASK, align 4
  %53 = load %struct.cs42l56_private*, %struct.cs42l56_private** %11, align 8
  %54 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %52, i8* %55)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %39, %36
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.cs42l56_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
