; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_dai_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_dai_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max98095_priv = type { i32, i32 }

@M98095_026_SYS_CLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid master clock frequency\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Clock source is %d at %uHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @max98095_dai_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98095_dai_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.max98095_priv*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 1
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %10, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %16 = call %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.max98095_priv* %16, %struct.max98095_priv** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.max98095_priv*, %struct.max98095_priv** %11, align 8
  %19 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %89

23:                                               ; preds = %4
  %24 = load %struct.max98095_priv*, %struct.max98095_priv** %11, align 8
  %25 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @IS_ERR(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %23
  %30 = load %struct.max98095_priv*, %struct.max98095_priv** %11, align 8
  %31 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @clk_round_rate(i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.max98095_priv*, %struct.max98095_priv** %11, align 8
  %36 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @clk_set_rate(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %29, %23
  %41 = load i32, i32* %8, align 4
  %42 = icmp uge i32 %41, 10000000
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp ult i32 %44, 20000000
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %48 = load i32, i32* @M98095_026_SYS_CLK, align 4
  %49 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %47, i32 %48, i32 16)
  br label %79

50:                                               ; preds = %43, %40
  %51 = load i32, i32* %8, align 4
  %52 = icmp uge i32 %51, 20000000
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = icmp ult i32 %54, 40000000
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %58 = load i32, i32* @M98095_026_SYS_CLK, align 4
  %59 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %57, i32 %58, i32 32)
  br label %78

60:                                               ; preds = %53, %50
  %61 = load i32, i32* %8, align 4
  %62 = icmp uge i32 %61, 40000000
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = icmp ult i32 %64, 60000000
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %68 = load i32, i32* @M98095_026_SYS_CLK, align 4
  %69 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %67, i32 %68, i32 48)
  br label %77

70:                                               ; preds = %63, %60
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %72 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %89

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %56
  br label %79

79:                                               ; preds = %78, %46
  %80 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %81 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @dev_dbg(i32 %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.max98095_priv*, %struct.max98095_priv** %11, align 8
  %88 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %79, %70, %22
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_round_rate(i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
