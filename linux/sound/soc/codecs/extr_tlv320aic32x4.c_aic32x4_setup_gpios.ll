; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4.c_aic32x4_setup_gpios.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4.c_aic32x4_setup_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.aic32x4_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@AIC32X4_MFPX_DEFAULT_VALUE = common dso_local global i64 0, align 8
@AIC32X4_DINCTL = common dso_local global i32 0, align 4
@aic32x4_mfp1 = common dso_local global i32 0, align 4
@AIC32X4_DOUTCTL = common dso_local global i32 0, align 4
@aic32x4_mfp2 = common dso_local global i32 0, align 4
@AIC32X4_SCLKCTL = common dso_local global i32 0, align 4
@aic32x4_mfp3 = common dso_local global i32 0, align 4
@AIC32X4_MISOCTL = common dso_local global i32 0, align 4
@aic32x4_mfp4 = common dso_local global i32 0, align 4
@AIC32X4_GPIOCTL = common dso_local global i32 0, align 4
@aic32x4_mfp5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @aic32x4_setup_gpios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic32x4_setup_gpios(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.aic32x4_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.aic32x4_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.aic32x4_priv* %5, %struct.aic32x4_priv** %3, align 8
  %6 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %3, align 8
  %7 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AIC32X4_MFPX_DEFAULT_VALUE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %17 = load i32, i32* @AIC32X4_DINCTL, align 4
  %18 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %3, align 8
  %19 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %16, i32 %17, i64 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %27 = load i32, i32* @aic32x4_mfp1, align 4
  %28 = load i32, i32* @aic32x4_mfp1, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %26, i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %15, %1
  %32 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %3, align 8
  %33 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AIC32X4_MFPX_DEFAULT_VALUE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %31
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %43 = load i32, i32* @AIC32X4_DOUTCTL, align 4
  %44 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %3, align 8
  %45 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %42, i32 %43, i64 %50)
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %53 = load i32, i32* @aic32x4_mfp2, align 4
  %54 = load i32, i32* @aic32x4_mfp2, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %52, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %41, %31
  %58 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %3, align 8
  %59 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AIC32X4_MFPX_DEFAULT_VALUE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %57
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %69 = load i32, i32* @AIC32X4_SCLKCTL, align 4
  %70 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %3, align 8
  %71 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %68, i32 %69, i64 %76)
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %79 = load i32, i32* @aic32x4_mfp3, align 4
  %80 = load i32, i32* @aic32x4_mfp3, align 4
  %81 = call i32 @ARRAY_SIZE(i32 %80)
  %82 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %78, i32 %79, i32 %81)
  br label %83

83:                                               ; preds = %67, %57
  %84 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %3, align 8
  %85 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @AIC32X4_MFPX_DEFAULT_VALUE, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %83
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %95 = load i32, i32* @AIC32X4_MISOCTL, align 4
  %96 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %3, align 8
  %97 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 3
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %94, i32 %95, i64 %102)
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %105 = load i32, i32* @aic32x4_mfp4, align 4
  %106 = load i32, i32* @aic32x4_mfp4, align 4
  %107 = call i32 @ARRAY_SIZE(i32 %106)
  %108 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %104, i32 %105, i32 %107)
  br label %109

109:                                              ; preds = %93, %83
  %110 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %3, align 8
  %111 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 4
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @AIC32X4_MFPX_DEFAULT_VALUE, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %109
  %120 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %121 = load i32, i32* @AIC32X4_GPIOCTL, align 4
  %122 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %3, align 8
  %123 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 4
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %120, i32 %121, i64 %128)
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %131 = load i32, i32* @aic32x4_mfp5, align 4
  %132 = load i32, i32* @aic32x4_mfp5, align 4
  %133 = call i32 @ARRAY_SIZE(i32 %132)
  %134 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %130, i32 %131, i32 %133)
  br label %135

135:                                              ; preds = %119, %109
  ret void
}

declare dso_local %struct.aic32x4_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i64) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
