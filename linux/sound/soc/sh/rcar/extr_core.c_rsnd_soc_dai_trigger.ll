; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_soc_dai_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_soc_dai_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_dai = type { i32 }
%struct.rsnd_dai_stream = type { i32 }

@init = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@irq = common dso_local global i32 0, align 4
@stop = common dso_local global i32 0, align 4
@quit = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @rsnd_soc_dai_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_soc_dai_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.rsnd_priv*, align 8
  %8 = alloca %struct.rsnd_dai*, align 8
  %9 = alloca %struct.rsnd_dai_stream*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = call %struct.rsnd_priv* @rsnd_dai_to_priv(%struct.snd_soc_dai* %12)
  store %struct.rsnd_priv* %13, %struct.rsnd_priv** %7, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %15 = call %struct.rsnd_dai* @rsnd_dai_to_rdai(%struct.snd_soc_dai* %14)
  store %struct.rsnd_dai* %15, %struct.rsnd_dai** %8, align 8
  %16 = load %struct.rsnd_dai*, %struct.rsnd_dai** %8, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %18 = call %struct.rsnd_dai_stream* @rsnd_rdai_to_io(%struct.rsnd_dai* %16, %struct.snd_pcm_substream* %17)
  store %struct.rsnd_dai_stream* %18, %struct.rsnd_dai_stream** %9, align 8
  %19 = load %struct.rsnd_priv*, %struct.rsnd_priv** %7, align 8
  %20 = getelementptr inbounds %struct.rsnd_priv, %struct.rsnd_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %66 [
    i32 130, label %24
    i32 131, label %24
    i32 129, label %49
    i32 128, label %49
  ]

24:                                               ; preds = %3, %3
  %25 = load i32, i32* @init, align 4
  %26 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %9, align 8
  %27 = load %struct.rsnd_priv*, %struct.rsnd_priv** %7, align 8
  %28 = call i32 (i32, %struct.rsnd_dai_stream*, %struct.rsnd_priv*, ...) @rsnd_dai_call(i32 %25, %struct.rsnd_dai_stream* %26, %struct.rsnd_priv* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %70

32:                                               ; preds = %24
  %33 = load i32, i32* @start, align 4
  %34 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %9, align 8
  %35 = load %struct.rsnd_priv*, %struct.rsnd_priv** %7, align 8
  %36 = call i32 (i32, %struct.rsnd_dai_stream*, %struct.rsnd_priv*, ...) @rsnd_dai_call(i32 %33, %struct.rsnd_dai_stream* %34, %struct.rsnd_priv* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %70

40:                                               ; preds = %32
  %41 = load i32, i32* @irq, align 4
  %42 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %9, align 8
  %43 = load %struct.rsnd_priv*, %struct.rsnd_priv** %7, align 8
  %44 = call i32 (i32, %struct.rsnd_dai_stream*, %struct.rsnd_priv*, ...) @rsnd_dai_call(i32 %41, %struct.rsnd_dai_stream* %42, %struct.rsnd_priv* %43, i32 1)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %70

48:                                               ; preds = %40
  br label %69

49:                                               ; preds = %3, %3
  %50 = load i32, i32* @irq, align 4
  %51 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %9, align 8
  %52 = load %struct.rsnd_priv*, %struct.rsnd_priv** %7, align 8
  %53 = call i32 (i32, %struct.rsnd_dai_stream*, %struct.rsnd_priv*, ...) @rsnd_dai_call(i32 %50, %struct.rsnd_dai_stream* %51, %struct.rsnd_priv* %52, i32 0)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* @stop, align 4
  %55 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %9, align 8
  %56 = load %struct.rsnd_priv*, %struct.rsnd_priv** %7, align 8
  %57 = call i32 (i32, %struct.rsnd_dai_stream*, %struct.rsnd_priv*, ...) @rsnd_dai_call(i32 %54, %struct.rsnd_dai_stream* %55, %struct.rsnd_priv* %56)
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @quit, align 4
  %61 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %9, align 8
  %62 = load %struct.rsnd_priv*, %struct.rsnd_priv** %7, align 8
  %63 = call i32 (i32, %struct.rsnd_dai_stream*, %struct.rsnd_priv*, ...) @rsnd_dai_call(i32 %60, %struct.rsnd_dai_stream* %61, %struct.rsnd_priv* %62)
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  br label %69

66:                                               ; preds = %3
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %66, %49, %48
  br label %70

70:                                               ; preds = %69, %47, %39, %31
  %71 = load %struct.rsnd_priv*, %struct.rsnd_priv** %7, align 8
  %72 = getelementptr inbounds %struct.rsnd_priv, %struct.rsnd_priv* %71, i32 0, i32 0
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load i32, i32* %10, align 4
  ret i32 %75
}

declare dso_local %struct.rsnd_priv* @rsnd_dai_to_priv(%struct.snd_soc_dai*) #1

declare dso_local %struct.rsnd_dai* @rsnd_dai_to_rdai(%struct.snd_soc_dai*) #1

declare dso_local %struct.rsnd_dai_stream* @rsnd_rdai_to_io(%struct.rsnd_dai*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rsnd_dai_call(i32, %struct.rsnd_dai_stream*, %struct.rsnd_priv*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
