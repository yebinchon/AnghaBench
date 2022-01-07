; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_lm49453.c_lm49453_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_lm49453.c_lm49453_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@LM49453_AUDIO_PORT1_BASIC_SYNC_MS = common dso_local global i32 0, align 4
@LM49453_AUDIO_PORT1_BASIC_CLK_MS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@LM49453_P0_AUDIO_PORT1_BASIC_REG = common dso_local global i32 0, align 4
@LM49453_AUDIO_PORT1_BASIC_FMT_MASK = common dso_local global i32 0, align 4
@LM49453_P0_AUDIO_PORT1_RX_MSB_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @lm49453_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm49453_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %26 [
    i32 131, label %17
    i32 132, label %18
    i32 133, label %20
    i32 134, label %22
  ]

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load i32, i32* @LM49453_AUDIO_PORT1_BASIC_SYNC_MS, align 4
  store i32 %19, i32* %7, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load i32, i32* @LM49453_AUDIO_PORT1_BASIC_CLK_MS, align 4
  store i32 %21, i32* %7, align 4
  br label %29

22:                                               ; preds = %2
  %23 = load i32, i32* @LM49453_AUDIO_PORT1_BASIC_CLK_MS, align 4
  %24 = load i32, i32* @LM49453_AUDIO_PORT1_BASIC_SYNC_MS, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %7, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %57

29:                                               ; preds = %22, %20, %18, %17
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %36 [
    i32 128, label %33
    i32 130, label %34
    i32 129, label %35
  ]

33:                                               ; preds = %29
  br label %39

34:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  store i32 32, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %39

35:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  store i32 32, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %57

39:                                               ; preds = %35, %34, %33
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %41 = load i32, i32* @LM49453_P0_AUDIO_PORT1_BASIC_REG, align 4
  %42 = load i32, i32* @LM49453_AUDIO_PORT1_BASIC_FMT_MASK, align 4
  %43 = call i32 @BIT(i32 0)
  %44 = or i32 %42, %43
  %45 = call i32 @BIT(i32 5)
  %46 = or i32 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i32 %41, i32 %46, i32 %51)
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %54 = load i32, i32* @LM49453_P0_AUDIO_PORT1_RX_MSB_REG, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %53, i32 %54, i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %39, %36, %26
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
