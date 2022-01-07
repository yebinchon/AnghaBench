; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_i2s_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_i2s_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.samsung_i2s_priv = type { i32, i32 }
%struct.i2s_dai = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@DAI_OPENED = common dso_local global i32 0, align 4
@DAI_MANAGER = common dso_local global i32 0, align 4
@QUIRK_NEED_RSTCLR = common dso_local global i32 0, align 4
@CON_RSTCLR = common dso_local global i32 0, align 4
@I2SCON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @i2s_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2s_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
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
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pm_runtime_get_sync(i32 %17)
  %19 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %20 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %19, i32 0, i32 1
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* @DAI_OPENED, align 4
  %24 = load %struct.i2s_dai*, %struct.i2s_dai** %6, align 8
  %25 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.i2s_dai*, %struct.i2s_dai** %7, align 8
  %29 = call i64 @is_manager(%struct.i2s_dai* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load i32, i32* @DAI_MANAGER, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.i2s_dai*, %struct.i2s_dai** %6, align 8
  %35 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %44

38:                                               ; preds = %2
  %39 = load i32, i32* @DAI_MANAGER, align 4
  %40 = load %struct.i2s_dai*, %struct.i2s_dai** %6, align 8
  %41 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %31
  %45 = load %struct.i2s_dai*, %struct.i2s_dai** %6, align 8
  %46 = call i32 @any_active(%struct.i2s_dai* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %65, label %48

48:                                               ; preds = %44
  %49 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %50 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @QUIRK_NEED_RSTCLR, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = load i32, i32* @CON_RSTCLR, align 4
  %57 = load %struct.i2s_dai*, %struct.i2s_dai** %6, align 8
  %58 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @I2SCON, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %56, i64 %63)
  br label %65

65:                                               ; preds = %55, %48, %44
  %66 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %5, align 8
  %67 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %66, i32 0, i32 1
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  ret i32 0
}

declare dso_local %struct.samsung_i2s_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.i2s_dai* @to_info(%struct.snd_soc_dai*) #1

declare dso_local %struct.i2s_dai* @get_other_dai(%struct.i2s_dai*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @is_manager(%struct.i2s_dai*) #1

declare dso_local i32 @any_active(%struct.i2s_dai*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
