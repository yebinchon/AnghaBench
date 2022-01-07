; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_i2s_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_i2s_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.samsung_i2s_priv = type { i32 }
%struct.i2s_dai = type { i64, i64, i32 }

@DAI_OPENED = common dso_local global i32 0, align 4
@DAI_MANAGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @i2s_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2s_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.samsung_i2s_priv*, align 8
  %6 = alloca %struct.i2s_dai*, align 8
  %7 = alloca %struct.i2s_dai*, align 8
  %8 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = call %struct.samsung_i2s_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.samsung_i2s_priv* %10, %struct.samsung_i2s_priv** %5, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = call %struct.i2s_dai* @to_info(%struct.snd_soc_dai* %11)
  store %struct.i2s_dai* %12, %struct.i2s_dai** %6, align 8
  %13 = load %struct.i2s_dai*, %struct.i2s_dai** %6, align 8
  %14 = call %struct.i2s_dai* @get_other_dai(%struct.i2s_dai* %13)
  store %struct.i2s_dai* %14, %struct.i2s_dai** %7, align 8
  %15 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %16 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* @DAI_OPENED, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.i2s_dai*, %struct.i2s_dai** %6, align 8
  %22 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* @DAI_MANAGER, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.i2s_dai*, %struct.i2s_dai** %6, align 8
  %28 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.i2s_dai*, %struct.i2s_dai** %7, align 8
  %32 = call i64 @is_opened(%struct.i2s_dai* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load i32, i32* @DAI_MANAGER, align 4
  %36 = load %struct.i2s_dai*, %struct.i2s_dai** %7, align 8
  %37 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %34, %2
  %41 = load %struct.i2s_dai*, %struct.i2s_dai** %6, align 8
  %42 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.i2s_dai*, %struct.i2s_dai** %6, align 8
  %44 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %46 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %50 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pm_runtime_put(i32 %51)
  ret void
}

declare dso_local %struct.samsung_i2s_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.i2s_dai* @to_info(%struct.snd_soc_dai*) #1

declare dso_local %struct.i2s_dai* @get_other_dai(%struct.i2s_dai*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @is_opened(%struct.i2s_dai*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
