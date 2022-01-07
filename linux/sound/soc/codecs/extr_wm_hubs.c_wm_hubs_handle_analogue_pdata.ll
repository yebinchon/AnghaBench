; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_wm_hubs_handle_analogue_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_hubs.c_wm_hubs_handle_analogue_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm_hubs_data = type { i32, i32, i32, i32 }

@WM8993_LINE_MIXER1 = common dso_local global i32 0, align 4
@WM8993_LINEOUT1_MODE = common dso_local global i32 0, align 4
@WM8993_LINE_MIXER2 = common dso_local global i32 0, align 4
@WM8993_LINEOUT2_MODE = common dso_local global i32 0, align 4
@WM8993_ANTIPOP1 = common dso_local global i32 0, align 4
@WM8993_LINEOUT_VMID_BUF_ENA = common dso_local global i32 0, align 4
@WM8993_ADDITIONAL_CONTROL = common dso_local global i32 0, align 4
@WM8993_LINEOUT1_FB = common dso_local global i32 0, align 4
@WM8993_LINEOUT2_FB = common dso_local global i32 0, align 4
@WM8993_MICBIAS = common dso_local global i32 0, align 4
@WM8993_JD_SCTHR_MASK = common dso_local global i32 0, align 4
@WM8993_JD_THR_MASK = common dso_local global i32 0, align 4
@WM8993_MICB1_LVL = common dso_local global i32 0, align 4
@WM8993_MICB2_LVL = common dso_local global i32 0, align 4
@WM8993_JD_SCTHR_SHIFT = common dso_local global i32 0, align 4
@WM8993_JD_THR_SHIFT = common dso_local global i32 0, align 4
@WM8993_MICB2_LVL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm_hubs_handle_analogue_pdata(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.wm_hubs_data*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %25 = call %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %24)
  store %struct.wm_hubs_data* %25, %struct.wm_hubs_data** %23, align 8
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %23, align 8
  %31 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %23, align 8
  %37 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %19, align 4
  %39 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %23, align 8
  %40 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %20, align 4
  %42 = load %struct.wm_hubs_data*, %struct.wm_hubs_data** %23, align 8
  %43 = getelementptr inbounds %struct.wm_hubs_data, %struct.wm_hubs_data* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %11
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %48 = load i32, i32* @WM8993_LINE_MIXER1, align 4
  %49 = load i32, i32* @WM8993_LINEOUT1_MODE, align 4
  %50 = load i32, i32* @WM8993_LINEOUT1_MODE, align 4
  %51 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %47, i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %11
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %57 = load i32, i32* @WM8993_LINE_MIXER2, align 4
  %58 = load i32, i32* @WM8993_LINEOUT2_MODE, align 4
  %59 = load i32, i32* @WM8993_LINEOUT2_MODE, align 4
  %60 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %56, i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %55, %52
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %69 = load i32, i32* @WM8993_ANTIPOP1, align 4
  %70 = load i32, i32* @WM8993_LINEOUT_VMID_BUF_ENA, align 4
  %71 = load i32, i32* @WM8993_LINEOUT_VMID_BUF_ENA, align 4
  %72 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %68, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %64, %61
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %78 = load i32, i32* @WM8993_ADDITIONAL_CONTROL, align 4
  %79 = load i32, i32* @WM8993_LINEOUT1_FB, align 4
  %80 = load i32, i32* @WM8993_LINEOUT1_FB, align 4
  %81 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %77, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %73
  %83 = load i32, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %87 = load i32, i32* @WM8993_ADDITIONAL_CONTROL, align 4
  %88 = load i32, i32* @WM8993_LINEOUT2_FB, align 4
  %89 = load i32, i32* @WM8993_LINEOUT2_FB, align 4
  %90 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %86, i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %85, %82
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %93 = load i32, i32* @WM8993_MICBIAS, align 4
  %94 = load i32, i32* @WM8993_JD_SCTHR_MASK, align 4
  %95 = load i32, i32* @WM8993_JD_THR_MASK, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @WM8993_MICB1_LVL, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @WM8993_MICB2_LVL, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* @WM8993_JD_SCTHR_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* @WM8993_JD_THR_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = or i32 %103, %106
  %108 = load i32, i32* %21, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* @WM8993_MICB2_LVL_SHIFT, align 4
  %112 = shl i32 %110, %111
  %113 = or i32 %109, %112
  %114 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %92, i32 %93, i32 %100, i32 %113)
  ret i32 0
}

declare dso_local %struct.wm_hubs_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
