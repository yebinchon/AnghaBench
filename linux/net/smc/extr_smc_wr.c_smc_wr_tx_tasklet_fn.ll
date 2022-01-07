; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_wr.c_smc_wr_tx_tasklet_fn.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_wr.c_smc_wr_tx_tasklet_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_ib_device = type { i32 }
%struct.ib_wc = type { i32 }

@SMC_WR_MAX_POLL_CQE = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@IB_CQ_REPORT_MISSED_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @smc_wr_tx_tasklet_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_wr_tx_tasklet_fn(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.smc_ib_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.smc_ib_device*
  store %struct.smc_ib_device* %10, %struct.smc_ib_device** %3, align 8
  %11 = load i32, i32* @SMC_WR_MAX_POLL_CQE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca %struct.ib_wc, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %62, %1
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %56, %15
  %19 = bitcast %struct.ib_wc* %14 to %struct.ib_wc**
  %20 = mul nuw i64 4, %12
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(%struct.ib_wc** %19, i32 0, i32 %21)
  %23 = load %struct.smc_ib_device*, %struct.smc_ib_device** %3, align 8
  %24 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SMC_WR_MAX_POLL_CQE, align 4
  %27 = call i32 @ib_poll_cq(i32 %25, i32 %26, %struct.ib_wc* %14)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %38

30:                                               ; preds = %18
  %31 = load %struct.smc_ib_device*, %struct.smc_ib_device** %3, align 8
  %32 = getelementptr inbounds %struct.smc_ib_device, %struct.smc_ib_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %35 = load i32, i32* @IB_CQ_REPORT_MISSED_EVENTS, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @ib_req_notify_cq(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %30, %18
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  br label %59

42:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %52, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i64 %49
  %51 = call i32 @smc_wr_tx_process_cqe(%struct.ib_wc* %50)
  br label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %43

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %18, label %59

59:                                               ; preds = %56, %41
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %15

63:                                               ; preds = %59
  %64 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.ib_wc**, i32, i32) #2

declare dso_local i32 @ib_poll_cq(i32, i32, %struct.ib_wc*) #2

declare dso_local i32 @ib_req_notify_cq(i32, i32) #2

declare dso_local i32 @smc_wr_tx_process_cqe(%struct.ib_wc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
