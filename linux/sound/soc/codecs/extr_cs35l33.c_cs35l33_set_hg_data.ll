; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_set_hg_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_set_hg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs35l33_pdata = type { %struct.cs35l33_hg }
%struct.cs35l33_hg = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.cs35l33_private = type { i32 }

@CS35L33_HG_MEMLDO_CTL = common dso_local global i32 0, align 4
@CS35L33_MEM_DEPTH_MASK = common dso_local global i32 0, align 4
@CS35L33_MEM_DEPTH_SHIFT = common dso_local global i32 0, align 4
@CS35L33_HG_REL_RATE = common dso_local global i32 0, align 4
@CS35L33_HG_HEAD = common dso_local global i32 0, align 4
@CS35L33_HD_RM_MASK = common dso_local global i32 0, align 4
@CS35L33_HD_RM_SHIFT = common dso_local global i32 0, align 4
@CS35L33_LDO_THLD_MASK = common dso_local global i32 0, align 4
@CS35L33_LDO_THLD_SHIFT = common dso_local global i32 0, align 4
@CS35L33_LDO_DISABLE_MASK = common dso_local global i32 0, align 4
@CS35L33_LDO_DISABLE_SHIFT = common dso_local global i32 0, align 4
@CS35L33_LDO_DEL = common dso_local global i32 0, align 4
@CS35L33_LDO_ENTRY_DELAY_MASK = common dso_local global i32 0, align 4
@CS35L33_LDO_ENTRY_DELAY_SHIFT = common dso_local global i32 0, align 4
@CS35L33_HG_EN = common dso_local global i32 0, align 4
@CS35L33_VP_HG_AUTO_MASK = common dso_local global i32 0, align 4
@cs35l33_vphg_auto_route = common dso_local global i32 0, align 4
@CS35L33_VP_HG_MASK = common dso_local global i32 0, align 4
@CS35L33_VP_HG_SHIFT = common dso_local global i32 0, align 4
@CS35L33_VP_HG_RATE_MASK = common dso_local global i32 0, align 4
@CS35L33_VP_HG_RATE_SHIFT = common dso_local global i32 0, align 4
@CS35L33_VP_HG_VA_MASK = common dso_local global i32 0, align 4
@CS35L33_VP_HG_VA_SHIFT = common dso_local global i32 0, align 4
@CS35L33_CLASS_HG_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.cs35l33_pdata*)* @cs35l33_set_hg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l33_set_hg_data(%struct.snd_soc_component* %0, %struct.cs35l33_pdata* %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.cs35l33_pdata*, align 8
  %5 = alloca %struct.cs35l33_hg*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.cs35l33_private*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store %struct.cs35l33_pdata* %1, %struct.cs35l33_pdata** %4, align 8
  %8 = load %struct.cs35l33_pdata*, %struct.cs35l33_pdata** %4, align 8
  %9 = getelementptr inbounds %struct.cs35l33_pdata, %struct.cs35l33_pdata* %8, i32 0, i32 0
  store %struct.cs35l33_hg* %9, %struct.cs35l33_hg** %5, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %10)
  store %struct.snd_soc_dapm_context* %11, %struct.snd_soc_dapm_context** %6, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = call %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.cs35l33_private* %13, %struct.cs35l33_private** %7, align 8
  %14 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %5, align 8
  %15 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %14, i32 0, i32 10
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %140

18:                                               ; preds = %2
  %19 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %20 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CS35L33_HG_MEMLDO_CTL, align 4
  %23 = load i32, i32* @CS35L33_MEM_DEPTH_MASK, align 4
  %24 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %5, align 8
  %25 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CS35L33_MEM_DEPTH_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %28)
  %30 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %31 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CS35L33_HG_REL_RATE, align 4
  %34 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %5, align 8
  %35 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @regmap_write(i32 %32, i32 %33, i32 %36)
  %38 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %39 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CS35L33_HG_HEAD, align 4
  %42 = load i32, i32* @CS35L33_HD_RM_MASK, align 4
  %43 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %5, align 8
  %44 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CS35L33_HD_RM_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = call i32 @regmap_update_bits(i32 %40, i32 %41, i32 %42, i32 %47)
  %49 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %50 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CS35L33_HG_MEMLDO_CTL, align 4
  %53 = load i32, i32* @CS35L33_LDO_THLD_MASK, align 4
  %54 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %5, align 8
  %55 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CS35L33_LDO_THLD_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = call i32 @regmap_update_bits(i32 %51, i32 %52, i32 %53, i32 %58)
  %60 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %61 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CS35L33_HG_MEMLDO_CTL, align 4
  %64 = load i32, i32* @CS35L33_LDO_DISABLE_MASK, align 4
  %65 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %5, align 8
  %66 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CS35L33_LDO_DISABLE_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = call i32 @regmap_update_bits(i32 %62, i32 %63, i32 %64, i32 %69)
  %71 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %72 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CS35L33_LDO_DEL, align 4
  %75 = load i32, i32* @CS35L33_LDO_ENTRY_DELAY_MASK, align 4
  %76 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %5, align 8
  %77 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @CS35L33_LDO_ENTRY_DELAY_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = call i32 @regmap_update_bits(i32 %73, i32 %74, i32 %75, i32 %80)
  %82 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %5, align 8
  %83 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %82, i32 0, i32 8
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %18
  %87 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %88 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CS35L33_HG_EN, align 4
  %91 = load i32, i32* @CS35L33_VP_HG_AUTO_MASK, align 4
  %92 = load i32, i32* @CS35L33_VP_HG_AUTO_MASK, align 4
  %93 = call i32 @regmap_update_bits(i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %95 = load i32, i32* @cs35l33_vphg_auto_route, align 4
  %96 = load i32, i32* @cs35l33_vphg_auto_route, align 4
  %97 = call i32 @ARRAY_SIZE(i32 %96)
  %98 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %94, i32 %95, i32 %97)
  br label %99

99:                                               ; preds = %86, %18
  %100 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %101 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @CS35L33_HG_EN, align 4
  %104 = load i32, i32* @CS35L33_VP_HG_MASK, align 4
  %105 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %5, align 8
  %106 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @CS35L33_VP_HG_SHIFT, align 4
  %109 = shl i32 %107, %108
  %110 = call i32 @regmap_update_bits(i32 %102, i32 %103, i32 %104, i32 %109)
  %111 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %112 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @CS35L33_LDO_DEL, align 4
  %115 = load i32, i32* @CS35L33_VP_HG_RATE_MASK, align 4
  %116 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %5, align 8
  %117 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @CS35L33_VP_HG_RATE_SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = call i32 @regmap_update_bits(i32 %113, i32 %114, i32 %115, i32 %120)
  %122 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %123 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @CS35L33_LDO_DEL, align 4
  %126 = load i32, i32* @CS35L33_VP_HG_VA_MASK, align 4
  %127 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %5, align 8
  %128 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @CS35L33_VP_HG_VA_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = call i32 @regmap_update_bits(i32 %124, i32 %125, i32 %126, i32 %131)
  %133 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %134 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @CS35L33_HG_EN, align 4
  %137 = load i32, i32* @CS35L33_CLASS_HG_EN_MASK, align 4
  %138 = load i32, i32* @CS35L33_CLASS_HG_EN_MASK, align 4
  %139 = call i32 @regmap_update_bits(i32 %135, i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %99, %2
  ret i32 0
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
