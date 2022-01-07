; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_mcasp_stop_rx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_mcasp_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_mcasp = type { i64, i64, i32, i32* }

@DAVINCI_MCASP_EVTCTLR_REG = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@DAVINCI_MCASP_GBLCTLX_REG = common dso_local global i32 0, align 4
@DAVINCI_MCASP_GBLCTLR_REG = common dso_local global i32 0, align 4
@DAVINCI_MCASP_RXSTAT_REG = common dso_local global i32 0, align 4
@MCASP_RFIFOCTL_OFFSET = common dso_local global i64 0, align 8
@FIFO_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davinci_mcasp*)* @mcasp_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcasp_stop_rx(%struct.davinci_mcasp* %0) #0 {
  %2 = alloca %struct.davinci_mcasp*, align 8
  %3 = alloca i64, align 8
  store %struct.davinci_mcasp* %0, %struct.davinci_mcasp** %2, align 8
  %4 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %5 = load i64, i64* @DAVINCI_MCASP_EVTCTLR_REG, align 8
  %6 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %7 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %4, i64 %5, i32 %11)
  %13 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %14 = call i64 @mcasp_is_synchronous(%struct.davinci_mcasp* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %18 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %23 = call i32 @mcasp_set_clk_pdir(%struct.davinci_mcasp* %22, i32 0)
  %24 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %25 = load i32, i32* @DAVINCI_MCASP_GBLCTLX_REG, align 4
  %26 = call i32 @mcasp_set_reg(%struct.davinci_mcasp* %24, i32 %25, i32 0)
  br label %27

27:                                               ; preds = %21, %16, %1
  %28 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %29 = load i32, i32* @DAVINCI_MCASP_GBLCTLR_REG, align 4
  %30 = call i32 @mcasp_set_reg(%struct.davinci_mcasp* %28, i32 %29, i32 0)
  %31 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %32 = load i32, i32* @DAVINCI_MCASP_RXSTAT_REG, align 4
  %33 = call i32 @mcasp_set_reg(%struct.davinci_mcasp* %31, i32 %32, i32 -1)
  %34 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %35 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %27
  %39 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %40 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MCASP_RFIFOCTL_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  store i64 %43, i64* %3, align 8
  %44 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %2, align 8
  %45 = load i64, i64* %3, align 8
  %46 = load i32, i32* @FIFO_ENABLE, align 4
  %47 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %44, i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %38, %27
  ret void
}

declare dso_local i32 @mcasp_clr_bits(%struct.davinci_mcasp*, i64, i32) #1

declare dso_local i64 @mcasp_is_synchronous(%struct.davinci_mcasp*) #1

declare dso_local i32 @mcasp_set_clk_pdir(%struct.davinci_mcasp*, i32) #1

declare dso_local i32 @mcasp_set_reg(%struct.davinci_mcasp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
