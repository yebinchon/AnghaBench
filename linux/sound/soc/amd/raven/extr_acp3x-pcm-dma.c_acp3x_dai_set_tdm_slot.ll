; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp3x_dai_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp3x_dai_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.i2s_dev_data = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@mmACP_BTTDM_ITER = common dso_local global i64 0, align 8
@mmACP_BTTDM_IRER = common dso_local global i64 0, align 8
@FRM_LEN = common dso_local global i32 0, align 4
@mmACP_BTTDM_TXFRMT = common dso_local global i64 0, align 8
@mmACP_BTTDM_RXFRMT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @acp3x_dai_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acp3x_dai_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.i2s_dev_data*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = call %struct.i2s_dev_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %15)
  store %struct.i2s_dev_data* %16, %struct.i2s_dev_data** %14, align 8
  %17 = load i32, i32* %11, align 4
  switch i32 %17, label %22 [
    i32 128, label %18
    i32 131, label %19
    i32 130, label %20
    i32 129, label %21
  ]

18:                                               ; preds = %5
  store i32 8, i32* %13, align 4
  br label %25

19:                                               ; preds = %5
  store i32 16, i32* %13, align 4
  br label %25

20:                                               ; preds = %5
  store i32 24, i32* %13, align 4
  br label %25

21:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %78

25:                                               ; preds = %21, %20, %19, %18
  %26 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %14, align 8
  %27 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @mmACP_BTTDM_ITER, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @rv_readl(i64 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = or i32 %32, 2
  %34 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %14, align 8
  %35 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @mmACP_BTTDM_ITER, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @rv_writel(i32 %33, i64 %38)
  %40 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %14, align 8
  %41 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @mmACP_BTTDM_IRER, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @rv_readl(i64 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = or i32 %46, 2
  %48 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %14, align 8
  %49 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @mmACP_BTTDM_IRER, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @rv_writel(i32 %47, i64 %52)
  %54 = load i32, i32* @FRM_LEN, align 4
  %55 = load i32, i32* %10, align 4
  %56 = shl i32 %55, 15
  %57 = or i32 %54, %56
  %58 = load i32, i32* %13, align 4
  %59 = shl i32 %58, 18
  %60 = or i32 %57, %59
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %14, align 8
  %63 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @mmACP_BTTDM_TXFRMT, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @rv_writel(i32 %61, i64 %66)
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %14, align 8
  %70 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @mmACP_BTTDM_RXFRMT, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @rv_writel(i32 %68, i64 %73)
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.i2s_dev_data*, %struct.i2s_dev_data** %14, align 8
  %77 = getelementptr inbounds %struct.i2s_dev_data, %struct.i2s_dev_data* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %25, %22
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local %struct.i2s_dev_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @rv_readl(i64) #1

declare dso_local i32 @rv_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
