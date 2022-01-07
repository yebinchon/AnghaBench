; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_aif_cfg_changed.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_aif_cfg_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@ARIZONA_AIF_BCLK_CTRL = common dso_local global i64 0, align 8
@ARIZONA_AIF1_BCLK_FREQ_MASK = common dso_local global i32 0, align 4
@ARIZONA_AIF_TX_BCLK_RATE = common dso_local global i64 0, align 8
@ARIZONA_AIF1TX_BCPF_MASK = common dso_local global i32 0, align 4
@ARIZONA_AIF_FRAME_CTRL_1 = common dso_local global i64 0, align 8
@ARIZONA_AIF1TX_WL_MASK = common dso_local global i32 0, align 4
@ARIZONA_AIF1TX_SLOT_LEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @arizona_aif_cfg_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_aif_cfg_changed(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @ARIZONA_AIF_BCLK_CTRL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %13, i64 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @ARIZONA_AIF1_BCLK_FREQ_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %54

25:                                               ; preds = %5
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @ARIZONA_AIF_TX_BCLK_RATE, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %26, i64 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @ARIZONA_AIF1TX_BCPF_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store i32 1, i32* %6, align 4
  br label %54

38:                                               ; preds = %25
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @ARIZONA_AIF_FRAME_CTRL_1, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %39, i64 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @ARIZONA_AIF1TX_WL_MASK, align 4
  %48 = load i32, i32* @ARIZONA_AIF1TX_SLOT_LEN_MASK, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  store i32 1, i32* %6, align 4
  br label %54

53:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %52, %37, %24
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
