; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_dai_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_dai_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max98090_priv = type { i32, i32, i32 }

@system_power_efficient_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @max98090_dai_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98090_dai_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.max98090_priv*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %7, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %13 = call %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.max98090_priv* %13, %struct.max98090_priv** %8, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %47 [
    i32 130, label %15
    i32 131, label %15
    i32 132, label %15
    i32 129, label %32
    i32 128, label %32
    i32 133, label %32
  ]

15:                                               ; preds = %3, %3, %3
  %16 = load %struct.max98090_priv*, %struct.max98090_priv** %8, align 8
  %17 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %15
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* @system_power_efficient_wq, align 4
  %27 = load %struct.max98090_priv*, %struct.max98090_priv** %8, align 8
  %28 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %27, i32 0, i32 2
  %29 = call i32 @msecs_to_jiffies(i32 10)
  %30 = call i32 @queue_delayed_work(i32 %26, i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %20, %15
  br label %48

32:                                               ; preds = %3, %3, %3
  %33 = load %struct.max98090_priv*, %struct.max98090_priv** %8, align 8
  %34 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %39 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.max98090_priv*, %struct.max98090_priv** %8, align 8
  %44 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %43, i32 0, i32 0
  %45 = call i32 @schedule_work(i32* %44)
  br label %46

46:                                               ; preds = %42, %37, %32
  br label %48

47:                                               ; preds = %3
  br label %48

48:                                               ; preds = %47, %46, %31
  ret i32 0
}

declare dso_local %struct.max98090_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
