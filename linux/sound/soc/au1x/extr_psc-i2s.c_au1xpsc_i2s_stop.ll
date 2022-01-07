; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xpsc_audio_data = type { i32 }

@PSC_I2SSTAT_TB = common dso_local global i64 0, align 8
@PSC_I2SSTAT_RB = common dso_local global i64 0, align 8
@PSC_CTRL_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au1xpsc_audio_data*, i32)* @au1xpsc_i2s_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_i2s_stop(%struct.au1xpsc_audio_data* %0, i32 %1) #0 {
  %3 = alloca %struct.au1xpsc_audio_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.au1xpsc_audio_data* %0, %struct.au1xpsc_audio_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @I2SPCR_STOP(i32 %7)
  %9 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %10 = call i32 @I2S_PCR(%struct.au1xpsc_audio_data* %9)
  %11 = call i32 @__raw_writel(i32 %8, i32 %10)
  %12 = call i32 (...) @wmb()
  store i64 1000000, i64* %5, align 8
  br label %13

13:                                               ; preds = %26, %2
  %14 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %15 = call i32 @I2S_STAT(%struct.au1xpsc_audio_data* %14)
  %16 = call i64 @__raw_readl(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @I2SSTAT_BUSY(i32 %17)
  %19 = and i64 %16, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %21, %13
  %25 = phi i1 [ false, %13 ], [ %23, %21 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, -1
  store i64 %28, i64* %5, align 8
  br label %13

29:                                               ; preds = %24
  %30 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %31 = call i32 @I2S_STAT(%struct.au1xpsc_audio_data* %30)
  %32 = call i64 @__raw_readl(i32 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @PSC_I2SSTAT_TB, align 8
  %35 = load i64, i64* @PSC_I2SSTAT_RB, align 8
  %36 = or i64 %34, %35
  %37 = and i64 %33, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %29
  %40 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %41 = call i32 @I2S_CFG(%struct.au1xpsc_audio_data* %40)
  %42 = call i32 @__raw_writel(i32 0, i32 %41)
  %43 = call i32 (...) @wmb()
  %44 = load i32, i32* @PSC_CTRL_SUSPEND, align 4
  %45 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %46 = call i32 @PSC_CTRL(%struct.au1xpsc_audio_data* %45)
  %47 = call i32 @__raw_writel(i32 %44, i32 %46)
  %48 = call i32 (...) @wmb()
  br label %49

49:                                               ; preds = %39, %29
  ret i32 0
}

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @I2SPCR_STOP(i32) #1

declare dso_local i32 @I2S_PCR(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @I2S_STAT(%struct.au1xpsc_audio_data*) #1

declare dso_local i64 @I2SSTAT_BUSY(i32) #1

declare dso_local i32 @I2S_CFG(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @PSC_CTRL(%struct.au1xpsc_audio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
