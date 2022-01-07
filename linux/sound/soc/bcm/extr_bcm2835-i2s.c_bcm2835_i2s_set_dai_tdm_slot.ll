; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/bcm/extr_bcm2835-i2s.c_bcm2835_i2s_set_dai_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/bcm/extr_bcm2835-i2s.c_bcm2835_i2s_set_dai_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.bcm2835_i2s_dev = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BCM2835_I2S_MAX_FRAME_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @bcm2835_i2s_set_dai_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_i2s_set_dai_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bcm2835_i2s_dev*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = call %struct.bcm2835_i2s_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.bcm2835_i2s_dev* %14, %struct.bcm2835_i2s_dev** %12, align 8
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %77

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @GENMASK(i32 %28, i32 0)
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %32, 1
  %34 = call i32 @GENMASK(i32 %33, i32 0)
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = call i32 @hweight_long(i64 %38)
  %40 = icmp ne i32 %39, 2
  br i1 %40, label %46, label %41

41:                                               ; preds = %26
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = call i32 @hweight_long(i64 %43)
  %45 = icmp ne i32 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %26
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %77

49:                                               ; preds = %41
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* @BCM2835_I2S_MAX_FRAME_LENGTH, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %77

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %5
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %12, align 8
  %62 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %12, align 8
  %65 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %12, align 8
  %68 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %12, align 8
  %71 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load %struct.bcm2835_i2s_dev*, %struct.bcm2835_i2s_dev** %12, align 8
  %76 = getelementptr inbounds %struct.bcm2835_i2s_dev, %struct.bcm2835_i2s_dev* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %59, %55, %46, %23
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local %struct.bcm2835_i2s_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @hweight_long(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
