; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adav80x.c_adav80x_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adav80x.c_adav80x_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.adav80x = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ADAV80X_PLL_CTRL1_PLLDIV = common dso_local global i32 0, align 4
@ADAV80X_PLL_CTRL1 = common dso_local global i32 0, align 4
@ADAV80X_PLL_CTRL2 = common dso_local global i32 0, align 4
@ADAV80X_PLL_CLK_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @adav80x_set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adav80x_set_pll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_dapm_context*, align 8
  %13 = alloca %struct.adav80x*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %18 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %17)
  store %struct.snd_soc_dapm_context* %18, %struct.snd_soc_dapm_context** %12, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %20 = call %struct.adav80x* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.adav80x* %20, %struct.adav80x** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %23 [
    i32 128, label %22
    i32 129, label %22
    i32 130, label %22
  ]

22:                                               ; preds = %5, %5, %5
  br label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %119

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %119

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  switch i32 %31, label %41 [
    i32 27000000, label %32
    i32 54000000, label %33
  ]

32:                                               ; preds = %30
  br label %44

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 129
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @ADAV80X_PLL_CTRL1_PLLDIV, align 4
  %38 = load i32, i32* %14, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %14, align 4
  br label %44

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %30, %40
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %119

44:                                               ; preds = %36, %32
  %45 = load i32, i32* %11, align 4
  %46 = icmp ugt i32 %45, 12288000
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @ADAV80X_PLL_CTRL2_DOUB(i32 %48)
  %50 = load i32, i32* %15, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %11, align 4
  %53 = udiv i32 %52, 2
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %47, %44
  %55 = load i32, i32* %11, align 4
  switch i32 %55, label %71 [
    i32 8192000, label %56
    i32 11289600, label %61
    i32 12288000, label %66
  ]

56:                                               ; preds = %54
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @ADAV80X_PLL_CTRL2_FS_32(i32 %57)
  %59 = load i32, i32* %15, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %15, align 4
  br label %74

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @ADAV80X_PLL_CTRL2_FS_44(i32 %62)
  %64 = load i32, i32* %15, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %15, align 4
  br label %74

66:                                               ; preds = %54
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @ADAV80X_PLL_CTRL2_FS_48(i32 %67)
  %69 = load i32, i32* %15, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %15, align 4
  br label %74

71:                                               ; preds = %54
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %119

74:                                               ; preds = %66, %61, %56
  %75 = load %struct.adav80x*, %struct.adav80x** %13, align 8
  %76 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ADAV80X_PLL_CTRL1, align 4
  %79 = load i32, i32* @ADAV80X_PLL_CTRL1_PLLDIV, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @regmap_update_bits(i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load %struct.adav80x*, %struct.adav80x** %13, align 8
  %83 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ADAV80X_PLL_CTRL2, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @ADAV80X_PLL_CTRL2_PLL_MASK(i32 %86)
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @regmap_update_bits(i32 %84, i32 %85, i32 %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.adav80x*, %struct.adav80x** %13, align 8
  %92 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %95, label %118

95:                                               ; preds = %74
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %96, 130
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @ADAV80X_PLL_CLK_SRC_PLL_MCLKI(i32 %99)
  store i32 %100, i32* %16, align 4
  br label %104

101:                                              ; preds = %95
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @ADAV80X_PLL_CLK_SRC_PLL_XIN(i32 %102)
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.adav80x*, %struct.adav80x** %13, align 8
  %106 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ADAV80X_PLL_CLK_SRC, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @ADAV80X_PLL_CLK_SRC_PLL_MASK(i32 %109)
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @regmap_update_bits(i32 %107, i32 %108, i32 %110, i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.adav80x*, %struct.adav80x** %13, align 8
  %115 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %12, align 8
  %117 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %116)
  br label %118

118:                                              ; preds = %104, %74
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %118, %71, %41, %29, %23
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.adav80x* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ADAV80X_PLL_CTRL2_DOUB(i32) #1

declare dso_local i32 @ADAV80X_PLL_CTRL2_FS_32(i32) #1

declare dso_local i32 @ADAV80X_PLL_CTRL2_FS_44(i32) #1

declare dso_local i32 @ADAV80X_PLL_CTRL2_FS_48(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ADAV80X_PLL_CTRL2_PLL_MASK(i32) #1

declare dso_local i32 @ADAV80X_PLL_CLK_SRC_PLL_MCLKI(i32) #1

declare dso_local i32 @ADAV80X_PLL_CLK_SRC_PLL_XIN(i32) #1

declare dso_local i32 @ADAV80X_PLL_CLK_SRC_PLL_MASK(i32) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
