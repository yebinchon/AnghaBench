; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da732x.c_da732x_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da732x.c_da732x_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.da732x_priv = type { i32, i32 }

@DA732X_REG_PLL_CTRL = common dso_local global i32 0, align 4
@DA732X_PLL_EN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DA732X_SRCCLK_MCLK = common dso_local global i32 0, align 4
@DA732X_PLL_BYPASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Cannot use PLL Bypass, invalid SYSCLK rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DA732X_1BYTE_SHIFT = common dso_local global i64 0, align 8
@DA732X_U8_MASK = common dso_local global i64 0, align 8
@DA732X_REG_PLL_DIV_LO = common dso_local global i32 0, align 4
@DA732X_REG_PLL_DIV_MID = common dso_local global i32 0, align 4
@DA732X_REG_PLL_DIV_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @da732x_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da732x_set_dai_pll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.da732x_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %20 = call %struct.da732x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.da732x_priv* %20, %struct.da732x_priv** %12, align 8
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %25 = load i32, i32* @DA732X_REG_PLL_CTRL, align 4
  %26 = load i32, i32* @DA732X_PLL_EN, align 4
  %27 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %24, i32 %25, i32 %26, i32 0)
  %28 = load %struct.da732x_priv*, %struct.da732x_priv** %12, align 8
  %29 = getelementptr inbounds %struct.da732x_priv, %struct.da732x_priv* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  store i32 0, i32* %6, align 4
  br label %114

30:                                               ; preds = %5
  %31 = load %struct.da732x_priv*, %struct.da732x_priv** %12, align 8
  %32 = getelementptr inbounds %struct.da732x_priv, %struct.da732x_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %114

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @DA732X_SRCCLK_MCLK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load %struct.da732x_priv*, %struct.da732x_priv** %12, align 8
  %44 = getelementptr inbounds %struct.da732x_priv, %struct.da732x_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %51 [
    i32 11290000, label %46
    i32 12288000, label %46
    i32 22580000, label %46
    i32 24576000, label %46
    i32 45160000, label %46
    i32 49152000, label %46
  ]

46:                                               ; preds = %42, %42, %42, %42, %42, %42
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %48 = load i32, i32* @DA732X_REG_PLL_CTRL, align 4
  %49 = load i32, i32* @DA732X_PLL_BYPASS, align 4
  %50 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %47, i32 %48, i32 %49)
  store i32 0, i32* %6, align 4
  br label %114

51:                                               ; preds = %42
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %53 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %114

58:                                               ; preds = %38
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %60 = load %struct.da732x_priv*, %struct.da732x_priv** %12, align 8
  %61 = getelementptr inbounds %struct.da732x_priv, %struct.da732x_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @da732x_get_input_div(%struct.snd_soc_component* %59, i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %6, align 4
  br label %114

68:                                               ; preds = %58
  %69 = load %struct.da732x_priv*, %struct.da732x_priv** %12, align 8
  %70 = getelementptr inbounds %struct.da732x_priv, %struct.da732x_priv* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %14, align 4
  %73 = sdiv i32 %71, %72
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %13, align 4
  %76 = udiv i32 %74, %75
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %13, align 4
  %79 = urem i32 %77, %78
  %80 = zext i32 %79 to i64
  %81 = mul i64 %80, 8192
  store i64 %81, i64* %18, align 8
  %82 = load i64, i64* %18, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @do_div(i64 %82, i32 %83)
  %85 = load i64, i64* %18, align 8
  %86 = load i64, i64* @DA732X_1BYTE_SHIFT, align 8
  %87 = lshr i64 %85, %86
  %88 = load i64, i64* @DA732X_U8_MASK, align 8
  %89 = and i64 %87, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %16, align 4
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* @DA732X_U8_MASK, align 8
  %93 = and i64 %91, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %15, align 4
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %96 = load i32, i32* @DA732X_REG_PLL_DIV_LO, align 4
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %95, i32 %96, i32 %97)
  %99 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %100 = load i32, i32* @DA732X_REG_PLL_DIV_MID, align 4
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %99, i32 %100, i32 %101)
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %104 = load i32, i32* @DA732X_REG_PLL_DIV_HI, align 4
  %105 = load i32, i32* %17, align 4
  %106 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %103, i32 %104, i32 %105)
  %107 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %108 = load i32, i32* @DA732X_REG_PLL_CTRL, align 4
  %109 = load i32, i32* @DA732X_PLL_EN, align 4
  %110 = load i32, i32* @DA732X_PLL_EN, align 4
  %111 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %107, i32 %108, i32 %109, i32 %110)
  %112 = load %struct.da732x_priv*, %struct.da732x_priv** %12, align 8
  %113 = getelementptr inbounds %struct.da732x_priv, %struct.da732x_priv* %112, i32 0, i32 0
  store i32 1, i32* %113, align 4
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %68, %66, %51, %46, %35, %23
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local %struct.da732x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @da732x_get_input_div(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
