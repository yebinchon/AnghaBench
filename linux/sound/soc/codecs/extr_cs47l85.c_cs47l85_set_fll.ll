; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l85.c_cs47l85_set_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l85.c_cs47l85_set_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs47l85 = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @cs47l85_set_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs47l85_set_fll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cs47l85*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = call %struct.cs47l85* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.cs47l85* %14, %struct.cs47l85** %12, align 8
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %70 [
    i32 133, label %16
    i32 131, label %25
    i32 129, label %34
    i32 132, label %43
    i32 130, label %52
    i32 128, label %61
  ]

16:                                               ; preds = %5
  %17 = load %struct.cs47l85*, %struct.cs47l85** %12, align 8
  %18 = getelementptr inbounds %struct.cs47l85, %struct.cs47l85* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @madera_set_fll_refclk(i32* %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %73

25:                                               ; preds = %5
  %26 = load %struct.cs47l85*, %struct.cs47l85** %12, align 8
  %27 = getelementptr inbounds %struct.cs47l85, %struct.cs47l85* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @madera_set_fll_refclk(i32* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %73

34:                                               ; preds = %5
  %35 = load %struct.cs47l85*, %struct.cs47l85** %12, align 8
  %36 = getelementptr inbounds %struct.cs47l85, %struct.cs47l85* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @madera_set_fll_refclk(i32* %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %73

43:                                               ; preds = %5
  %44 = load %struct.cs47l85*, %struct.cs47l85** %12, align 8
  %45 = getelementptr inbounds %struct.cs47l85, %struct.cs47l85* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @madera_set_fll_syncclk(i32* %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %73

52:                                               ; preds = %5
  %53 = load %struct.cs47l85*, %struct.cs47l85** %12, align 8
  %54 = getelementptr inbounds %struct.cs47l85, %struct.cs47l85* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @madera_set_fll_syncclk(i32* %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %6, align 4
  br label %73

61:                                               ; preds = %5
  %62 = load %struct.cs47l85*, %struct.cs47l85** %12, align 8
  %63 = getelementptr inbounds %struct.cs47l85, %struct.cs47l85* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @madera_set_fll_syncclk(i32* %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %6, align 4
  br label %73

70:                                               ; preds = %5
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %70, %61, %52, %43, %34, %25, %16
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local %struct.cs47l85* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @madera_set_fll_refclk(i32*, i32, i32, i32) #1

declare dso_local i32 @madera_set_fll_syncclk(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
