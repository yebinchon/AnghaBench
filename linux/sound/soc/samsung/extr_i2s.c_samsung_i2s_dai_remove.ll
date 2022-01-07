; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_samsung_i2s_dai_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_samsung_i2s_dai_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.samsung_i2s_priv = type { i32, i32, i64 }
%struct.i2s_dai = type { i32 }

@QUIRK_NEED_RSTCLR = common dso_local global i32 0, align 4
@I2SCON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @samsung_i2s_dai_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @samsung_i2s_dai_remove(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.samsung_i2s_priv*, align 8
  %4 = alloca %struct.i2s_dai*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %6 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %7 = call %struct.samsung_i2s_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %6)
  store %struct.samsung_i2s_priv* %7, %struct.samsung_i2s_priv** %3, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %9 = call %struct.i2s_dai* @to_info(%struct.snd_soc_dai* %8)
  store %struct.i2s_dai* %9, %struct.i2s_dai** %4, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pm_runtime_get_sync(i32 %12)
  %14 = load %struct.i2s_dai*, %struct.i2s_dai** %4, align 8
  %15 = call i32 @is_secondary(%struct.i2s_dai* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %40, label %17

17:                                               ; preds = %1
  %18 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %19 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @QUIRK_NEED_RSTCLR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %17
  %25 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %26 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %25, i32 0, i32 1
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %30 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @I2SCON, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 0, i64 %33)
  %35 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %36 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %35, i32 0, i32 1
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  br label %39

39:                                               ; preds = %24, %17
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pm_runtime_put(i32 %43)
  ret i32 0
}

declare dso_local %struct.samsung_i2s_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.i2s_dai* @to_info(%struct.snd_soc_dai*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @is_secondary(%struct.i2s_dai*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
