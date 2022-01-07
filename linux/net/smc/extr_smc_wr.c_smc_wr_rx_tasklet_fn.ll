; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_wr.c_smc_wr_rx_tasklet_fn.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_wr.c_smc_wr_rx_tasklet_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_ib_device = type { i32 }
%struct.ib_wc = type { i32 }

@SMC_WR_MAX_POLL_CQE = common dso_local global i32 0, align 4
@IB_CQ_SOLICITED_MASK = common dso_local global i32 0, align 4
@IB_CQ_REPORT_MISSED_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @smc_wr_rx_tasklet_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_wr_rx_tasklet_fn(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.smc_ib_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.smc_ib_device*
  store %struct.smc_ib_device* %9, %struct.smc_ib_device** %3, align 8
  %10 = load i32, i32* @SMC_WR_MAX_POLL_CQE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca %struct.ib_wc, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %51, %1
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %45, %14
  %18 = bitcast %struct.ib_wc* %13 to %struct.ib_wc**
  %19 = mul nuw i64 4, %11
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(%struct.ib_wc** %18, i32 0, i32 %20)
  %22 = load %struct.smc_ib_device*, %struct.smc_ib_device** %3, align 8
  %23 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SMC_WR_MAX_POLL_CQE, align 4
  %26 = call i32 @ib_poll_cq(i32 %24, i32 %25, %struct.ib_wc* %13)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %37

29:                                               ; preds = %17
  %30 = load %struct.smc_ib_device*, %struct.smc_ib_device** %3, align 8
  %31 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IB_CQ_SOLICITED_MASK, align 4
  %34 = load i32, i32* @IB_CQ_REPORT_MISSED_EVENTS, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @ib_req_notify_cq(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %29, %17
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %48

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i64 0
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @smc_wr_rx_process_cqes(%struct.ib_wc* %42, i32 %43)
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %17, label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %14

52:                                               ; preds = %48
  %53 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %53)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.ib_wc**, i32, i32) #2

declare dso_local i32 @ib_poll_cq(i32, i32, %struct.ib_wc*) #2

declare dso_local i32 @ib_req_notify_cq(i32, i32) #2

declare dso_local i32 @smc_wr_rx_process_cqes(%struct.ib_wc*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
