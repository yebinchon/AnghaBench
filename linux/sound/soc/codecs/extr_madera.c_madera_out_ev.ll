; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_out_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_out_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.madera_priv = type { i32, i32, i32, i32, %struct.madera* }
%struct.madera = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madera_out_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.madera_priv*, align 8
  %9 = alloca %struct.madera*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %7, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %16 = call %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.madera_priv* %16, %struct.madera_priv** %8, align 8
  %17 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %18 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %17, i32 0, i32 4
  %19 = load %struct.madera*, %struct.madera** %18, align 8
  store %struct.madera* %19, %struct.madera** %9, align 8
  %20 = load %struct.madera*, %struct.madera** %9, align 8
  %21 = getelementptr inbounds %struct.madera, %struct.madera* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %24 [
    i32 141, label %23
    i32 140, label %23
    i32 142, label %23
    i32 139, label %23
    i32 138, label %23
  ]

23:                                               ; preds = %3, %3, %3, %3, %3
  store i32 6, i32* %10, align 4
  br label %25

24:                                               ; preds = %3
  store i32 17, i32* %10, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %104 [
    i32 128, label %27
    i32 130, label %43
    i32 129, label %66
    i32 131, label %81
  ]

27:                                               ; preds = %25
  %28 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %41 [
    i32 137, label %31
    i32 136, label %31
    i32 135, label %31
    i32 134, label %31
    i32 133, label %31
    i32 132, label %31
  ]

31:                                               ; preds = %27, %27, %27, %27, %27, %27
  %32 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %33 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %38 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %42

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41, %31
  br label %105

43:                                               ; preds = %25
  %44 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %45 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %64 [
    i32 137, label %47
    i32 136, label %47
    i32 135, label %47
    i32 134, label %47
    i32 133, label %47
    i32 132, label %47
  ]

47:                                               ; preds = %43, %43, %43, %43, %43, %43
  %48 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %49 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %53 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %47
  %57 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %58 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @msleep(i32 %59)
  %61 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %62 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %56, %47
  br label %65

64:                                               ; preds = %43
  br label %65

65:                                               ; preds = %64, %63
  br label %105

66:                                               ; preds = %25
  %67 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %68 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %79 [
    i32 137, label %70
    i32 136, label %70
    i32 135, label %70
    i32 134, label %70
    i32 133, label %70
    i32 132, label %70
  ]

70:                                               ; preds = %66, %66, %66, %66, %66, %66
  %71 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %72 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %76 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %80

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79, %70
  br label %105

81:                                               ; preds = %25
  %82 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %83 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %102 [
    i32 137, label %85
    i32 136, label %85
    i32 135, label %85
    i32 134, label %85
    i32 133, label %85
    i32 132, label %85
  ]

85:                                               ; preds = %81, %81, %81, %81, %81, %81
  %86 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %87 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %91 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %85
  %95 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %96 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @msleep(i32 %97)
  %99 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %100 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %94, %85
  br label %103

102:                                              ; preds = %81
  br label %103

103:                                              ; preds = %102, %101
  br label %105

104:                                              ; preds = %25
  br label %105

105:                                              ; preds = %104, %103, %80, %65, %42
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
