; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-interface.c_axg_tdm_iface_set_sclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-interface.c_axg_tdm_iface_set_sclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.axg_tdm_iface = type { i64, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"can't derive sclk %lu from mclk %lu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"setting bit clock failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"setting bit clock phase failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, %struct.snd_pcm_hw_params*)* @axg_tdm_iface_set_sclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_tdm_iface_set_sclk(%struct.snd_soc_dai* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.axg_tdm_iface*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = call %struct.axg_tdm_iface* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.axg_tdm_iface* %10, %struct.axg_tdm_iface** %6, align 8
  %11 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %12 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %15 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = mul i64 %13, %16
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %19 = call i64 @params_rate(%struct.snd_pcm_hw_params* %18)
  %20 = mul i64 %17, %19
  store i64 %20, i64* %7, align 8
  %21 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %22 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %2
  %26 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %27 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = mul i64 4, %29
  %31 = call i32 @clk_set_rate(i32 %28, i64 %30)
  br label %52

32:                                               ; preds = %2
  %33 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %34 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = urem i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %7, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %46 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %90

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51, %25
  %53 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %54 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @clk_set_rate(i32 %55, i64 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %62 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %90

67:                                               ; preds = %52
  %68 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %69 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %6, align 8
  %72 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @axg_tdm_sclk_invert(i32 %73)
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 0, i32 180
  %78 = call i32 @clk_set_phase(i32 %70, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %67
  %82 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %83 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %84, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %90

88:                                               ; preds = %67
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %81, %60, %39
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.axg_tdm_iface* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i64 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @clk_set_phase(i32, i32) #1

declare dso_local i64 @axg_tdm_sclk_invert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
