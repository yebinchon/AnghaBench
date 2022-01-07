; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@RT5651_PLL_MODE_1 = common dso_local global i32 0, align 4
@RT5651_D_MISC = common dso_local global i32 0, align 4
@RT5651_PWR_ANLG1 = common dso_local global i32 0, align 4
@RT5651_PWR_VREF1 = common dso_local global i32 0, align 4
@RT5651_PWR_MB = common dso_local global i32 0, align 4
@RT5651_PWR_BG = common dso_local global i32 0, align 4
@RT5651_PWR_VREF2 = common dso_local global i32 0, align 4
@RT5651_PWR_FV1 = common dso_local global i32 0, align 4
@RT5651_PWR_FV2 = common dso_local global i32 0, align 4
@RT5651_PWR_DIG1 = common dso_local global i32 0, align 4
@RT5651_PWR_DIG2 = common dso_local global i32 0, align 4
@RT5651_PWR_VOL = common dso_local global i32 0, align 4
@RT5651_PWR_MIXER = common dso_local global i32 0, align 4
@RT5651_PWR_LDO_DVO_MASK = common dso_local global i32 0, align 4
@RT5651_PWR_ANLG2 = common dso_local global i32 0, align 4
@RT5651_PWR_PLL = common dso_local global i32 0, align 4
@RT5651_PWR_JD_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5651_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5651_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %86 [
    i32 129, label %6
    i32 128, label %22
    i32 130, label %58
  ]

6:                                                ; preds = %2
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %7)
  %9 = icmp eq i32 128, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = load i32, i32* @RT5651_PLL_MODE_1, align 4
  %13 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %11, i32 %12)
  %14 = and i32 %13, 37376
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = load i32, i32* @RT5651_D_MISC, align 4
  %19 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %17, i32 %18, i32 3072, i32 3072)
  br label %20

20:                                               ; preds = %16, %10
  br label %21

21:                                               ; preds = %20, %6
  br label %87

22:                                               ; preds = %2
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %24 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %23)
  %25 = icmp eq i32 130, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %28 = load i32, i32* @RT5651_PWR_ANLG1, align 4
  %29 = load i32, i32* @RT5651_PWR_VREF1, align 4
  %30 = load i32, i32* @RT5651_PWR_MB, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @RT5651_PWR_BG, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @RT5651_PWR_VREF2, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @RT5651_PWR_VREF1, align 4
  %37 = load i32, i32* @RT5651_PWR_MB, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @RT5651_PWR_BG, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @RT5651_PWR_VREF2, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %27, i32 %28, i32 %35, i32 %42)
  %44 = call i32 @usleep_range(i32 10000, i32 15000)
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %46 = load i32, i32* @RT5651_PWR_ANLG1, align 4
  %47 = load i32, i32* @RT5651_PWR_FV1, align 4
  %48 = load i32, i32* @RT5651_PWR_FV2, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @RT5651_PWR_FV1, align 4
  %51 = load i32, i32* @RT5651_PWR_FV2, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %45, i32 %46, i32 %49, i32 %52)
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %55 = load i32, i32* @RT5651_D_MISC, align 4
  %56 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %54, i32 %55, i32 1, i32 1)
  br label %57

57:                                               ; preds = %26, %22
  br label %87

58:                                               ; preds = %2
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %60 = load i32, i32* @RT5651_D_MISC, align 4
  %61 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %59, i32 %60, i32 16)
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %63 = load i32, i32* @RT5651_PWR_DIG1, align 4
  %64 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %62, i32 %63, i32 0)
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %66 = load i32, i32* @RT5651_PWR_DIG2, align 4
  %67 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %65, i32 %66, i32 0)
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %69 = load i32, i32* @RT5651_PWR_VOL, align 4
  %70 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %68, i32 %69, i32 0)
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %72 = load i32, i32* @RT5651_PWR_MIXER, align 4
  %73 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %71, i32 %72, i32 0)
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %75 = load i32, i32* @RT5651_PWR_ANLG1, align 4
  %76 = load i32, i32* @RT5651_PWR_LDO_DVO_MASK, align 4
  %77 = xor i32 %76, -1
  %78 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %74, i32 %75, i32 %77, i32 0)
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %80 = load i32, i32* @RT5651_PWR_ANLG2, align 4
  %81 = load i32, i32* @RT5651_PWR_PLL, align 4
  %82 = load i32, i32* @RT5651_PWR_JD_M, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %79, i32 %80, i32 %84, i32 0)
  br label %87

86:                                               ; preds = %2
  br label %87

87:                                               ; preds = %86, %58, %57, %21
  ret i32 0
}

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
