; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_hp_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_hp_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.madera_priv = type { %struct.madera* }
%struct.madera = type { i32, i32, i32, i64*, i32* }

@MADERA_OUTPUT_ENABLES_1 = common dso_local global i32 0, align 4
@MADERA_EP_SEL_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madera_hp_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.madera_priv*, align 8
  %10 = alloca %struct.madera*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %17)
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %8, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %20 = call %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.madera_priv* %20, %struct.madera_priv** %9, align 8
  %21 = load %struct.madera_priv*, %struct.madera_priv** %9, align 8
  %22 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %21, i32 0, i32 0
  %23 = load %struct.madera*, %struct.madera** %22, align 8
  store %struct.madera* %23, %struct.madera** %10, align 8
  %24 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 1, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %41 [
    i32 130, label %33
    i32 129, label %35
    i32 128, label %36
    i32 131, label %36
  ]

33:                                               ; preds = %3
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %13, align 4
  br label %42

35:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %42

36:                                               ; preds = %3, %3
  %37 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %38 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @madera_out_ev(%struct.snd_soc_dapm_widget* %37, %struct.snd_kcontrol* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %101

41:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %101

42:                                               ; preds = %35, %33
  %43 = load i32, i32* %11, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.madera*, %struct.madera** %10, align 8
  %46 = getelementptr inbounds %struct.madera, %struct.madera* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.madera*, %struct.madera** %10, align 8
  %51 = getelementptr inbounds %struct.madera, %struct.madera* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.madera*, %struct.madera** %10, align 8
  %55 = getelementptr inbounds %struct.madera, %struct.madera* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %58 [
    i32 134, label %57
    i32 133, label %57
    i32 132, label %57
  ]

57:                                               ; preds = %42, %42, %42
  br label %67

58:                                               ; preds = %42
  %59 = load %struct.madera*, %struct.madera** %10, align 8
  %60 = getelementptr inbounds %struct.madera, %struct.madera* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MADERA_OUTPUT_ENABLES_1, align 4
  %63 = call i32 @regmap_read(i32 %61, i32 %62, i32* %14)
  %64 = load i32, i32* @MADERA_EP_SEL_MASK, align 4
  %65 = load i32, i32* %14, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %58, %57
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %89, label %70

70:                                               ; preds = %67
  %71 = load %struct.madera*, %struct.madera** %10, align 8
  %72 = getelementptr inbounds %struct.madera, %struct.madera* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %70
  %80 = load %struct.madera*, %struct.madera** %10, align 8
  %81 = getelementptr inbounds %struct.madera, %struct.madera* %80, i32 0, i32 3
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79, %70
  store i32 0, i32* %13, align 4
  br label %89

89:                                               ; preds = %88, %79, %67
  %90 = load %struct.madera*, %struct.madera** %10, align 8
  %91 = getelementptr inbounds %struct.madera, %struct.madera* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @MADERA_OUTPUT_ENABLES_1, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @regmap_update_bits(i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %98 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @madera_out_ev(%struct.snd_soc_dapm_widget* %97, %struct.snd_kcontrol* %98, i32 %99)
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %89, %41, %36
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @madera_out_ev(%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
