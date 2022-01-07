; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5102.c_wm5102_sysclk_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5102.c_wm5102_sysclk_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_default = type { i32, i32 }
%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.arizona = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@wm5102_sysclk_reva_patch = common dso_local global %struct.reg_default* null, align 8
@wm5102_sysclk_revb_patch = common dso_local global %struct.reg_default* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wm5102_sysclk_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5102_sysclk_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
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
  %31 = load %struct.reg_default*, %struct.reg_default** @wm5102_sysclk_reva_patch, align 8
  store %struct.reg_default* %31, %struct.reg_default** %11, align 8
  %32 = load %struct.reg_default*, %struct.reg_default** @wm5102_sysclk_reva_patch, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.reg_default* %32)
  store i32 %33, i32* %13, align 4
  br label %38

34:                                               ; preds = %3
  %35 = load %struct.reg_default*, %struct.reg_default** @wm5102_sysclk_revb_patch, align 8
  store %struct.reg_default* %35, %struct.reg_default** %11, align 8
  %36 = load %struct.reg_default*, %struct.reg_default** @wm5102_sysclk_revb_patch, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.reg_default* %36)
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %74 [
    i32 130, label %40
    i32 129, label %68
    i32 128, label %69
    i32 131, label %69
  ]

40:                                               ; preds = %38
  %41 = load %struct.reg_default*, %struct.reg_default** %11, align 8
  %42 = icmp ne %struct.reg_default* %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %63, %43
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load %struct.regmap*, %struct.regmap** %10, align 8
  %50 = load %struct.reg_default*, %struct.reg_default** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.reg_default, %struct.reg_default* %50, i64 %52
  %54 = getelementptr inbounds %struct.reg_default, %struct.reg_default* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.reg_default*, %struct.reg_default** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.reg_default, %struct.reg_default* %56, i64 %58
  %60 = getelementptr inbounds %struct.reg_default, %struct.reg_default* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @regmap_write_async(%struct.regmap* %49, i32 %55, i32 %61)
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %44

66:                                               ; preds = %44
  br label %67

67:                                               ; preds = %66, %40
  br label %75

68:                                               ; preds = %38
  br label %75

69:                                               ; preds = %38, %38
  %70 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %71 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @arizona_clk_ev(%struct.snd_soc_dapm_widget* %70, %struct.snd_kcontrol* %71, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %80

74:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %80

75:                                               ; preds = %68, %67
  %76 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %77 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @arizona_dvfs_sysclk_ev(%struct.snd_soc_dapm_widget* %76, %struct.snd_kcontrol* %77, i32 %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %75, %74, %69
  %81 = load i32, i32* %4, align 4
  ret i32 %81
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
