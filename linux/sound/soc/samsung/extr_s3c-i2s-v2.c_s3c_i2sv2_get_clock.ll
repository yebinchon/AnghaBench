; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c-i2s-v2.c_s3c_i2sv2_get_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c-i2s-v2.c_s3c_i2sv2_get_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.s3c_i2sv2_info = type { %struct.clk*, %struct.clk*, i64 }

@S3C2412_IISMOD = common dso_local global i64 0, align 8
@S3C2412_IISMOD_IMS_SYSMUX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @s3c_i2sv2_get_clock(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.s3c_i2sv2_info*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %6 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %7 = call %struct.s3c_i2sv2_info* @to_info(%struct.snd_soc_dai* %6)
  store %struct.s3c_i2sv2_info* %7, %struct.s3c_i2sv2_info** %4, align 8
  %8 = load %struct.s3c_i2sv2_info*, %struct.s3c_i2sv2_info** %4, align 8
  %9 = getelementptr inbounds %struct.s3c_i2sv2_info, %struct.s3c_i2sv2_info* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @S3C2412_IISMOD, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @S3C2412_IISMOD_IMS_SYSMUX, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.s3c_i2sv2_info*, %struct.s3c_i2sv2_info** %4, align 8
  %20 = getelementptr inbounds %struct.s3c_i2sv2_info, %struct.s3c_i2sv2_info* %19, i32 0, i32 1
  %21 = load %struct.clk*, %struct.clk** %20, align 8
  store %struct.clk* %21, %struct.clk** %2, align 8
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.s3c_i2sv2_info*, %struct.s3c_i2sv2_info** %4, align 8
  %24 = getelementptr inbounds %struct.s3c_i2sv2_info, %struct.s3c_i2sv2_info* %23, i32 0, i32 0
  %25 = load %struct.clk*, %struct.clk** %24, align 8
  store %struct.clk* %25, %struct.clk** %2, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.clk*, %struct.clk** %2, align 8
  ret %struct.clk* %27
}

declare dso_local %struct.s3c_i2sv2_info* @to_info(%struct.snd_soc_dai*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
