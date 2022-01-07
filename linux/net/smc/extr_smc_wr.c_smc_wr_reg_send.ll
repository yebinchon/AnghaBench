; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_wr.c_smc_wr_reg_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_wr.c_smc_wr_reg_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32, %struct.ib_mr* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ib_mr = type { i32 }

@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@IB_CQ_REPORT_MISSED_EVENTS = common dso_local global i32 0, align 4
@SMC_WR_REG_MR_WAIT_TIME = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_wr_reg_send(%struct.smc_link* %0, %struct.ib_mr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smc_link*, align 8
  %5 = alloca %struct.ib_mr*, align 8
  %6 = alloca i32, align 4
  store %struct.smc_link* %0, %struct.smc_link** %4, align 8
  store %struct.ib_mr* %1, %struct.ib_mr** %5, align 8
  %7 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %8 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %7, i32 0, i32 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %13 = load i32, i32* @IB_CQ_REPORT_MISSED_EVENTS, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @ib_req_notify_cq(i32 %11, i32 %14)
  %16 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %17 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %16, i32 0, i32 0
  store i32 128, i32* %17, align 8
  %18 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %19 = ptrtoint %struct.ib_mr* %18 to i64
  %20 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %21 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i64 %19, i64* %23, align 8
  %24 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %25 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %26 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store %struct.ib_mr* %24, %struct.ib_mr** %27, align 8
  %28 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %29 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %32 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %35 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %38 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = call i32 @ib_post_send(i32 %36, %struct.TYPE_6__* %39, i32* null)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %85

45:                                               ; preds = %2
  %46 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %47 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %50 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 128
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* @SMC_WR_REG_MR_WAIT_TIME, align 4
  %55 = call i32 @wait_event_interruptible_timeout(i32 %48, i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %45
  %59 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %60 = call i32 @smc_get_lgr(%struct.smc_link* %59)
  %61 = call i32 @smc_lgr_terminate(i32 %60)
  %62 = load i32, i32* @EPIPE, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %85

64:                                               ; preds = %45
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ERESTARTSYS, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @EINTR, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %85

72:                                               ; preds = %64
  %73 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %74 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %83 [
    i32 130, label %76
    i32 129, label %77
    i32 128, label %80
  ]

76:                                               ; preds = %72
  store i32 0, i32* %6, align 4
  br label %83

77:                                               ; preds = %72
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %83

80:                                               ; preds = %72
  %81 = load i32, i32* @EPIPE, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %72, %80, %77, %76
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %69, %58, %43
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @ib_req_notify_cq(i32, i32) #1

declare dso_local i32 @ib_post_send(i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @smc_lgr_terminate(i32) #1

declare dso_local i32 @smc_get_lgr(%struct.smc_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
