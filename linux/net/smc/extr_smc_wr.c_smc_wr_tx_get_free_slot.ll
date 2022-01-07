; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_wr.c_smc_wr_tx_get_free_slot.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_wr.c_smc_wr_tx_get_free_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i64, i64, %struct.smc_rdma_wr*, %struct.smc_wr_buf*, %struct.ib_send_wr*, %struct.smc_wr_tx_pend*, i32 }
%struct.smc_rdma_wr = type { i32 }
%struct.smc_wr_buf = type { i32 }
%struct.ib_send_wr = type { i8* }
%struct.smc_wr_tx_pend = type { i64, %struct.smc_wr_tx_pend_priv, %struct.smc_link*, i32, i8* }
%struct.smc_wr_tx_pend_priv = type { i32 }

@SMC_LNK_INACTIVE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@SMC_WR_TX_WAIT_FREE_SLOT_TIME = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_wr_tx_get_free_slot(%struct.smc_link* %0, i32 %1, %struct.smc_wr_buf** %2, %struct.smc_rdma_wr** %3, %struct.smc_wr_tx_pend_priv** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.smc_link*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.smc_wr_buf**, align 8
  %10 = alloca %struct.smc_rdma_wr**, align 8
  %11 = alloca %struct.smc_wr_tx_pend_priv**, align 8
  %12 = alloca %struct.smc_wr_tx_pend*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ib_send_wr*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.smc_link* %0, %struct.smc_link** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.smc_wr_buf** %2, %struct.smc_wr_buf*** %9, align 8
  store %struct.smc_rdma_wr** %3, %struct.smc_rdma_wr*** %10, align 8
  store %struct.smc_wr_tx_pend_priv** %4, %struct.smc_wr_tx_pend_priv*** %11, align 8
  %17 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %18 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %13, align 8
  %20 = load %struct.smc_wr_buf**, %struct.smc_wr_buf*** %9, align 8
  store %struct.smc_wr_buf* null, %struct.smc_wr_buf** %20, align 8
  %21 = load %struct.smc_wr_tx_pend_priv**, %struct.smc_wr_tx_pend_priv*** %11, align 8
  store %struct.smc_wr_tx_pend_priv* null, %struct.smc_wr_tx_pend_priv** %21, align 8
  %22 = call i64 (...) @in_softirq()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %5
  %25 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %26 = call i32 @smc_wr_tx_get_free_slot_index(%struct.smc_link* %25, i64* %13)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %6, align 4
  br label %117

31:                                               ; preds = %24
  br label %70

32:                                               ; preds = %5
  %33 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %34 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %37 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SMC_LNK_INACTIVE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %32
  %42 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %43 = call i32 @smc_wr_tx_get_free_slot_index(%struct.smc_link* %42, i64* %13)
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br label %47

47:                                               ; preds = %41, %32
  %48 = phi i1 [ true, %32 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* @SMC_WR_TX_WAIT_FREE_SLOT_TIME, align 4
  %51 = call i32 @wait_event_timeout(i32 %35, i32 %49, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %47
  %55 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %56 = call i32 @smc_get_lgr(%struct.smc_link* %55)
  %57 = call i32 @smc_lgr_terminate(i32 %56)
  %58 = load i32, i32* @EPIPE, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %117

60:                                               ; preds = %47
  %61 = load i64, i64* %13, align 8
  %62 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %63 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @EPIPE, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %117

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %31
  %71 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %72 = call i8* @smc_wr_tx_get_next_wr_id(%struct.smc_link* %71)
  store i8* %72, i8** %15, align 8
  %73 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %74 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %73, i32 0, i32 5
  %75 = load %struct.smc_wr_tx_pend*, %struct.smc_wr_tx_pend** %74, align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds %struct.smc_wr_tx_pend, %struct.smc_wr_tx_pend* %75, i64 %76
  store %struct.smc_wr_tx_pend* %77, %struct.smc_wr_tx_pend** %12, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = load %struct.smc_wr_tx_pend*, %struct.smc_wr_tx_pend** %12, align 8
  %80 = getelementptr inbounds %struct.smc_wr_tx_pend, %struct.smc_wr_tx_pend* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.smc_wr_tx_pend*, %struct.smc_wr_tx_pend** %12, align 8
  %83 = getelementptr inbounds %struct.smc_wr_tx_pend, %struct.smc_wr_tx_pend* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %85 = load %struct.smc_wr_tx_pend*, %struct.smc_wr_tx_pend** %12, align 8
  %86 = getelementptr inbounds %struct.smc_wr_tx_pend, %struct.smc_wr_tx_pend* %85, i32 0, i32 2
  store %struct.smc_link* %84, %struct.smc_link** %86, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load %struct.smc_wr_tx_pend*, %struct.smc_wr_tx_pend** %12, align 8
  %89 = getelementptr inbounds %struct.smc_wr_tx_pend, %struct.smc_wr_tx_pend* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %91 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %90, i32 0, i32 4
  %92 = load %struct.ib_send_wr*, %struct.ib_send_wr** %91, align 8
  %93 = load i64, i64* %13, align 8
  %94 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %92, i64 %93
  store %struct.ib_send_wr* %94, %struct.ib_send_wr** %14, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = load %struct.ib_send_wr*, %struct.ib_send_wr** %14, align 8
  %97 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %99 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %98, i32 0, i32 3
  %100 = load %struct.smc_wr_buf*, %struct.smc_wr_buf** %99, align 8
  %101 = load i64, i64* %13, align 8
  %102 = getelementptr inbounds %struct.smc_wr_buf, %struct.smc_wr_buf* %100, i64 %101
  %103 = load %struct.smc_wr_buf**, %struct.smc_wr_buf*** %9, align 8
  store %struct.smc_wr_buf* %102, %struct.smc_wr_buf** %103, align 8
  %104 = load %struct.smc_rdma_wr**, %struct.smc_rdma_wr*** %10, align 8
  %105 = icmp ne %struct.smc_rdma_wr** %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %70
  %107 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %108 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %107, i32 0, i32 2
  %109 = load %struct.smc_rdma_wr*, %struct.smc_rdma_wr** %108, align 8
  %110 = load i64, i64* %13, align 8
  %111 = getelementptr inbounds %struct.smc_rdma_wr, %struct.smc_rdma_wr* %109, i64 %110
  %112 = load %struct.smc_rdma_wr**, %struct.smc_rdma_wr*** %10, align 8
  store %struct.smc_rdma_wr* %111, %struct.smc_rdma_wr** %112, align 8
  br label %113

113:                                              ; preds = %106, %70
  %114 = load %struct.smc_wr_tx_pend*, %struct.smc_wr_tx_pend** %12, align 8
  %115 = getelementptr inbounds %struct.smc_wr_tx_pend, %struct.smc_wr_tx_pend* %114, i32 0, i32 1
  %116 = load %struct.smc_wr_tx_pend_priv**, %struct.smc_wr_tx_pend_priv*** %11, align 8
  store %struct.smc_wr_tx_pend_priv* %115, %struct.smc_wr_tx_pend_priv** %116, align 8
  store i32 0, i32* %6, align 4
  br label %117

117:                                              ; preds = %113, %66, %54, %29
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i64 @in_softirq(...) #1

declare dso_local i32 @smc_wr_tx_get_free_slot_index(%struct.smc_link*, i64*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @smc_lgr_terminate(i32) #1

declare dso_local i32 @smc_get_lgr(%struct.smc_link*) #1

declare dso_local i8* @smc_wr_tx_get_next_wr_id(%struct.smc_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
