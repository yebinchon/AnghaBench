; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_aif_cfg_changed.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_aif_cfg_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@MADERA_AIF_BCLK_CTRL = common dso_local global i64 0, align 8
@MADERA_AIF1_BCLK_FREQ_MASK = common dso_local global i32 0, align 4
@MADERA_AIF_RX_BCLK_RATE = common dso_local global i64 0, align 8
@MADERA_AIF1RX_BCPF_MASK = common dso_local global i32 0, align 4
@MADERA_AIF_FRAME_CTRL_1 = common dso_local global i64 0, align 8
@MADERA_AIF1TX_WL_MASK = common dso_local global i32 0, align 4
@MADERA_AIF1TX_SLOT_LEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @madera_aif_cfg_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_aif_cfg_changed(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @MADERA_AIF_BCLK_CTRL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @snd_soc_component_read(%struct.snd_soc_component* %14, i64 %18, i32* %12)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %70

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @MADERA_AIF1_BCLK_FREQ_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %70

31:                                               ; preds = %24
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @MADERA_AIF_RX_BCLK_RATE, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @snd_soc_component_read(%struct.snd_soc_component* %32, i64 %36, i32* %12)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %6, align 4
  br label %70

42:                                               ; preds = %31
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @MADERA_AIF1RX_BCPF_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 1, i32* %6, align 4
  br label %70

49:                                               ; preds = %42
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @MADERA_AIF_FRAME_CTRL_1, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @snd_soc_component_read(%struct.snd_soc_component* %50, i64 %54, i32* %12)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %6, align 4
  br label %70

60:                                               ; preds = %49
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @MADERA_AIF1TX_WL_MASK, align 4
  %64 = load i32, i32* @MADERA_AIF1TX_SLOT_LEN_MASK, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %61, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 1, i32* %6, align 4
  br label %70

69:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %68, %58, %48, %40, %30, %22
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @snd_soc_component_read(%struct.snd_soc_component*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
