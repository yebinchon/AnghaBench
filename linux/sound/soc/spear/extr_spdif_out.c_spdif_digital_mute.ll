; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/spear/extr_spdif_out.c_spdif_digital_mute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/spear/extr_spdif_out.c_spdif_digital_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.spdif_out_dev = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SPDIF_OUT_CTRL = common dso_local global i64 0, align 8
@SPDIF_OPMODE_MASK = common dso_local global i32 0, align 4
@SPDIF_OPMODE_MUTE_PCM = common dso_local global i32 0, align 4
@SPDIF_OPMODE_AUD_DATA = common dso_local global i32 0, align 4
@SPDIF_STATE_NORMAL = common dso_local global i32 0, align 4
@SPDIF_OPMODE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @spdif_digital_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spdif_digital_mute(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spdif_out_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %8 = call %struct.spdif_out_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %7)
  store %struct.spdif_out_dev* %8, %struct.spdif_out_dev** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.spdif_out_dev*, %struct.spdif_out_dev** %5, align 8
  %11 = getelementptr inbounds %struct.spdif_out_dev, %struct.spdif_out_dev* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load %struct.spdif_out_dev*, %struct.spdif_out_dev** %5, align 8
  %14 = getelementptr inbounds %struct.spdif_out_dev, %struct.spdif_out_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SPDIF_OUT_CTRL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @SPDIF_OPMODE_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @SPDIF_OPMODE_MUTE_PCM, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %45

29:                                               ; preds = %2
  %30 = load %struct.spdif_out_dev*, %struct.spdif_out_dev** %5, align 8
  %31 = getelementptr inbounds %struct.spdif_out_dev, %struct.spdif_out_dev* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @SPDIF_OPMODE_AUD_DATA, align 4
  %36 = load i32, i32* @SPDIF_STATE_NORMAL, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %44

40:                                               ; preds = %29
  %41 = load i32, i32* @SPDIF_OPMODE_OFF, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %34
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.spdif_out_dev*, %struct.spdif_out_dev** %5, align 8
  %48 = getelementptr inbounds %struct.spdif_out_dev, %struct.spdif_out_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SPDIF_OUT_CTRL, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  ret i32 0
}

declare dso_local %struct.spdif_out_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
