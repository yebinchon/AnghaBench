; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_mcasp_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_mcasp_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_mcasp = type { i32, i64, i64, i32* }

@DAVINCI_MCASP_EVTCTLX_REG = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@TXHCLKRST = common dso_local global i32 0, align 4
@TXCLKRST = common dso_local global i32 0, align 4
@TXFSRST = common dso_local global i32 0, align 4
@DAVINCI_MCASP_GBLCTLX_REG = common dso_local global i32 0, align 4
@DAVINCI_MCASP_TXSTAT_REG = common dso_local global i32 0, align 4
@MCASP_WFIFOCTL_OFFSET = common dso_local global i32 0, align 4
@FIFO_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davinci_mcasp*)* @mcasp_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcasp_stop_tx(%struct.davinci_mcasp* %0) #0 {
  %2 = alloca %struct.davinci_mcasp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.davinci_mcasp* %0, %struct.davinci_mcasp** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %6 = load i32, i32* @DAVINCI_MCASP_EVTCTLX_REG, align 4
  %7 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %8 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %5, i32 %6, i32 %12)
  %14 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %15 = call i64 @mcasp_is_synchronous(%struct.davinci_mcasp* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %19 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* @TXHCLKRST, align 4
  %24 = load i32, i32* @TXCLKRST, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @TXFSRST, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %3, align 4
  br label %31

28:                                               ; preds = %17, %1
  %29 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %30 = call i32 @mcasp_set_clk_pdir(%struct.davinci_mcasp* %29, i32 0)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %33 = load i32, i32* @DAVINCI_MCASP_GBLCTLX_REG, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @mcasp_set_reg(%struct.davinci_mcasp* %32, i32 %33, i32 %34)
  %36 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %37 = load i32, i32* @DAVINCI_MCASP_TXSTAT_REG, align 4
  %38 = call i32 @mcasp_set_reg(%struct.davinci_mcasp* %36, i32 %37, i32 -1)
  %39 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %40 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %31
  %44 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %45 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MCASP_WFIFOCTL_OFFSET, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %4, align 4
  %49 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @FIFO_ENABLE, align 4
  %52 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %43, %31
  %54 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %55 = call i32 @mcasp_set_axr_pdir(%struct.davinci_mcasp* %54, i32 0)
  ret void
}

declare dso_local i32 @mcasp_clr_bits(%struct.davinci_mcasp*, i32, i32) #1

declare dso_local i64 @mcasp_is_synchronous(%struct.davinci_mcasp*) #1

declare dso_local i32 @mcasp_set_clk_pdir(%struct.davinci_mcasp*, i32) #1

declare dso_local i32 @mcasp_set_reg(%struct.davinci_mcasp*, i32, i32) #1

declare dso_local i32 @mcasp_set_axr_pdir(%struct.davinci_mcasp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
