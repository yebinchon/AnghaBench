; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_mcasp_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_mcasp_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_mcasp = type { i32, i32*, i64 }

@MCASP_WFIFOCTL_OFFSET = common dso_local global i32 0, align 4
@FIFO_ENABLE = common dso_local global i32 0, align 4
@DAVINCI_MCASP_GBLCTLX_REG = common dso_local global i32 0, align 4
@TXHCLKRST = common dso_local global i32 0, align 4
@TXCLKRST = common dso_local global i32 0, align 4
@DAVINCI_MCASP_TXSTAT_REG = common dso_local global i32 0, align 4
@TXSERCLR = common dso_local global i32 0, align 4
@XRDATA = common dso_local global i32 0, align 4
@TXSMRST = common dso_local global i32 0, align 4
@TXFSRST = common dso_local global i32 0, align 4
@DAVINCI_MCASP_EVTCTLX_REG = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davinci_mcasp*)* @mcasp_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcasp_start_tx(%struct.davinci_mcasp* %0) #0 {
  %2 = alloca %struct.davinci_mcasp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.davinci_mcasp* %0, %struct.davinci_mcasp** %2, align 8
  %5 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %6 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %11 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MCASP_WFIFOCTL_OFFSET, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @FIFO_ENABLE, align 4
  %18 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %15, i32 %16, i32 %17)
  %19 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @FIFO_ENABLE, align 4
  %22 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %9, %1
  %24 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %25 = load i32, i32* @DAVINCI_MCASP_GBLCTLX_REG, align 4
  %26 = load i32, i32* @TXHCLKRST, align 4
  %27 = call i32 @mcasp_set_ctl_reg(%struct.davinci_mcasp* %24, i32 %25, i32 %26)
  %28 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %29 = load i32, i32* @DAVINCI_MCASP_GBLCTLX_REG, align 4
  %30 = load i32, i32* @TXCLKRST, align 4
  %31 = call i32 @mcasp_set_ctl_reg(%struct.davinci_mcasp* %28, i32 %29, i32 %30)
  %32 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %33 = call i32 @mcasp_set_clk_pdir(%struct.davinci_mcasp* %32, i32 1)
  %34 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %35 = load i32, i32* @DAVINCI_MCASP_TXSTAT_REG, align 4
  %36 = call i32 @mcasp_set_reg(%struct.davinci_mcasp* %34, i32 %35, i32 -1)
  %37 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %38 = load i32, i32* @DAVINCI_MCASP_GBLCTLX_REG, align 4
  %39 = load i32, i32* @TXSERCLR, align 4
  %40 = call i32 @mcasp_set_ctl_reg(%struct.davinci_mcasp* %37, i32 %38, i32 %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %53, %23
  %42 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %43 = load i32, i32* @DAVINCI_MCASP_TXSTAT_REG, align 4
  %44 = call i32 @mcasp_get_reg(%struct.davinci_mcasp* %42, i32 %43)
  %45 = load i32, i32* @XRDATA, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 100000
  br label %51

51:                                               ; preds = %48, %41
  %52 = phi i1 [ false, %41 ], [ %50, %48 ]
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %41

56:                                               ; preds = %51
  %57 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %58 = call i32 @mcasp_set_axr_pdir(%struct.davinci_mcasp* %57, i32 1)
  %59 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %60 = load i32, i32* @DAVINCI_MCASP_GBLCTLX_REG, align 4
  %61 = load i32, i32* @TXSMRST, align 4
  %62 = call i32 @mcasp_set_ctl_reg(%struct.davinci_mcasp* %59, i32 %60, i32 %61)
  %63 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %64 = load i32, i32* @DAVINCI_MCASP_GBLCTLX_REG, align 4
  %65 = load i32, i32* @TXFSRST, align 4
  %66 = call i32 @mcasp_set_ctl_reg(%struct.davinci_mcasp* %63, i32 %64, i32 %65)
  %67 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %68 = load i32, i32* @DAVINCI_MCASP_EVTCTLX_REG, align 4
  %69 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %70 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %67, i32 %68, i32 %74)
  ret void
}

declare dso_local i32 @mcasp_clr_bits(%struct.davinci_mcasp*, i32, i32) #1

declare dso_local i32 @mcasp_set_bits(%struct.davinci_mcasp*, i32, i32) #1

declare dso_local i32 @mcasp_set_ctl_reg(%struct.davinci_mcasp*, i32, i32) #1

declare dso_local i32 @mcasp_set_clk_pdir(%struct.davinci_mcasp*, i32) #1

declare dso_local i32 @mcasp_set_reg(%struct.davinci_mcasp*, i32, i32) #1

declare dso_local i32 @mcasp_get_reg(%struct.davinci_mcasp*, i32) #1

declare dso_local i32 @mcasp_set_axr_pdir(%struct.davinci_mcasp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
