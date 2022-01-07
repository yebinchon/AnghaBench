; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l34.c_cs35l34_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l34.c_cs35l34_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs35l34_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64, i64, i64, i64 }

@CS35L34_PROTECT_CTL = common dso_local global i32 0, align 4
@CS35L34_OTW_ATTN_MASK = common dso_local global i32 0, align 4
@CS35L34_PWRCTL2 = common dso_local global i32 0, align 4
@CS35L34_PWRCTL3 = common dso_local global i32 0, align 4
@CS35L34_MUTE = common dso_local global i32 0, align 4
@CS35L34_BST_PEAK_I = common dso_local global i32 0, align 4
@CS35L34_BST_PEAK_MASK = common dso_local global i32 0, align 4
@CS35L34_GAIN_ZC_MASK = common dso_local global i32 0, align 4
@CS35L34_ADSP_CLK_CTL = common dso_local global i32 0, align 4
@CS35L34_ADSP_DRIVE = common dso_local global i32 0, align 4
@CS35L34_AMP_DIG_VOL_CTL = common dso_local global i32 0, align 4
@CS35L34_AMP_DIGSFT = common dso_local global i32 0, align 4
@CS35L34_INV = common dso_local global i32 0, align 4
@CS35L34_ADSP_I2S_CTL = common dso_local global i32 0, align 4
@CS35L34_I2S_LOC_MASK = common dso_local global i32 0, align 4
@CS35L34_I2S_LOC_SHIFT = common dso_local global i32 0, align 4
@CS35L34_ADSP_TDM_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cs35l34_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l34_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs35l34_private*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.cs35l34_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.cs35l34_private* %6, %struct.cs35l34_private** %4, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pm_runtime_get_sync(i32 %9)
  %11 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %12 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CS35L34_PROTECT_CTL, align 4
  %15 = load i32, i32* @CS35L34_OTW_ATTN_MASK, align 4
  %16 = call i32 @regmap_update_bits(i32 %13, i32 %14, i32 %15, i32 8)
  %17 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %18 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CS35L34_PWRCTL2, align 4
  %21 = call i32 @regmap_write(i32 %19, i32 %20, i32 253)
  %22 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %23 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CS35L34_PWRCTL3, align 4
  %26 = call i32 @regmap_write(i32 %24, i32 %25, i32 31)
  %27 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %28 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CS35L34_PROTECT_CTL, align 4
  %31 = load i32, i32* @CS35L34_MUTE, align 4
  %32 = load i32, i32* @CS35L34_MUTE, align 4
  %33 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %35 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %1
  %40 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %41 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CS35L34_BST_PEAK_I, align 4
  %44 = load i32, i32* @CS35L34_BST_PEAK_MASK, align 4
  %45 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %46 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %44, i32 %48)
  br label %50

50:                                               ; preds = %39, %1
  %51 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %52 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %58 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CS35L34_PROTECT_CTL, align 4
  %61 = load i32, i32* @CS35L34_GAIN_ZC_MASK, align 4
  %62 = call i32 @regmap_update_bits(i32 %59, i32 %60, i32 %61, i32 0)
  br label %71

63:                                               ; preds = %50
  %64 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %65 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CS35L34_PROTECT_CTL, align 4
  %68 = load i32, i32* @CS35L34_GAIN_ZC_MASK, align 4
  %69 = load i32, i32* @CS35L34_GAIN_ZC_MASK, align 4
  %70 = call i32 @regmap_update_bits(i32 %66, i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %63, %56
  %72 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %73 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %79 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @CS35L34_ADSP_CLK_CTL, align 4
  %82 = load i32, i32* @CS35L34_ADSP_DRIVE, align 4
  %83 = call i32 @regmap_update_bits(i32 %80, i32 %81, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %77, %71
  %85 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %86 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %92 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @CS35L34_AMP_DIG_VOL_CTL, align 4
  %95 = load i32, i32* @CS35L34_AMP_DIGSFT, align 4
  %96 = call i32 @regmap_update_bits(i32 %93, i32 %94, i32 %95, i32 0)
  br label %97

97:                                               ; preds = %90, %84
  %98 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %99 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %97
  %104 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %105 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CS35L34_AMP_DIG_VOL_CTL, align 4
  %108 = load i32, i32* @CS35L34_INV, align 4
  %109 = load i32, i32* @CS35L34_INV, align 4
  %110 = call i32 @regmap_update_bits(i32 %106, i32 %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %103, %97
  %112 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %113 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %119 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %120 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @cs35l34_boost_inductor(%struct.cs35l34_private* %118, i64 %122)
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %117, %111
  %125 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %126 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %124
  %131 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %132 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @CS35L34_ADSP_I2S_CTL, align 4
  %135 = load i32, i32* @CS35L34_I2S_LOC_MASK, align 4
  %136 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %137 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @CS35L34_I2S_LOC_SHIFT, align 4
  %141 = shl i32 %139, %140
  %142 = call i32 @regmap_update_bits(i32 %133, i32 %134, i32 %135, i32 %141)
  br label %143

143:                                              ; preds = %130, %124
  %144 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %145 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %143
  %150 = load %struct.cs35l34_private*, %struct.cs35l34_private** %4, align 8
  %151 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @CS35L34_ADSP_TDM_CTL, align 4
  %154 = call i32 @regmap_update_bits(i32 %152, i32 %153, i32 1, i32 1)
  br label %155

155:                                              ; preds = %149, %143
  %156 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %157 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @pm_runtime_put_sync(i32 %158)
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.cs35l34_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @cs35l34_boost_inductor(%struct.cs35l34_private*, i64) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
