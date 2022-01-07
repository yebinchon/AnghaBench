; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c-i2s-v2.c_s3c_i2sv2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c-i2s-v2.c_s3c_i2sv2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.device* }
%struct.device = type { i32 }
%struct.s3c_i2sv2_info = type { i64, i32, %struct.device* }

@.str = private unnamed_addr constant [4 x i8] c"iis\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get iis_clock\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@S3C2412_IISMOD = common dso_local global i64 0, align 8
@S3C2412_IISMOD_MODE_TXRX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c_i2sv2_probe(%struct.snd_soc_dai* %0, %struct.s3c_i2sv2_info* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.s3c_i2sv2_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store %struct.s3c_i2sv2_info* %1, %struct.s3c_i2sv2_info** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %8, align 8
  %13 = load %struct.device*, %struct.device** %8, align 8
  %14 = load %struct.s3c_i2sv2_info*, %struct.s3c_i2sv2_info** %6, align 8
  %15 = getelementptr inbounds %struct.s3c_i2sv2_info, %struct.s3c_i2sv2_info* %14, i32 0, i32 2
  store %struct.device* %13, %struct.device** %15, align 8
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %17 = load %struct.s3c_i2sv2_info*, %struct.s3c_i2sv2_info** %6, align 8
  %18 = call i32 @snd_soc_dai_set_drvdata(%struct.snd_soc_dai* %16, %struct.s3c_i2sv2_info* %17)
  %19 = load %struct.device*, %struct.device** %8, align 8
  %20 = call i32 @clk_get(%struct.device* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.s3c_i2sv2_info*, %struct.s3c_i2sv2_info** %6, align 8
  %22 = getelementptr inbounds %struct.s3c_i2sv2_info, %struct.s3c_i2sv2_info* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.s3c_i2sv2_info*, %struct.s3c_i2sv2_info** %6, align 8
  %24 = getelementptr inbounds %struct.s3c_i2sv2_info, %struct.s3c_i2sv2_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.device*, %struct.device** %8, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %58

33:                                               ; preds = %3
  %34 = load %struct.s3c_i2sv2_info*, %struct.s3c_i2sv2_info** %6, align 8
  %35 = getelementptr inbounds %struct.s3c_i2sv2_info, %struct.s3c_i2sv2_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @clk_prepare_enable(i32 %36)
  %38 = load %struct.s3c_i2sv2_info*, %struct.s3c_i2sv2_info** %6, align 8
  %39 = getelementptr inbounds %struct.s3c_i2sv2_info, %struct.s3c_i2sv2_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @S3C2412_IISMOD, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @S3C2412_IISMOD_MODE_TXRX, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.s3c_i2sv2_info*, %struct.s3c_i2sv2_info** %6, align 8
  %49 = getelementptr inbounds %struct.s3c_i2sv2_info, %struct.s3c_i2sv2_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @S3C2412_IISMOD, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  %54 = load %struct.s3c_i2sv2_info*, %struct.s3c_i2sv2_info** %6, align 8
  %55 = call i32 @s3c2412_snd_txctrl(%struct.s3c_i2sv2_info* %54, i32 0)
  %56 = load %struct.s3c_i2sv2_info*, %struct.s3c_i2sv2_info** %6, align 8
  %57 = call i32 @s3c2412_snd_rxctrl(%struct.s3c_i2sv2_info* %56, i32 0)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %33, %28
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @snd_soc_dai_set_drvdata(%struct.snd_soc_dai*, %struct.s3c_i2sv2_info*) #1

declare dso_local i32 @clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @s3c2412_snd_txctrl(%struct.s3c_i2sv2_info*, i32) #1

declare dso_local i32 @s3c2412_snd_rxctrl(%struct.s3c_i2sv2_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
