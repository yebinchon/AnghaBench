; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_dai_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_dai_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.da7213_priv = type { i32 }

@DA7213_DAI_CLK_MODE = common dso_local global i32 0, align 4
@DA7213_DAI_CLK_EN_MASK = common dso_local global i32 0, align 4
@DA7213_PC_COUNT = common dso_local global i32 0, align 4
@DA7213_PC_FREERUN_MASK = common dso_local global i32 0, align 4
@DA7213_PLL_CTRL = common dso_local global i32 0, align 4
@DA7213_PLL_SRM_EN = common dso_local global i32 0, align 4
@DA7213_PLL_32K_MODE = common dso_local global i32 0, align 4
@DA7213_PLL_STATUS = common dso_local global i32 0, align 4
@DA7219_PLL_SRM_LOCK = common dso_local global i32 0, align 4
@DA7213_SRM_CHECK_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SRM failed to lock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @da7213_dai_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7213_dai_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.da7213_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
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
  %19 = call %struct.da7213_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.da7213_priv* %19, %struct.da7213_priv** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %122 [
    i32 128, label %21
    i32 129, label %91
  ]

21:                                               ; preds = %3
  %22 = load %struct.da7213_priv*, %struct.da7213_priv** %9, align 8
  %23 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %28 = load i32, i32* @DA7213_DAI_CLK_MODE, align 4
  %29 = load i32, i32* @DA7213_DAI_CLK_EN_MASK, align 4
  %30 = load i32, i32* @DA7213_DAI_CLK_EN_MASK, align 4
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %27, i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %34 = load i32, i32* @DA7213_PC_COUNT, align 4
  %35 = load i32, i32* @DA7213_PC_FREERUN_MASK, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %33, i32 %34, i32 %35, i32 0)
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %38 = load i32, i32* @DA7213_PLL_CTRL, align 4
  %39 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @DA7213_PLL_SRM_EN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %125

45:                                               ; preds = %32
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @DA7213_PLL_32K_MODE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %52 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %51, i32 240, i32 139)
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %54 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %53, i32 242, i32 3)
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %56 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %55, i32 240, i32 0)
  br label %57

57:                                               ; preds = %50, %45
  br label %58

58:                                               ; preds = %80, %57
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %60 = load i32, i32* @DA7213_PLL_STATUS, align 4
  %61 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @DA7219_PLL_SRM_LOCK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 1, i32* %13, align 4
  br label %71

67:                                               ; preds = %58
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  %70 = call i32 @msleep(i32 50)
  br label %71

71:                                               ; preds = %67, %66
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @DA7213_SRM_CHECK_RETRIES, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i1 [ false, %72 ], [ %79, %76 ]
  br i1 %81, label %58, label %82

82:                                               ; preds = %80
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %87 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_warn(i32 %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %85, %82
  store i32 0, i32* %4, align 4
  br label %125

91:                                               ; preds = %3
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %93 = load i32, i32* @DA7213_PLL_CTRL, align 4
  %94 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %92, i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @DA7213_PLL_32K_MODE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %91
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %101 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %100, i32 240, i32 139)
  %102 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %103 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %102, i32 242, i32 1)
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %105 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %104, i32 240, i32 0)
  br label %106

106:                                              ; preds = %99, %91
  %107 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %108 = load i32, i32* @DA7213_PC_COUNT, align 4
  %109 = load i32, i32* @DA7213_PC_FREERUN_MASK, align 4
  %110 = load i32, i32* @DA7213_PC_FREERUN_MASK, align 4
  %111 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %107, i32 %108, i32 %109, i32 %110)
  %112 = load %struct.da7213_priv*, %struct.da7213_priv** %9, align 8
  %113 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %106
  %117 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %118 = load i32, i32* @DA7213_DAI_CLK_MODE, align 4
  %119 = load i32, i32* @DA7213_DAI_CLK_EN_MASK, align 4
  %120 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %117, i32 %118, i32 %119, i32 0)
  br label %121

121:                                              ; preds = %116, %106
  store i32 0, i32* %4, align 4
  br label %125

122:                                              ; preds = %3
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %122, %121, %90, %44
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.da7213_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
