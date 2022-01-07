; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs35l33_private = type { i32, %struct.TYPE_2__, i64, %struct.snd_soc_component* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }

@CS35L33_PROTECT_CTL = common dso_local global i32 0, align 4
@CS35L33_ALIVE_WD_DIS = common dso_local global i32 0, align 4
@CS35L33_BST_CTL2 = common dso_local global i32 0, align 4
@CS35L33_ALIVE_WD_DIS2 = common dso_local global i32 0, align 4
@CS35L33_BST_CTL1 = common dso_local global i32 0, align 4
@CS35L33_BST_CTL_MASK = common dso_local global i32 0, align 4
@CS35L33_CLASSD_CTL = common dso_local global i32 0, align 4
@CS35L33_AMP_DRV_SEL_MASK = common dso_local global i32 0, align 4
@CS35L33_AMP_DRV_SEL_SHIFT = common dso_local global i32 0, align 4
@CS35L33_DAC_CTL = common dso_local global i32 0, align 4
@CS35L33_DIGSFT = common dso_local global i32 0, align 4
@CS35L33_DSR_RATE = common dso_local global i32 0, align 4
@CS35L33_ADC_CTL = common dso_local global i32 0, align 4
@CS35L33_IMON_SCALE = common dso_local global i32 0, align 4
@CS35L33_INT_MASK_1 = common dso_local global i32 0, align 4
@CS35L33_M_OTE = common dso_local global i32 0, align 4
@CS35L33_M_OTW = common dso_local global i32 0, align 4
@CS35L33_M_AMP_SHORT = common dso_local global i32 0, align 4
@CS35L33_M_CAL_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cs35l33_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l33_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.cs35l33_private*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.cs35l33_private* %5, %struct.cs35l33_private** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = load %struct.cs35l33_private*, %struct.cs35l33_private** %3, align 8
  %8 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %7, i32 0, i32 3
  store %struct.snd_soc_component* %6, %struct.snd_soc_component** %8, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %10 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pm_runtime_get_sync(i32 %11)
  %13 = load %struct.cs35l33_private*, %struct.cs35l33_private** %3, align 8
  %14 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CS35L33_PROTECT_CTL, align 4
  %17 = load i32, i32* @CS35L33_ALIVE_WD_DIS, align 4
  %18 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 %17, i32 8)
  %19 = load %struct.cs35l33_private*, %struct.cs35l33_private** %3, align 8
  %20 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CS35L33_BST_CTL2, align 4
  %23 = load i32, i32* @CS35L33_ALIVE_WD_DIS2, align 4
  %24 = load i32, i32* @CS35L33_ALIVE_WD_DIS2, align 4
  %25 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.cs35l33_private*, %struct.cs35l33_private** %3, align 8
  %27 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CS35L33_BST_CTL1, align 4
  %30 = load i32, i32* @CS35L33_BST_CTL_MASK, align 4
  %31 = load %struct.cs35l33_private*, %struct.cs35l33_private** %3, align 8
  %32 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %34)
  %36 = load %struct.cs35l33_private*, %struct.cs35l33_private** %3, align 8
  %37 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CS35L33_CLASSD_CTL, align 4
  %40 = load i32, i32* @CS35L33_AMP_DRV_SEL_MASK, align 4
  %41 = load %struct.cs35l33_private*, %struct.cs35l33_private** %3, align 8
  %42 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CS35L33_AMP_DRV_SEL_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %40, i32 %46)
  %48 = load %struct.cs35l33_private*, %struct.cs35l33_private** %3, align 8
  %49 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %1
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %55 = load %struct.cs35l33_private*, %struct.cs35l33_private** %3, align 8
  %56 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @cs35l33_set_bst_ipk(%struct.snd_soc_component* %54, i64 %58)
  br label %60

60:                                               ; preds = %53, %1
  %61 = load %struct.cs35l33_private*, %struct.cs35l33_private** %3, align 8
  %62 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %67 = load i32, i32* @CS35L33_DAC_CTL, align 4
  %68 = load i32, i32* @CS35L33_DIGSFT, align 4
  %69 = load i32, i32* @CS35L33_DIGSFT, align 4
  %70 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %72 = load i32, i32* @CS35L33_DAC_CTL, align 4
  %73 = load i32, i32* @CS35L33_DSR_RATE, align 4
  %74 = load %struct.cs35l33_private*, %struct.cs35l33_private** %3, align 8
  %75 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %73, i32 %77)
  br label %84

79:                                               ; preds = %60
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %81 = load i32, i32* @CS35L33_DAC_CTL, align 4
  %82 = load i32, i32* @CS35L33_DIGSFT, align 4
  %83 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %80, i32 %81, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %79, %65
  %85 = load %struct.cs35l33_private*, %struct.cs35l33_private** %3, align 8
  %86 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 8
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %92 = load i32, i32* @CS35L33_ADC_CTL, align 4
  %93 = load i32, i32* @CS35L33_IMON_SCALE, align 4
  %94 = load %struct.cs35l33_private*, %struct.cs35l33_private** %3, align 8
  %95 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %91, i32 %92, i32 %93, i32 %97)
  br label %99

99:                                               ; preds = %90, %84
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %101 = load %struct.cs35l33_private*, %struct.cs35l33_private** %3, align 8
  %102 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %101, i32 0, i32 1
  %103 = call i32 @cs35l33_set_hg_data(%struct.snd_soc_component* %100, %struct.TYPE_2__* %102)
  %104 = load %struct.cs35l33_private*, %struct.cs35l33_private** %3, align 8
  %105 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CS35L33_INT_MASK_1, align 4
  %108 = load i32, i32* @CS35L33_M_OTE, align 4
  %109 = load i32, i32* @CS35L33_M_OTW, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @CS35L33_M_AMP_SHORT, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @CS35L33_M_CAL_ERR, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @regmap_update_bits(i32 %106, i32 %107, i32 %114, i32 0)
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %117 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @pm_runtime_put_sync(i32 %118)
  ret i32 0
}

declare dso_local %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @cs35l33_set_bst_ipk(%struct.snd_soc_component*, i64) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @cs35l33_set_hg_data(%struct.snd_soc_component*, %struct.TYPE_2__*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
