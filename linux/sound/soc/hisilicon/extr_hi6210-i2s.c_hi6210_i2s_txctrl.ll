; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/hisilicon/extr_hi6210-i2s.c_hi6210_i2s_txctrl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/hisilicon/extr_hi6210-i2s.c_hi6210_i2s_txctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.hi6210_i2s = type { i32 }

@HII2S_I2S_CFG = common dso_local global i32 0, align 4
@HII2S_I2S_CFG__S2_IF_TX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dai*, i32)* @hi6210_i2s_txctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hi6210_i2s_txctrl(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hi6210_i2s*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.hi6210_i2s* @dev_get_drvdata(i32 %9)
  store %struct.hi6210_i2s* %10, %struct.hi6210_i2s** %5, align 8
  %11 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %5, align 8
  %12 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %5, align 8
  %18 = load i32, i32* @HII2S_I2S_CFG, align 4
  %19 = call i32 @hi6210_read_reg(%struct.hi6210_i2s* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @HII2S_I2S_CFG__S2_IF_TX_EN, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %5, align 8
  %24 = load i32, i32* @HII2S_I2S_CFG, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @hi6210_write_reg(%struct.hi6210_i2s* %23, i32 %24, i32 %25)
  br label %39

27:                                               ; preds = %2
  %28 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %5, align 8
  %29 = load i32, i32* @HII2S_I2S_CFG, align 4
  %30 = call i32 @hi6210_read_reg(%struct.hi6210_i2s* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @HII2S_I2S_CFG__S2_IF_TX_EN, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %5, align 8
  %36 = load i32, i32* @HII2S_I2S_CFG, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @hi6210_write_reg(%struct.hi6210_i2s* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %27, %16
  %40 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %5, align 8
  %41 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  ret void
}

declare dso_local %struct.hi6210_i2s* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hi6210_read_reg(%struct.hi6210_i2s*, i32) #1

declare dso_local i32 @hi6210_write_reg(%struct.hi6210_i2s*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
