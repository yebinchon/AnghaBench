; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c24xx-i2s.c_s3c24xx_i2s_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c24xx-i2s.c_s3c24xx_i2s_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.snd_soc_dai = type { i32 }

@s3c24xx_i2s = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@S3C2410_IISMOD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"hw_params r: IISMOD: %x \0A\00", align 1
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@S3C2410_IISMOD_SLAVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@S3C2410_IISMOD_MSB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"hw_params w: IISMOD: %x \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @s3c24xx_i2s_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_i2s_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 0), align 8
  %8 = load i64, i64* @S3C2410_IISMOD, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %25 [
    i32 131, label %16
    i32 130, label %20
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @S3C2410_IISMOD_SLAVE, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load i32, i32* @S3C2410_IISMOD_SLAVE, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %52

28:                                               ; preds = %20, %16
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %41 [
    i32 128, label %32
    i32 129, label %36
  ]

32:                                               ; preds = %28
  %33 = load i32, i32* @S3C2410_IISMOD_MSB, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %44

36:                                               ; preds = %28
  %37 = load i32, i32* @S3C2410_IISMOD_MSB, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %44

41:                                               ; preds = %28
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %52

44:                                               ; preds = %36, %32
  %45 = load i32, i32* %6, align 4
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 0), align 8
  %47 = load i64, i64* @S3C2410_IISMOD, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %45, i64 %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %44, %41, %25
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
