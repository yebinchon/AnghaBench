; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_set_detect_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_set_detect_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm5100_priv = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.wm5100_jack_mode* }
%struct.wm5100_jack_mode = type { i32, i32, i32 }

@WM5100_ACCESSORY_DETECT_MODE_1 = common dso_local global i32 0, align 4
@WM5100_ACCDET_BIAS_SRC_MASK = common dso_local global i32 0, align 4
@WM5100_ACCDET_SRC = common dso_local global i32 0, align 4
@WM5100_ACCDET_BIAS_SRC_SHIFT = common dso_local global i32 0, align 4
@WM5100_ACCDET_SRC_SHIFT = common dso_local global i32 0, align 4
@WM5100_MISC_CONTROL = common dso_local global i32 0, align 4
@WM5100_HPCOM_SRC = common dso_local global i32 0, align 4
@WM5100_HPCOM_SRC_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Set microphone polarity to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm5100_priv*, i32)* @wm5100_set_detect_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm5100_set_detect_mode(%struct.wm5100_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.wm5100_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm5100_jack_mode*, align 8
  store %struct.wm5100_priv* %0, %struct.wm5100_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %7 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.wm5100_jack_mode*, %struct.wm5100_jack_mode** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.wm5100_jack_mode, %struct.wm5100_jack_mode* %9, i64 %11
  store %struct.wm5100_jack_mode* %12, %struct.wm5100_jack_mode** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %15 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.wm5100_jack_mode*, %struct.wm5100_jack_mode** %16, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.wm5100_jack_mode* %17)
  %19 = icmp sge i32 %13, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %73

24:                                               ; preds = %2
  %25 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %26 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wm5100_jack_mode*, %struct.wm5100_jack_mode** %5, align 8
  %30 = getelementptr inbounds %struct.wm5100_jack_mode, %struct.wm5100_jack_mode* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gpio_set_value_cansleep(i32 %28, i32 %31)
  %33 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %34 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @WM5100_ACCESSORY_DETECT_MODE_1, align 4
  %37 = load i32, i32* @WM5100_ACCDET_BIAS_SRC_MASK, align 4
  %38 = load i32, i32* @WM5100_ACCDET_SRC, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.wm5100_jack_mode*, %struct.wm5100_jack_mode** %5, align 8
  %41 = getelementptr inbounds %struct.wm5100_jack_mode, %struct.wm5100_jack_mode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @WM5100_ACCDET_BIAS_SRC_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load %struct.wm5100_jack_mode*, %struct.wm5100_jack_mode** %5, align 8
  %46 = getelementptr inbounds %struct.wm5100_jack_mode, %struct.wm5100_jack_mode* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @WM5100_ACCDET_SRC_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %44, %49
  %51 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %39, i32 %50)
  %52 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %53 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @WM5100_MISC_CONTROL, align 4
  %56 = load i32, i32* @WM5100_HPCOM_SRC, align 4
  %57 = load %struct.wm5100_jack_mode*, %struct.wm5100_jack_mode** %5, align 8
  %58 = getelementptr inbounds %struct.wm5100_jack_mode, %struct.wm5100_jack_mode* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @WM5100_HPCOM_SRC_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = call i32 @regmap_update_bits(i32 %54, i32 %55, i32 %56, i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %65 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %67 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %70 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_dbg(i32 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %24, %23
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.wm5100_jack_mode*) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
