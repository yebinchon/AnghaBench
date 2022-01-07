; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l35.c_cs35l35_main_amp_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l35.c_cs35l35_main_amp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.cs35l35_private = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@CS35L35_PWRCTL2 = common dso_local global i32 0, align 4
@CS35L35_PDN_BST_MASK = common dso_local global i32 0, align 4
@CS35L35_PDN_BST_FETON_SHIFT = common dso_local global i32 0, align 4
@CS35L35_PDN_BST_FETOFF_SHIFT = common dso_local global i32 0, align 4
@CS35L35_BST_CVTR_V_CTL = common dso_local global i32 0, align 4
@CS35L35_BST_CTL_MASK = common dso_local global i32 0, align 4
@CS35L35_BST_CTL_SHIFT = common dso_local global i32 0, align 4
@CS35L35_PROTECT_CTL = common dso_local global i32 0, align 4
@CS35L35_AMP_MUTE_MASK = common dso_local global i32 0, align 4
@CS35L35_INT_STATUS_1 = common dso_local global i32 0, align 4
@CS35L35_AMP_MUTE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid event = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @cs35l35_main_amp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l35_main_amp_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.cs35l35_private*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %7, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %16 = call %struct.cs35l35_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.cs35l35_private* %16, %struct.cs35l35_private** %8, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %134 [
    i32 128, label %18
    i32 130, label %43
    i32 129, label %81
    i32 131, label %114
  ]

18:                                               ; preds = %3
  %19 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %20 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %26 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CS35L35_PWRCTL2, align 4
  %29 = load i32, i32* @CS35L35_PDN_BST_MASK, align 4
  %30 = load i32, i32* @CS35L35_PDN_BST_FETON_SHIFT, align 4
  %31 = shl i32 0, %30
  %32 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %29, i32 %31)
  br label %42

33:                                               ; preds = %18
  %34 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %35 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CS35L35_PWRCTL2, align 4
  %38 = load i32, i32* @CS35L35_PDN_BST_MASK, align 4
  %39 = load i32, i32* @CS35L35_PDN_BST_FETOFF_SHIFT, align 4
  %40 = shl i32 0, %39
  %41 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %33, %24
  br label %140

43:                                               ; preds = %3
  %44 = call i32 @usleep_range(i32 5000, i32 5100)
  %45 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %46 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %51 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CS35L35_BST_CVTR_V_CTL, align 4
  %54 = load i32, i32* @CS35L35_BST_CTL_MASK, align 4
  %55 = load i32, i32* @CS35L35_BST_CTL_SHIFT, align 4
  %56 = shl i32 0, %55
  %57 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %49, %43
  %59 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %60 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CS35L35_PROTECT_CTL, align 4
  %63 = load i32, i32* @CS35L35_AMP_MUTE_MASK, align 4
  %64 = call i32 @regmap_update_bits(i32 %61, i32 %62, i32 %63, i32 0)
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %77, %58
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %70 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CS35L35_INT_STATUS_1, align 4
  %73 = bitcast [4 x i32]* %9 to i32**
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %75 = call i32 @ARRAY_SIZE(i32* %74)
  %76 = call i32 @regmap_bulk_read(i32 %71, i32 %72, i32** %73, i32 %75)
  br label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %65

80:                                               ; preds = %65
  br label %140

81:                                               ; preds = %3
  %82 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %83 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CS35L35_PROTECT_CTL, align 4
  %86 = load i32, i32* @CS35L35_AMP_MUTE_MASK, align 4
  %87 = load i32, i32* @CS35L35_AMP_MUTE_SHIFT, align 4
  %88 = shl i32 1, %87
  %89 = call i32 @regmap_update_bits(i32 %84, i32 %85, i32 %86, i32 %88)
  %90 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %91 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %81
  %96 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %97 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @CS35L35_PWRCTL2, align 4
  %100 = load i32, i32* @CS35L35_PDN_BST_MASK, align 4
  %101 = load i32, i32* @CS35L35_PDN_BST_FETON_SHIFT, align 4
  %102 = shl i32 1, %101
  %103 = call i32 @regmap_update_bits(i32 %98, i32 %99, i32 %100, i32 %102)
  br label %113

104:                                              ; preds = %81
  %105 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %106 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @CS35L35_PWRCTL2, align 4
  %109 = load i32, i32* @CS35L35_PDN_BST_MASK, align 4
  %110 = load i32, i32* @CS35L35_PDN_BST_FETOFF_SHIFT, align 4
  %111 = shl i32 1, %110
  %112 = call i32 @regmap_update_bits(i32 %107, i32 %108, i32 %109, i32 %111)
  br label %113

113:                                              ; preds = %104, %95
  br label %140

114:                                              ; preds = %3
  %115 = call i32 @usleep_range(i32 5000, i32 5100)
  %116 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %117 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %114
  %121 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %122 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @CS35L35_BST_CVTR_V_CTL, align 4
  %125 = load i32, i32* @CS35L35_BST_CTL_MASK, align 4
  %126 = load %struct.cs35l35_private*, %struct.cs35l35_private** %8, align 8
  %127 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @CS35L35_BST_CTL_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = call i32 @regmap_update_bits(i32 %123, i32 %124, i32 %125, i32 %131)
  br label %133

133:                                              ; preds = %120, %114
  br label %140

134:                                              ; preds = %3
  %135 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %136 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @dev_err(i32 %137, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %134, %133, %113, %80, %42
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.cs35l35_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32**, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
