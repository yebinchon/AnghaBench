; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l15.c_cs47l15_set_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l15.c_cs47l15_set_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs47l15 = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @cs47l15_set_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs47l15_set_fll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cs47l15*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = call %struct.cs47l15* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.cs47l15* %14, %struct.cs47l15** %12, align 8
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %43 [
    i32 130, label %16
    i32 128, label %25
    i32 129, label %34
  ]

16:                                               ; preds = %5
  %17 = load %struct.cs47l15*, %struct.cs47l15** %12, align 8
  %18 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @madera_set_fll_refclk(i32* %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %46

25:                                               ; preds = %5
  %26 = load %struct.cs47l15*, %struct.cs47l15** %12, align 8
  %27 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @madera_set_fll_ao_refclk(i32* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %46

34:                                               ; preds = %5
  %35 = load %struct.cs47l15*, %struct.cs47l15** %12, align 8
  %36 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @madera_set_fll_syncclk(i32* %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %46

43:                                               ; preds = %5
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %34, %25, %16
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local %struct.cs47l15* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @madera_set_fll_refclk(i32*, i32, i32, i32) #1

declare dso_local i32 @madera_set_fll_ao_refclk(i32*, i32, i32, i32) #1

declare dso_local i32 @madera_set_fll_syncclk(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
