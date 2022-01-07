; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_report_headphone.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_report_headphone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm5100_priv = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Headphone detected\0A\00", align 1
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@WM5100_MIC_DETECT_1 = common dso_local global i32 0, align 4
@WM5100_ACCDET_RATE_MASK = common dso_local global i32 0, align 4
@WM5100_ACCDET_RATE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm5100_priv*)* @wm5100_report_headphone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm5100_report_headphone(%struct.wm5100_priv* %0) #0 {
  %2 = alloca %struct.wm5100_priv*, align 8
  store %struct.wm5100_priv* %0, %struct.wm5100_priv** %2, align 8
  %3 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %4 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @dev_dbg(i32 %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %8 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %10 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %13 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %14 = call i32 @snd_soc_jack_report(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %16 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WM5100_MIC_DETECT_1, align 4
  %19 = load i32, i32* @WM5100_ACCDET_RATE_MASK, align 4
  %20 = load i32, i32* @WM5100_ACCDET_RATE_SHIFT, align 4
  %21 = shl i32 7, %20
  %22 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 %19, i32 %21)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
