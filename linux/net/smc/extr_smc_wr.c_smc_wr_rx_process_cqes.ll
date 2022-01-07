; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_wr.c_smc_wr_rx_process_cqes.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_wr.c_smc_wr_rx_process_cqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_wc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.smc_link* }
%struct.smc_link = type { i32 }

@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_wc*, i32)* @smc_wr_rx_process_cqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_wr_rx_process_cqes(%struct.ib_wc* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_wc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smc_link*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_wc* %0, %struct.ib_wc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %55, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %58

11:                                               ; preds = %7
  %12 = load %struct.ib_wc*, %struct.ib_wc** %3, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i64 %14
  %16 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.smc_link*, %struct.smc_link** %18, align 8
  store %struct.smc_link* %19, %struct.smc_link** %5, align 8
  %20 = load %struct.ib_wc*, %struct.ib_wc** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %20, i64 %22
  %24 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IB_WC_SUCCESS, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %11
  %29 = load i32, i32* @jiffies, align 4
  %30 = load %struct.smc_link*, %struct.smc_link** %5, align 8
  %31 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ib_wc*, %struct.ib_wc** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %32, i64 %34
  %36 = call i32 @smc_wr_rx_demultiplex(%struct.ib_wc* %35)
  %37 = load %struct.smc_link*, %struct.smc_link** %5, align 8
  %38 = call i32 @smc_wr_rx_post(%struct.smc_link* %37)
  br label %54

39:                                               ; preds = %11
  %40 = load %struct.ib_wc*, %struct.ib_wc** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %40, i64 %42
  %44 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %50 [
    i32 130, label %46
    i32 129, label %46
    i32 128, label %46
  ]

46:                                               ; preds = %39, %39, %39
  %47 = load %struct.smc_link*, %struct.smc_link** %5, align 8
  %48 = call i32 @smc_get_lgr(%struct.smc_link* %47)
  %49 = call i32 @smc_lgr_terminate(i32 %48)
  br label %53

50:                                               ; preds = %39
  %51 = load %struct.smc_link*, %struct.smc_link** %5, align 8
  %52 = call i32 @smc_wr_rx_post(%struct.smc_link* %51)
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %28
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %7

58:                                               ; preds = %7
  ret void
}

declare dso_local i32 @smc_wr_rx_demultiplex(%struct.ib_wc*) #1

declare dso_local i32 @smc_wr_rx_post(%struct.smc_link*) #1

declare dso_local i32 @smc_lgr_terminate(i32) #1

declare dso_local i32 @smc_get_lgr(%struct.smc_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
