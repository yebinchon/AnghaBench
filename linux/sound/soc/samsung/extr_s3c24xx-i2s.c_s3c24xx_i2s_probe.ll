; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c24xx-i2s.c_s3c24xx_i2s_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c24xx-i2s.c_s3c24xx_i2s_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.snd_soc_dai = type { i32 }

@s3c24xx_i2s_pcm_stereo_out = common dso_local global i32 0, align 4
@s3c24xx_i2s_pcm_stereo_in = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"iis\00", align 1
@s3c24xx_i2s = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get iis_clock\0A\00", align 1
@S3C_GPIO_PULL_NONE = common dso_local global i32 0, align 4
@S3C2410_IISCON_IISEN = common dso_local global i32 0, align 4
@S3C2410_IISCON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @s3c24xx_i2s_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_i2s_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %5 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %6 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %5, i32* @s3c24xx_i2s_pcm_stereo_out, i32* @s3c24xx_i2s_pcm_stereo_in)
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @devm_clk_get(i32 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 1), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 1), align 8
  %12 = call i64 @IS_ERR(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 1), align 8
  %17 = call i32 @PTR_ERR(i32 %16)
  store i32 %17, i32* %2, align 4
  br label %37

18:                                               ; preds = %1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 1), align 8
  %20 = call i32 @clk_prepare_enable(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %37

25:                                               ; preds = %18
  %26 = call i32 @S3C2410_GPE(i32 0)
  %27 = call i32 @S3C_GPIO_SFN(i32 2)
  %28 = load i32, i32* @S3C_GPIO_PULL_NONE, align 4
  %29 = call i32 @s3c_gpio_cfgall_range(i32 %26, i32 5, i32 %27, i32 %28)
  %30 = load i32, i32* @S3C2410_IISCON_IISEN, align 4
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 0), align 8
  %32 = load i64, i64* @S3C2410_IISCON, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %30, i64 %33)
  %35 = call i32 @s3c24xx_snd_txctrl(i32 0)
  %36 = call i32 @s3c24xx_snd_rxctrl(i32 0)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %25, %23, %14
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai*, i32*, i32*) #1

declare dso_local i32 @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @s3c_gpio_cfgall_range(i32, i32, i32, i32) #1

declare dso_local i32 @S3C2410_GPE(i32) #1

declare dso_local i32 @S3C_GPIO_SFN(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @s3c24xx_snd_txctrl(i32) #1

declare dso_local i32 @s3c24xx_snd_rxctrl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
