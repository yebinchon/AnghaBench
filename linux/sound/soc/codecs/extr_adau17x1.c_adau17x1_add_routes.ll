; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_add_routes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_add_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.adau = type { i64 }

@adau17x1_dapm_routes = common dso_local global i32* null, align 8
@adau17x1_dsp_dapm_routes = common dso_local global i32* null, align 8
@adau17x1_no_dsp_dapm_routes = common dso_local global i32* null, align 8
@ADAU17X1_CLK_SRC_MCLK = common dso_local global i64 0, align 8
@adau17x1_dapm_pll_route = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adau17x1_add_routes(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.adau*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %7)
  store %struct.snd_soc_dapm_context* %8, %struct.snd_soc_dapm_context** %4, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.adau* %10, %struct.adau** %5, align 8
  %11 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %12 = load i32*, i32** @adau17x1_dapm_routes, align 8
  %13 = load i32*, i32** @adau17x1_dapm_routes, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %11, i32* %12, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %47

20:                                               ; preds = %1
  %21 = load %struct.adau*, %struct.adau** %5, align 8
  %22 = call i64 @adau17x1_has_dsp(%struct.adau* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %26 = load i32*, i32** @adau17x1_dsp_dapm_routes, align 8
  %27 = load i32*, i32** @adau17x1_dsp_dapm_routes, align 8
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  %29 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %25, i32* %26, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %36

30:                                               ; preds = %20
  %31 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %32 = load i32*, i32** @adau17x1_no_dsp_dapm_routes, align 8
  %33 = load i32*, i32** @adau17x1_no_dsp_dapm_routes, align 8
  %34 = call i32 @ARRAY_SIZE(i32* %33)
  %35 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %31, i32* %32, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.adau*, %struct.adau** %5, align 8
  %38 = getelementptr inbounds %struct.adau, %struct.adau* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ADAU17X1_CLK_SRC_MCLK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %44 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %43, i32* @adau17x1_dapm_pll_route, i32 1)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %18
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @adau17x1_has_dsp(%struct.adau*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
