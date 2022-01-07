; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c24xx-i2s.c_s3c24xx_snd_rxctrl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c24xx-i2s.c_s3c24xx_snd_rxctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@s3c24xx_i2s = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@S3C2410_IISFCON = common dso_local global i64 0, align 8
@S3C2410_IISCON = common dso_local global i64 0, align 8
@S3C2410_IISMOD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"r: IISCON: %x IISMOD: %x IISFCON: %x\0A\00", align 1
@S3C2410_IISFCON_RXDMA = common dso_local global i32 0, align 4
@S3C2410_IISFCON_RXENABLE = common dso_local global i32 0, align 4
@S3C2410_IISCON_RXDMAEN = common dso_local global i32 0, align 4
@S3C2410_IISCON_IISEN = common dso_local global i32 0, align 4
@S3C2410_IISCON_RXIDLE = common dso_local global i32 0, align 4
@S3C2410_IISMOD_RXMODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"w: IISCON: %x IISMOD: %x IISFCON: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @s3c24xx_snd_rxctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_snd_rxctrl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 0), align 8
  %7 = load i64, i64* @S3C2410_IISFCON, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 0), align 8
  %11 = load i64, i64* @S3C2410_IISCON, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 0), align 8
  %15 = load i64, i64* @S3C2410_IISMOD, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %1
  %25 = load i32, i32* @S3C2410_IISFCON_RXDMA, align 4
  %26 = load i32, i32* @S3C2410_IISFCON_RXENABLE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @S3C2410_IISCON_RXDMAEN, align 4
  %31 = load i32, i32* @S3C2410_IISCON_IISEN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @S3C2410_IISCON_RXIDLE, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @S3C2410_IISMOD_RXMODE, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 0), align 8
  %44 = load i64, i64* @S3C2410_IISMOD, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %42, i64 %45)
  %47 = load i32, i32* %3, align 4
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 0), align 8
  %49 = load i64, i64* @S3C2410_IISFCON, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %47, i64 %50)
  %52 = load i32, i32* %4, align 4
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 0), align 8
  %54 = load i64, i64* @S3C2410_IISCON, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %52, i64 %55)
  br label %92

57:                                               ; preds = %1
  %58 = load i32, i32* @S3C2410_IISFCON_RXENABLE, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %3, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* @S3C2410_IISFCON_RXDMA, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %3, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* @S3C2410_IISCON_RXIDLE, align 4
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* @S3C2410_IISCON_RXDMAEN, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* @S3C2410_IISMOD_RXMODE, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %3, align 4
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 0), align 8
  %79 = load i64, i64* @S3C2410_IISFCON, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %77, i64 %80)
  %82 = load i32, i32* %4, align 4
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 0), align 8
  %84 = load i64, i64* @S3C2410_IISCON, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %82, i64 %85)
  %87 = load i32, i32* %5, align 4
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 0), align 8
  %89 = load i64, i64* @S3C2410_IISMOD, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %87, i64 %90)
  br label %92

92:                                               ; preds = %57, %24
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94, i32 %95)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
