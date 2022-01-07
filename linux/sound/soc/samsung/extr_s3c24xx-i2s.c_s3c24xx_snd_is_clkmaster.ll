; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c24xx-i2s.c_s3c24xx_snd_is_clkmaster.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c24xx-i2s.c_s3c24xx_snd_is_clkmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@s3c24xx_i2s = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@S3C2410_IISMOD = common dso_local global i64 0, align 8
@S3C2410_IISMOD_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @s3c24xx_snd_is_clkmaster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_snd_is_clkmaster() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 0), align 8
  %2 = load i64, i64* @S3C2410_IISMOD, align 8
  %3 = add nsw i64 %1, %2
  %4 = call i32 @readl(i64 %3)
  %5 = load i32, i32* @S3C2410_IISMOD_SLAVE, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 0, i32 1
  ret i32 %9
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
