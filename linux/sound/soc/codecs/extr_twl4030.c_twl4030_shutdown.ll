; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.twl4030_priv = type { i64, %struct.snd_pcm_substream*, %struct.snd_pcm_substream* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @twl4030_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl4030_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.twl4030_priv*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %5, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %11 = call %struct.twl4030_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.twl4030_priv* %11, %struct.twl4030_priv** %6, align 8
  %12 = load %struct.twl4030_priv*, %struct.twl4030_priv** %6, align 8
  %13 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %12, i32 0, i32 1
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = icmp eq %struct.snd_pcm_substream* %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.twl4030_priv*, %struct.twl4030_priv** %6, align 8
  %19 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %18, i32 0, i32 2
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, align 8
  %21 = load %struct.twl4030_priv*, %struct.twl4030_priv** %6, align 8
  %22 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %21, i32 0, i32 1
  store %struct.snd_pcm_substream* %20, %struct.snd_pcm_substream** %22, align 8
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.twl4030_priv*, %struct.twl4030_priv** %6, align 8
  %25 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %24, i32 0, i32 2
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %25, align 8
  %26 = load %struct.twl4030_priv*, %struct.twl4030_priv** %6, align 8
  %27 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %26, i32 0, i32 1
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %27, align 8
  %29 = icmp ne %struct.snd_pcm_substream* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load %struct.twl4030_priv*, %struct.twl4030_priv** %6, align 8
  %32 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %46

33:                                               ; preds = %23
  %34 = load %struct.twl4030_priv*, %struct.twl4030_priv** %6, align 8
  %35 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %34, i32 0, i32 1
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %35, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load %struct.twl4030_priv*, %struct.twl4030_priv** %6, align 8
  %44 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %33
  br label %46

46:                                               ; preds = %45, %30
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @twl4030_tdm_enable(%struct.snd_soc_component* %54, i32 %57, i32 0)
  br label %59

59:                                               ; preds = %53, %46
  ret void
}

declare dso_local %struct.twl4030_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @twl4030_tdm_enable(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
