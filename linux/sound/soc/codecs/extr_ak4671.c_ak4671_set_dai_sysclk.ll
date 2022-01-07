; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4671.c_ak4671_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4671.c_ak4671_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@AK4671_PLL_MODE_SELECT0 = common dso_local global i32 0, align 4
@AK4671_PLL = common dso_local global i32 0, align 4
@AK4671_PLL_11_2896MHZ = common dso_local global i32 0, align 4
@AK4671_PLL_12MHZ = common dso_local global i32 0, align 4
@AK4671_PLL_12_288MHZ = common dso_local global i32 0, align 4
@AK4671_PLL_13MHZ = common dso_local global i32 0, align 4
@AK4671_PLL_13_5MHZ = common dso_local global i32 0, align 4
@AK4671_PLL_19_2MHZ = common dso_local global i32 0, align 4
@AK4671_PLL_24MHZ = common dso_local global i32 0, align 4
@AK4671_PLL_26MHZ = common dso_local global i32 0, align 4
@AK4671_PLL_27MHZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @ak4671_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4671_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %10, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %16 = load i32, i32* @AK4671_PLL_MODE_SELECT0, align 4
  %17 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @AK4671_PLL, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %11, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %59 [
    i32 11289600, label %23
    i32 12000000, label %27
    i32 12288000, label %31
    i32 13000000, label %35
    i32 13500000, label %39
    i32 19200000, label %43
    i32 24000000, label %47
    i32 26000000, label %51
    i32 27000000, label %55
  ]

23:                                               ; preds = %4
  %24 = load i32, i32* @AK4671_PLL_11_2896MHZ, align 4
  %25 = load i32, i32* %11, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %11, align 4
  br label %62

27:                                               ; preds = %4
  %28 = load i32, i32* @AK4671_PLL_12MHZ, align 4
  %29 = load i32, i32* %11, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %11, align 4
  br label %62

31:                                               ; preds = %4
  %32 = load i32, i32* @AK4671_PLL_12_288MHZ, align 4
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  br label %62

35:                                               ; preds = %4
  %36 = load i32, i32* @AK4671_PLL_13MHZ, align 4
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %11, align 4
  br label %62

39:                                               ; preds = %4
  %40 = load i32, i32* @AK4671_PLL_13_5MHZ, align 4
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %11, align 4
  br label %62

43:                                               ; preds = %4
  %44 = load i32, i32* @AK4671_PLL_19_2MHZ, align 4
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %62

47:                                               ; preds = %4
  %48 = load i32, i32* @AK4671_PLL_24MHZ, align 4
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %11, align 4
  br label %62

51:                                               ; preds = %4
  %52 = load i32, i32* @AK4671_PLL_26MHZ, align 4
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  br label %62

55:                                               ; preds = %4
  %56 = load i32, i32* @AK4671_PLL_27MHZ, align 4
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %11, align 4
  br label %62

59:                                               ; preds = %4
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %67

62:                                               ; preds = %55, %51, %47, %43, %39, %35, %31, %27, %23
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %64 = load i32, i32* @AK4671_PLL_MODE_SELECT0, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %63, i32 %64, i32 %65)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %62, %59
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
