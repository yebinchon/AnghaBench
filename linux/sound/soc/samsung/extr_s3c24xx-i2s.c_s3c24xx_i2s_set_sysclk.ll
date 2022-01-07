; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c24xx-i2s.c_s3c24xx_i2s_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c24xx-i2s.c_s3c24xx_i2s_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.snd_soc_dai = type { i32 }

@s3c24xx_i2s = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@S3C2410_IISMOD = common dso_local global i64 0, align 8
@S3C2440_IISMOD_MPLL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @s3c24xx_i2s_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_i2s_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 0), align 8
  %12 = load i64, i64* @S3C2410_IISMOD, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @S3C2440_IISMOD_MPLL, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %10, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %25 [
    i32 128, label %20
    i32 129, label %21
  ]

20:                                               ; preds = %4
  br label %28

21:                                               ; preds = %4
  %22 = load i32, i32* @S3C2440_IISMOD_MPLL, align 4
  %23 = load i32, i32* %10, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %10, align 4
  br label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %34

28:                                               ; preds = %21, %20
  %29 = load i32, i32* %10, align 4
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 0), align 8
  %31 = load i64, i64* @S3C2410_IISMOD, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %29, i64 %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
