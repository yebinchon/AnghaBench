; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_mcasp_start_rx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_mcasp_start_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_mcasp = type { i32*, i64, i64 }

@MCASP_RFIFOCTL_OFFSET = common dso_local global i64 0, align 8
@FIFO_ENABLE = common dso_local global i32 0, align 4
@DAVINCI_MCASP_GBLCTLR_REG = common dso_local global i32 0, align 4
@RXHCLKRST = common dso_local global i32 0, align 4
@RXCLKRST = common dso_local global i32 0, align 4
@DAVINCI_MCASP_GBLCTLX_REG = common dso_local global i32 0, align 4
@TXHCLKRST = common dso_local global i32 0, align 4
@TXCLKRST = common dso_local global i32 0, align 4
@DAVINCI_MCASP_RXSTAT_REG = common dso_local global i32 0, align 4
@RXSERCLR = common dso_local global i32 0, align 4
@RXSMRST = common dso_local global i32 0, align 4
@RXFSRST = common dso_local global i32 0, align 4
@TXFSRST = common dso_local global i32 0, align 4
@DAVINCI_MCASP_EVTCTLR_REG = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davinci_mcasp*)* @mcasp_start_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcasp_start_rx(%struct.davinci_mcasp* %0) #0 {
  %2 = alloca %struct.davinci_mcasp*, align 8
  %3 = alloca i64, align 8
  store %struct.davinci_mcasp* %0, %struct.davinci_mcasp** %2, align 8
  %4 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %5 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %10 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MCASP_RFIFOCTL_OFFSET, align 8
  %13 = add nsw i64 %11, %12
  store i64 %13, i64* %3, align 8
  %14 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* @FIFO_ENABLE, align 4
  %17 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %14, i64 %15, i32 %16)
  %18 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i32, i32* @FIFO_ENABLE, align 4
  %21 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %18, i64 %19, i32 %20)
  br label %22

22:                                               ; preds = %8, %1
  %23 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %24 = load i32, i32* @DAVINCI_MCASP_GBLCTLR_REG, align 4
  %25 = load i32, i32* @RXHCLKRST, align 4
  %26 = call i32 @mcasp_set_ctl_reg(%struct.davinci_mcasp* %23, i32 %24, i32 %25)
  %27 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %28 = load i32, i32* @DAVINCI_MCASP_GBLCTLR_REG, align 4
  %29 = load i32, i32* @RXCLKRST, align 4
  %30 = call i32 @mcasp_set_ctl_reg(%struct.davinci_mcasp* %27, i32 %28, i32 %29)
  %31 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %32 = call i64 @mcasp_is_synchronous(%struct.davinci_mcasp* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %22
  %35 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %36 = load i32, i32* @DAVINCI_MCASP_GBLCTLX_REG, align 4
  %37 = load i32, i32* @TXHCLKRST, align 4
  %38 = call i32 @mcasp_set_ctl_reg(%struct.davinci_mcasp* %35, i32 %36, i32 %37)
  %39 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %40 = load i32, i32* @DAVINCI_MCASP_GBLCTLX_REG, align 4
  %41 = load i32, i32* @TXCLKRST, align 4
  %42 = call i32 @mcasp_set_ctl_reg(%struct.davinci_mcasp* %39, i32 %40, i32 %41)
  %43 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %44 = call i32 @mcasp_set_clk_pdir(%struct.davinci_mcasp* %43, i32 1)
  br label %45

45:                                               ; preds = %34, %22
  %46 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %47 = load i32, i32* @DAVINCI_MCASP_RXSTAT_REG, align 4
  %48 = call i32 @mcasp_set_reg(%struct.davinci_mcasp* %46, i32 %47, i32 -1)
  %49 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %50 = load i32, i32* @DAVINCI_MCASP_GBLCTLR_REG, align 4
  %51 = load i32, i32* @RXSERCLR, align 4
  %52 = call i32 @mcasp_set_ctl_reg(%struct.davinci_mcasp* %49, i32 %50, i32 %51)
  %53 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %54 = load i32, i32* @DAVINCI_MCASP_GBLCTLR_REG, align 4
  %55 = load i32, i32* @RXSMRST, align 4
  %56 = call i32 @mcasp_set_ctl_reg(%struct.davinci_mcasp* %53, i32 %54, i32 %55)
  %57 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %58 = load i32, i32* @DAVINCI_MCASP_GBLCTLR_REG, align 4
  %59 = load i32, i32* @RXFSRST, align 4
  %60 = call i32 @mcasp_set_ctl_reg(%struct.davinci_mcasp* %57, i32 %58, i32 %59)
  %61 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %62 = call i64 @mcasp_is_synchronous(%struct.davinci_mcasp* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %45
  %65 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %66 = load i32, i32* @DAVINCI_MCASP_GBLCTLX_REG, align 4
  %67 = load i32, i32* @TXFSRST, align 4
  %68 = call i32 @mcasp_set_ctl_reg(%struct.davinci_mcasp* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %45
  %70 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %71 = load i64, i64* @DAVINCI_MCASP_EVTCTLR_REG, align 8
  %72 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %73 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %70, i64 %71, i32 %77)
  ret void
}

declare dso_local i32 @mcasp_clr_bits(%struct.davinci_mcasp*, i64, i32) #1

declare dso_local i32 @mcasp_set_bits(%struct.davinci_mcasp*, i64, i32) #1

declare dso_local i32 @mcasp_set_ctl_reg(%struct.davinci_mcasp*, i32, i32) #1

declare dso_local i64 @mcasp_is_synchronous(%struct.davinci_mcasp*) #1

declare dso_local i32 @mcasp_set_clk_pdir(%struct.davinci_mcasp*, i32) #1

declare dso_local i32 @mcasp_set_reg(%struct.davinci_mcasp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
