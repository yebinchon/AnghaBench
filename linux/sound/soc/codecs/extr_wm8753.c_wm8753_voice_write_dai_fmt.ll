; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8753.c_wm8753_voice_write_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8753.c_wm8753_voice_write_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8753_priv = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8753_voice_write_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8753_voice_write_dai_fmt(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8753_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.wm8753_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm8753_priv* %9, %struct.wm8753_priv** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.wm8753_priv*, %struct.wm8753_priv** %6, align 8
  %11 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

15:                                               ; preds = %2
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @wm8753_mode1v_set_dai_fmt(%struct.snd_soc_component* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %32

23:                                               ; preds = %15
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @wm8753_pcm_set_dai_fmt(%struct.snd_soc_component* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %29, %21, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.wm8753_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @wm8753_mode1v_set_dai_fmt(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @wm8753_pcm_set_dai_fmt(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
