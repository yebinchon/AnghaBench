; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_config_channel_size.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_config_channel_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_mcasp = type { i32, i32, i32, i64 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_RIGHT_J = common dso_local global i32 0, align 4
@DAVINCI_MCASP_DIT_MODE = common dso_local global i64 0, align 8
@DAVINCI_MCASP_RXFMT_REG = common dso_local global i32 0, align 4
@DAVINCI_MCASP_TXFMT_REG = common dso_local global i32 0, align 4
@DAVINCI_MCASP_RXMASK_REG = common dso_local global i32 0, align 4
@DAVINCI_MCASP_TXMASK_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.davinci_mcasp*, i32)* @davinci_config_channel_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_config_channel_size(%struct.davinci_mcasp* %0, i32 %1) #0 {
  %3 = alloca %struct.davinci_mcasp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.davinci_mcasp* %0, %struct.davinci_mcasp** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = shl i64 1, %11
  %13 = sub i64 %12, 1
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %9, align 4
  %15 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %16 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %21 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  br label %35

23:                                               ; preds = %2
  %24 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %25 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %30 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %32, %28
  br label %35

35:                                               ; preds = %34, %19
  %36 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %37 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @SND_SOC_DAIFMT_RIGHT_J, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = sdiv i32 %44, 4
  %46 = and i32 %45, 7
  store i32 %46, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %55

47:                                               ; preds = %35
  %48 = load i32, i32* %4, align 4
  %49 = sdiv i32 %48, 4
  %50 = and i32 %49, 7
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %51, %52
  %54 = sdiv i32 %53, 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %47, %43
  %56 = load i32, i32* %8, align 4
  %57 = ashr i32 %56, 1
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  %59 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %60 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DAVINCI_MCASP_DIT_MODE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %93

64:                                               ; preds = %55
  %65 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %66 = load i32, i32* @DAVINCI_MCASP_RXFMT_REG, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @RXSSZ(i32 %67)
  %69 = call i32 @RXSSZ(i32 15)
  %70 = call i32 @mcasp_mod_bits(%struct.davinci_mcasp* %65, i32 %66, i32 %68, i32 %69)
  %71 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %72 = load i32, i32* @DAVINCI_MCASP_TXFMT_REG, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @TXSSZ(i32 %73)
  %75 = call i32 @TXSSZ(i32 15)
  %76 = call i32 @mcasp_mod_bits(%struct.davinci_mcasp* %71, i32 %72, i32 %74, i32 %75)
  %77 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %78 = load i32, i32* @DAVINCI_MCASP_TXFMT_REG, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @TXROT(i32 %79)
  %81 = call i32 @TXROT(i32 7)
  %82 = call i32 @mcasp_mod_bits(%struct.davinci_mcasp* %77, i32 %78, i32 %80, i32 %81)
  %83 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %84 = load i32, i32* @DAVINCI_MCASP_RXFMT_REG, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @RXROT(i32 %85)
  %87 = call i32 @RXROT(i32 7)
  %88 = call i32 @mcasp_mod_bits(%struct.davinci_mcasp* %83, i32 %84, i32 %86, i32 %87)
  %89 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %90 = load i32, i32* @DAVINCI_MCASP_RXMASK_REG, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @mcasp_set_reg(%struct.davinci_mcasp* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %64, %55
  %94 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %3, align 8
  %95 = load i32, i32* @DAVINCI_MCASP_TXMASK_REG, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @mcasp_set_reg(%struct.davinci_mcasp* %94, i32 %95, i32 %96)
  ret i32 0
}

declare dso_local i32 @mcasp_mod_bits(%struct.davinci_mcasp*, i32, i32, i32) #1

declare dso_local i32 @RXSSZ(i32) #1

declare dso_local i32 @TXSSZ(i32) #1

declare dso_local i32 @TXROT(i32) #1

declare dso_local i32 @RXROT(i32) #1

declare dso_local i32 @mcasp_set_reg(%struct.davinci_mcasp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
