; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_wm_hubs_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_wm_hubs_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm_hubs_data = type { i32, i32, i32, i32, i32, i32 }

@WM8993_INPUTS_CLAMP_REG = common dso_local global i32 0, align 4
@WM8993_INPUTS_CLAMP = common dso_local global i32 0, align 4
@WM8993_LINEOUT1N_ENA = common dso_local global i32 0, align 4
@WM8993_LINEOUT1P_ENA = common dso_local global i32 0, align 4
@WM8993_LINEOUT2N_ENA = common dso_local global i32 0, align 4
@WM8993_LINEOUT2P_ENA = common dso_local global i32 0, align 4
@WM8993_POWER_MANAGEMENT_3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wm_hubs_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm_hubs_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm_hubs_data* %9, %struct.wm_hubs_data** %5, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %105 [
    i32 128, label %11
    i32 129, label %17
  ]

11:                                               ; preds = %2
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = load i32, i32* @WM8993_INPUTS_CLAMP_REG, align 4
  %14 = load i32, i32* @WM8993_INPUTS_CLAMP, align 4
  %15 = load i32, i32* @WM8993_INPUTS_CLAMP, align 4
  %16 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %12, i32 %13, i32 %14, i32 %15)
  br label %106

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %18 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %5, align 8
  %19 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* @WM8993_LINEOUT1N_ENA, align 4
  %24 = load i32, i32* @WM8993_LINEOUT1P_ENA, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %5, align 8
  %30 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @WM8993_LINEOUT2N_ENA, align 4
  %35 = load i32, i32* @WM8993_LINEOUT2P_ENA, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %5, align 8
  %41 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %5, align 8
  %46 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @WM8993_LINEOUT1N_ENA, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %49, %44, %39
  %54 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %5, align 8
  %55 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %5, align 8
  %60 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @WM8993_LINEOUT1P_ENA, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %63, %58, %53
  %68 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %5, align 8
  %69 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %5, align 8
  %74 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @WM8993_LINEOUT2N_ENA, align 4
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %77, %72, %67
  %82 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %5, align 8
  %83 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %5, align 8
  %88 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32, i32* @WM8993_LINEOUT2P_ENA, align 4
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %91, %86, %81
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %97 = load i32, i32* @WM8993_POWER_MANAGEMENT_3, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %96, i32 %97, i32 %98, i32 %99)
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %102 = load i32, i32* @WM8993_INPUTS_CLAMP_REG, align 4
  %103 = load i32, i32* @WM8993_INPUTS_CLAMP, align 4
  %104 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %101, i32 %102, i32 %103, i32 0)
  br label %106

105:                                              ; preds = %2
  br label %106

106:                                              ; preds = %105, %95, %11
  ret void
}

declare dso_local %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
