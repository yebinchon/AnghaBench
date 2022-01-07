; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8997.c_wm8997_sysclk_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8997.c_wm8997_sysclk_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_default = type { i32, i32 }
%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.arizona = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@wm8997_sysclk_reva_patch = common dso_local global %struct.reg_default* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wm8997_sysclk_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8997_sysclk_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.arizona*, align 8
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca %struct.reg_default*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %16)
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %8, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.arizona* @dev_get_drvdata(i32 %22)
  store %struct.arizona* %23, %struct.arizona** %9, align 8
  %24 = load %struct.arizona*, %struct.arizona** %9, align 8
  %25 = getelementptr inbounds %struct.arizona, %struct.arizona* %24, i32 0, i32 1
  %26 = load %struct.regmap*, %struct.regmap** %25, align 8
  store %struct.regmap* %26, %struct.regmap** %10, align 8
  store %struct.reg_default* null, %struct.reg_default** %11, align 8
  %27 = load %struct.arizona*, %struct.arizona** %9, align 8
  %28 = getelementptr inbounds %struct.arizona, %struct.arizona* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %34 [
    i32 0, label %30
  ]

30:                                               ; preds = %3
  %31 = load %struct.reg_default*, %struct.reg_default** @wm8997_sysclk_reva_patch, align 8
  store %struct.reg_default* %31, %struct.reg_default** %11, align 8
  %32 = load %struct.reg_default*, %struct.reg_default** @wm8997_sysclk_reva_patch, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.reg_default* %32)
  store i32 %33, i32* %13, align 4
  br label %35

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %71 [
    i32 130, label %37
    i32 129, label %65
    i32 128, label %66
    i32 131, label %66
  ]

37:                                               ; preds = %35
  %38 = load %struct.reg_default*, %struct.reg_default** %11, align 8
  %39 = icmp ne %struct.reg_default* %38, null
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %60, %40
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = load %struct.regmap*, %struct.regmap** %10, align 8
  %47 = load %struct.reg_default*, %struct.reg_default** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.reg_default, %struct.reg_default* %47, i64 %49
  %51 = getelementptr inbounds %struct.reg_default, %struct.reg_default* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.reg_default*, %struct.reg_default** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.reg_default, %struct.reg_default* %53, i64 %55
  %57 = getelementptr inbounds %struct.reg_default, %struct.reg_default* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @regmap_write_async(%struct.regmap* %46, i32 %52, i32 %58)
  br label %60

60:                                               ; preds = %45
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %41

63:                                               ; preds = %41
  br label %64

64:                                               ; preds = %63, %37
  br label %72

65:                                               ; preds = %35
  br label %72

66:                                               ; preds = %35, %35
  %67 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %68 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @arizona_clk_ev(%struct.snd_soc_dapm_widget* %67, %struct.snd_kcontrol* %68, i32 %69)
  store i32 %70, i32* %4, align 4
  br label %77

71:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %77

72:                                               ; preds = %65, %64
  %73 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %74 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @arizona_dvfs_sysclk_ev(%struct.snd_soc_dapm_widget* %73, %struct.snd_kcontrol* %74, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %72, %71, %66
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.arizona* @dev_get_drvdata(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.reg_default*) #1

declare dso_local i32 @regmap_write_async(%struct.regmap*, i32, i32) #1

declare dso_local i32 @arizona_clk_ev(%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32) #1

declare dso_local i32 @arizona_dvfs_sysclk_ev(%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
