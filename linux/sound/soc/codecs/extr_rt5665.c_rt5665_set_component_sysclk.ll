; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_set_component_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_set_component_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5665_priv = type { i32, i32, i64* }

@RT5665_SCLK_SRC_MCLK = common dso_local global i32 0, align 4
@RT5665_CLK_SRC_MCLK = common dso_local global i32 0, align 4
@RT5665_SCLK_SRC_PLL1 = common dso_local global i32 0, align 4
@RT5665_CLK_SRC_PLL1 = common dso_local global i32 0, align 4
@RT5665_SCLK_SRC_RCCLK = common dso_local global i32 0, align 4
@RT5665_CLK_SRC_RCCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid clock id (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RT5665_GLB_CLK = common dso_local global i32 0, align 4
@RT5665_SCLK_SRC_MASK = common dso_local global i32 0, align 4
@RT5665_AIF2_1 = common dso_local global i64 0, align 8
@RT5665_AIF2_2 = common dso_local global i64 0, align 8
@RT5665_I2S_M_CLK_CTRL_1 = common dso_local global i32 0, align 4
@RT5665_I2S2_SRC_MASK = common dso_local global i32 0, align 4
@RT5665_I2S2_SRC_SFT = common dso_local global i32 0, align 4
@RT5665_AIF3 = common dso_local global i64 0, align 8
@RT5665_I2S3_SRC_MASK = common dso_local global i32 0, align 4
@RT5665_I2S3_SRC_SFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @rt5665_set_component_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5665_set_component_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rt5665_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %16 = call %struct.rt5665_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.rt5665_priv* %16, %struct.rt5665_priv** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.rt5665_priv*, %struct.rt5665_priv** %12, align 8
  %19 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.rt5665_priv*, %struct.rt5665_priv** %12, align 8
  %25 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %112

29:                                               ; preds = %22, %5
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %46 [
    i32 130, label %31
    i32 129, label %36
    i32 128, label %41
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @RT5665_SCLK_SRC_MCLK, align 4
  %33 = load i32, i32* %13, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* @RT5665_CLK_SRC_MCLK, align 4
  store i32 %35, i32* %14, align 4
  br label %54

36:                                               ; preds = %29
  %37 = load i32, i32* @RT5665_SCLK_SRC_PLL1, align 4
  %38 = load i32, i32* %13, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* @RT5665_CLK_SRC_PLL1, align 4
  store i32 %40, i32* %14, align 4
  br label %54

41:                                               ; preds = %29
  %42 = load i32, i32* @RT5665_SCLK_SRC_RCCLK, align 4
  %43 = load i32, i32* %13, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* @RT5665_CLK_SRC_RCCLK, align 4
  store i32 %45, i32* %14, align 4
  br label %54

46:                                               ; preds = %29
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %48 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %112

54:                                               ; preds = %41, %36, %31
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %56 = load i32, i32* @RT5665_GLB_CLK, align 4
  %57 = load i32, i32* @RT5665_SCLK_SRC_MASK, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.rt5665_priv*, %struct.rt5665_priv** %12, align 8
  %61 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %60, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* @RT5665_AIF2_1, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %54
  %68 = load %struct.rt5665_priv*, %struct.rt5665_priv** %12, align 8
  %69 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* @RT5665_AIF2_2, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %67, %54
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %77 = load i32, i32* @RT5665_I2S_M_CLK_CTRL_1, align 4
  %78 = load i32, i32* @RT5665_I2S2_SRC_MASK, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @RT5665_I2S2_SRC_SFT, align 4
  %81 = shl i32 %79, %80
  %82 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %76, i32 %77, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %75, %67
  %84 = load %struct.rt5665_priv*, %struct.rt5665_priv** %12, align 8
  %85 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %84, i32 0, i32 2
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* @RT5665_AIF3, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %93 = load i32, i32* @RT5665_I2S_M_CLK_CTRL_1, align 4
  %94 = load i32, i32* @RT5665_I2S3_SRC_MASK, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @RT5665_I2S3_SRC_SFT, align 4
  %97 = shl i32 %95, %96
  %98 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %92, i32 %93, i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %91, %83
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.rt5665_priv*, %struct.rt5665_priv** %12, align 8
  %102 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.rt5665_priv*, %struct.rt5665_priv** %12, align 8
  %105 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %107 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @dev_dbg(i32 %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %110)
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %99, %46, %28
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local %struct.rt5665_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
