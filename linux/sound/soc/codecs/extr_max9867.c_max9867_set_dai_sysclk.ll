; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9867.c_max9867_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9867.c_max9867_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max9867_priv = type { i32, i32, i32, i32* }

@MAX9867_PSCLK_10_20 = common dso_local global i32 0, align 4
@MAX9867_PSCLK_20_40 = common dso_local global i32 0, align 4
@MAX9867_PSCLK_40_60 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Invalid clock frequency %uHz (required 10-60MHz)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@max9867_constraints_48k = common dso_local global i32 0, align 4
@max9867_constraints_44k1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Unable to set exact rate with %uHz clock frequency\0A\00", align 1
@MAX9867_PSCLK_SHIFT = common dso_local global i32 0, align 4
@MAX9867_FREQ_MASK = common dso_local global i32 0, align 4
@MAX9867_SYSCLK = common dso_local global i32 0, align 4
@MAX9867_PSCLK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @max9867_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max9867_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.max9867_priv*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %10, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %17 = call %struct.max9867_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.max9867_priv* %17, %struct.max9867_priv** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp uge i32 %18, 10000000
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ule i32 %21, 20000000
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* @MAX9867_PSCLK_10_20, align 4
  %25 = load i32, i32* %12, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.max9867_priv*, %struct.max9867_priv** %11, align 8
  %29 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %68

30:                                               ; preds = %20, %4
  %31 = load i32, i32* %8, align 4
  %32 = icmp uge i32 %31, 20000000
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp ule i32 %34, 40000000
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* @MAX9867_PSCLK_20_40, align 4
  %38 = load i32, i32* %12, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %8, align 4
  %41 = udiv i32 %40, 2
  %42 = load %struct.max9867_priv*, %struct.max9867_priv** %11, align 8
  %43 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %67

44:                                               ; preds = %33, %30
  %45 = load i32, i32* %8, align 4
  %46 = icmp uge i32 %45, 40000000
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = icmp ule i32 %48, 60000000
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32, i32* @MAX9867_PSCLK_40_60, align 4
  %52 = load i32, i32* %12, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %8, align 4
  %55 = udiv i32 %54, 4
  %56 = load %struct.max9867_priv*, %struct.max9867_priv** %11, align 8
  %57 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %66

58:                                               ; preds = %47, %44
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %60 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %107

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66, %36
  br label %68

68:                                               ; preds = %67, %23
  %69 = load i32, i32* %8, align 4
  %70 = urem i32 %69, 48000
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.max9867_priv*, %struct.max9867_priv** %11, align 8
  %74 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %73, i32 0, i32 3
  store i32* @max9867_constraints_48k, i32** %74, align 8
  br label %89

75:                                               ; preds = %68
  %76 = load i32, i32* %8, align 4
  %77 = urem i32 %76, 44100
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.max9867_priv*, %struct.max9867_priv** %11, align 8
  %81 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %80, i32 0, i32 3
  store i32* @max9867_constraints_44k1, i32** %81, align 8
  br label %88

82:                                               ; preds = %75
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %84 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @dev_warn(i32 %85, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %82, %79
  br label %89

89:                                               ; preds = %88, %72
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.max9867_priv*, %struct.max9867_priv** %11, align 8
  %92 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @MAX9867_PSCLK_SHIFT, align 4
  %95 = shl i32 %93, %94
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* @MAX9867_FREQ_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %12, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %12, align 4
  %100 = load %struct.max9867_priv*, %struct.max9867_priv** %11, align 8
  %101 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @MAX9867_SYSCLK, align 4
  %104 = load i32, i32* @MAX9867_PSCLK_MASK, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @regmap_update_bits(i32 %102, i32 %103, i32 %104, i32 %105)
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %89, %58
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.max9867_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
