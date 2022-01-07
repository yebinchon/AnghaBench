; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_clk_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_clk_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.arizona = type { i32*, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to check clock source: %d\0A\00", align 1
@ARIZONA_SYSCLK_SRC_MASK = common dso_local global i32 0, align 4
@ARIZONA_SYSCLK_SRC_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_MCLK1 = common dso_local global i32 0, align 4
@ARIZONA_MCLK2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arizona_clk_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.arizona*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %15)
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %8, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %18 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.arizona* @dev_get_drvdata(i32 %21)
  store %struct.arizona* %22, %struct.arizona** %9, align 8
  %23 = load %struct.arizona*, %struct.arizona** %9, align 8
  %24 = getelementptr inbounds %struct.arizona, %struct.arizona* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regmap_read(i32 %25, i32 %28, i32* %10)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %3
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %34 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @dev_err(%struct.TYPE_2__* %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %4, align 4
  br label %72

39:                                               ; preds = %3
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @ARIZONA_SYSCLK_SRC_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @ARIZONA_SYSCLK_SRC_SHIFT, align 4
  %44 = lshr i32 %42, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  switch i32 %45, label %50 [
    i32 131, label %46
    i32 130, label %48
  ]

46:                                               ; preds = %39
  %47 = load i32, i32* @ARIZONA_MCLK1, align 4
  store i32 %47, i32* %11, align 4
  br label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @ARIZONA_MCLK2, align 4
  store i32 %49, i32* %11, align 4
  br label %51

50:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %72

51:                                               ; preds = %48, %46
  %52 = load i32, i32* %7, align 4
  switch i32 %52, label %71 [
    i32 128, label %53
    i32 129, label %62
  ]

53:                                               ; preds = %51
  %54 = load %struct.arizona*, %struct.arizona** %9, align 8
  %55 = getelementptr inbounds %struct.arizona, %struct.arizona* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @clk_prepare_enable(i32 %60)
  store i32 %61, i32* %4, align 4
  br label %72

62:                                               ; preds = %51
  %63 = load %struct.arizona*, %struct.arizona** %9, align 8
  %64 = getelementptr inbounds %struct.arizona, %struct.arizona* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @clk_disable_unprepare(i32 %69)
  store i32 0, i32* %4, align 4
  br label %72

71:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %62, %53, %50, %32
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.arizona* @dev_get_drvdata(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
