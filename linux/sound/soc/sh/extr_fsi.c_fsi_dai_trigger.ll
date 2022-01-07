; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_dai_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_dai_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.fsi_priv = type { i32 }
%struct.fsi_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @fsi_dai_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_dai_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.fsi_priv*, align 8
  %8 = alloca %struct.fsi_stream*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = call %struct.fsi_priv* @fsi_get_priv(%struct.snd_pcm_substream* %10)
  store %struct.fsi_priv* %11, %struct.fsi_priv** %7, align 8
  %12 = load %struct.fsi_priv*, %struct.fsi_priv** %7, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = call %struct.fsi_stream* @fsi_stream_get(%struct.fsi_priv* %12, %struct.snd_pcm_substream* %13)
  store %struct.fsi_stream* %14, %struct.fsi_stream** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %60 [
    i32 129, label %16
    i32 128, label %44
  ]

16:                                               ; preds = %3
  %17 = load %struct.fsi_priv*, %struct.fsi_priv** %7, align 8
  %18 = load %struct.fsi_stream*, %struct.fsi_stream** %8, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %20 = call i32 @fsi_stream_init(%struct.fsi_priv* %17, %struct.fsi_stream* %18, %struct.snd_pcm_substream* %19)
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.fsi_priv*, %struct.fsi_priv** %7, align 8
  %25 = load %struct.fsi_stream*, %struct.fsi_stream** %8, align 8
  %26 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @fsi_hw_startup(%struct.fsi_priv* %24, %struct.fsi_stream* %25, i32 %28)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %23, %16
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load %struct.fsi_priv*, %struct.fsi_priv** %7, align 8
  %35 = load %struct.fsi_stream*, %struct.fsi_stream** %8, align 8
  %36 = call i32 @fsi_stream_start(%struct.fsi_priv* %34, %struct.fsi_stream* %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load %struct.fsi_stream*, %struct.fsi_stream** %8, align 8
  %42 = call i32 @fsi_stream_transfer(%struct.fsi_stream* %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %40, %37
  br label %60

44:                                               ; preds = %3
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load %struct.fsi_priv*, %struct.fsi_priv** %7, align 8
  %49 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %50 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @fsi_hw_shutdown(%struct.fsi_priv* %48, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %47, %44
  %54 = load %struct.fsi_priv*, %struct.fsi_priv** %7, align 8
  %55 = load %struct.fsi_stream*, %struct.fsi_stream** %8, align 8
  %56 = call i32 @fsi_stream_stop(%struct.fsi_priv* %54, %struct.fsi_stream* %55)
  %57 = load %struct.fsi_priv*, %struct.fsi_priv** %7, align 8
  %58 = load %struct.fsi_stream*, %struct.fsi_stream** %8, align 8
  %59 = call i32 @fsi_stream_quit(%struct.fsi_priv* %57, %struct.fsi_stream* %58)
  br label %60

60:                                               ; preds = %3, %53, %43
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local %struct.fsi_priv* @fsi_get_priv(%struct.snd_pcm_substream*) #1

declare dso_local %struct.fsi_stream* @fsi_stream_get(%struct.fsi_priv*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @fsi_stream_init(%struct.fsi_priv*, %struct.fsi_stream*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @fsi_hw_startup(%struct.fsi_priv*, %struct.fsi_stream*, i32) #1

declare dso_local i32 @fsi_stream_start(%struct.fsi_priv*, %struct.fsi_stream*) #1

declare dso_local i32 @fsi_stream_transfer(%struct.fsi_stream*) #1

declare dso_local i32 @fsi_hw_shutdown(%struct.fsi_priv*, i32) #1

declare dso_local i32 @fsi_stream_stop(%struct.fsi_priv*, %struct.fsi_stream*) #1

declare dso_local i32 @fsi_stream_quit(%struct.fsi_priv*, %struct.fsi_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
