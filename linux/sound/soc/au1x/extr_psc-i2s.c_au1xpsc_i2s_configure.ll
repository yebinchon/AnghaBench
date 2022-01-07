; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_configure.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xpsc_audio_data = type { i32 }

@PSC_CTRL_ENABLE = common dso_local global i32 0, align 4
@PSC_I2SSTAT_SR = common dso_local global i32 0, align 4
@PSC_I2SCFG_DE_ENABLE = common dso_local global i32 0, align 4
@PSC_I2SSTAT_DR = common dso_local global i32 0, align 4
@PSC_CTRL_SUSPEND = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au1xpsc_audio_data*)* @au1xpsc_i2s_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_i2s_configure(%struct.au1xpsc_audio_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.au1xpsc_audio_data*, align 8
  %4 = alloca i64, align 8
  store %struct.au1xpsc_audio_data* %0, %struct.au1xpsc_audio_data** %3, align 8
  %5 = load i32, i32* @PSC_CTRL_ENABLE, align 4
  %6 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %7 = call i32 @PSC_CTRL(%struct.au1xpsc_audio_data* %6)
  %8 = call i32 @__raw_writel(i32 %5, i32 %7)
  %9 = call i32 (...) @wmb()
  store i64 1000000, i64* %4, align 8
  br label %10

10:                                               ; preds = %22, %1
  %11 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %12 = call i32 @I2S_STAT(%struct.au1xpsc_audio_data* %11)
  %13 = call i32 @__raw_readl(i32 %12)
  %14 = load i32, i32* @PSC_I2SSTAT_SR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %17, %10
  %21 = phi i1 [ false, %10 ], [ %19, %17 ]
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %4, align 8
  br label %10

25:                                               ; preds = %20
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %63

29:                                               ; preds = %25
  %30 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %31 = call i32 @I2S_CFG(%struct.au1xpsc_audio_data* %30)
  %32 = call i32 @__raw_writel(i32 0, i32 %31)
  %33 = call i32 (...) @wmb()
  %34 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %35 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PSC_I2SCFG_DE_ENABLE, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %40 = call i32 @I2S_CFG(%struct.au1xpsc_audio_data* %39)
  %41 = call i32 @__raw_writel(i32 %38, i32 %40)
  %42 = call i32 (...) @wmb()
  store i64 1000000, i64* %4, align 8
  br label %43

43:                                               ; preds = %55, %29
  %44 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %45 = call i32 @I2S_STAT(%struct.au1xpsc_audio_data* %44)
  %46 = call i32 @__raw_readl(i32 %45)
  %47 = load i32, i32* @PSC_I2SSTAT_DR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i64, i64* %4, align 8
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %50, %43
  %54 = phi i1 [ false, %43 ], [ %52, %50 ]
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = load i64, i64* %4, align 8
  %57 = add i64 %56, -1
  store i64 %57, i64* %4, align 8
  br label %43

58:                                               ; preds = %53
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %74

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %28
  %64 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %65 = call i32 @I2S_CFG(%struct.au1xpsc_audio_data* %64)
  %66 = call i32 @__raw_writel(i32 0, i32 %65)
  %67 = load i32, i32* @PSC_CTRL_SUSPEND, align 4
  %68 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %69 = call i32 @PSC_CTRL(%struct.au1xpsc_audio_data* %68)
  %70 = call i32 @__raw_writel(i32 %67, i32 %69)
  %71 = call i32 (...) @wmb()
  %72 = load i32, i32* @ETIMEDOUT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %63, %61
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @PSC_CTRL(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @I2S_STAT(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @I2S_CFG(%struct.au1xpsc_audio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
