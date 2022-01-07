; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mc13783.c_mc13783_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mc13783.c_mc13783_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@AUDIO_BCL_INV = common dso_local global i32 0, align 4
@AUDIO_CFS_INV = common dso_local global i32 0, align 4
@AUDIO_CSM = common dso_local global i32 0, align 4
@AUDIO_C_CLK_EN = common dso_local global i32 0, align 4
@AUDIO_C_RESET = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32)* @mc13783_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13783_set_fmt(%struct.snd_soc_dai* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = call i32 @AUDIO_CFS(i32 3)
  %15 = load i32, i32* @AUDIO_BCL_INV, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @AUDIO_CFS_INV, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @AUDIO_CSM, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @AUDIO_C_CLK_EN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @AUDIO_C_RESET, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %36 [
    i32 132, label %28
    i32 133, label %32
  ]

28:                                               ; preds = %3
  %29 = call i32 @AUDIO_CFS(i32 2)
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %39

32:                                               ; preds = %3
  %33 = call i32 @AUDIO_CFS(i32 1)
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %82

39:                                               ; preds = %32, %28
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %42 = and i32 %40, %41
  switch i32 %42, label %58 [
    i32 128, label %43
    i32 129, label %47
    i32 130, label %53
    i32 131, label %54
  ]

43:                                               ; preds = %39
  %44 = load i32, i32* @AUDIO_BCL_INV, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %58

47:                                               ; preds = %39
  %48 = load i32, i32* @AUDIO_BCL_INV, align 4
  %49 = load i32, i32* @AUDIO_CFS_INV, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %58

53:                                               ; preds = %39
  br label %58

54:                                               ; preds = %39
  %55 = load i32, i32* @AUDIO_CFS_INV, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %39, %54, %53, %47, %43
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %61 = and i32 %59, %60
  switch i32 %61, label %73 [
    i32 137, label %62
    i32 134, label %66
    i32 136, label %70
    i32 135, label %70
  ]

62:                                               ; preds = %58
  %63 = load i32, i32* @AUDIO_C_CLK_EN, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %73

66:                                               ; preds = %58
  %67 = load i32, i32* @AUDIO_CSM, align 4
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %73

70:                                               ; preds = %58, %58
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %82

73:                                               ; preds = %58, %66, %62
  %74 = load i32, i32* @AUDIO_C_RESET, align 4
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %77, i32 %78, i32 %79, i32 %80)
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %73, %70, %36
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @AUDIO_CFS(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
