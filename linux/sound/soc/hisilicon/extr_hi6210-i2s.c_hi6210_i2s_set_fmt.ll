; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/hisilicon/extr_hi6210-i2s.c_hi6210_i2s_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/hisilicon/extr_hi6210-i2s.c_hi6210_i2s_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.hi6210_i2s = type { i32, i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @hi6210_i2s_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi6210_i2s_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hi6210_i2s*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.hi6210_i2s* @dev_get_drvdata(i32 %9)
  store %struct.hi6210_i2s* %10, %struct.hi6210_i2s** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %15 [
    i32 132, label %14
    i32 131, label %14
  ]

14:                                               ; preds = %2, %2
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %23 [
    i32 130, label %22
    i32 129, label %22
    i32 128, label %22
  ]

22:                                               ; preds = %18, %18, %18
  br label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %39

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %29 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %31 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 131
  %36 = zext i1 %35 to i32
  %37 = load %struct.hi6210_i2s*, %struct.hi6210_i2s** %6, align 8
  %38 = getelementptr inbounds %struct.hi6210_i2s, %struct.hi6210_i2s* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %26, %23, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.hi6210_i2s* @dev_get_drvdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
