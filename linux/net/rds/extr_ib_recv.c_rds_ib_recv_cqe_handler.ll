; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_recv_cqe_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_recv_cqe_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_connection = type { i32, %struct.TYPE_5__*, %struct.rds_ib_recv_work*, %struct.rds_connection* }
%struct.TYPE_5__ = type { i32 }
%struct.rds_ib_recv_work = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.rds_connection = type { i32, i32, i32 }
%struct.ib_wc = type { i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.rds_ib_ack_state = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"wc wr_id 0x%llx status %u (%s) byte_len %u imm_data %u\0A\00", align 1
@s_ib_rx_cq_event = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [89 x i8] c"recv completion on <%pI6c,%pI6c, %d> had status %u (%s), disconnecting and reconnecting\0A\00", align 1
@s_ib_rx_ring_empty = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@s_ib_rx_refill_from_cq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_ib_recv_cqe_handler(%struct.rds_ib_connection* %0, %struct.ib_wc* %1, %struct.rds_ib_ack_state* %2) #0 {
  %4 = alloca %struct.rds_ib_connection*, align 8
  %5 = alloca %struct.ib_wc*, align 8
  %6 = alloca %struct.rds_ib_ack_state*, align 8
  %7 = alloca %struct.rds_connection*, align 8
  %8 = alloca %struct.rds_ib_recv_work*, align 8
  store %struct.rds_ib_connection* %0, %struct.rds_ib_connection** %4, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %5, align 8
  store %struct.rds_ib_ack_state* %2, %struct.rds_ib_ack_state** %6, align 8
  %9 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %10 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %9, i32 0, i32 3
  %11 = load %struct.rds_connection*, %struct.rds_connection** %10, align 8
  store %struct.rds_connection* %11, %struct.rds_connection** %7, align 8
  %12 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %13 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %16 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %19 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ib_wc_status_msg(i32 %20)
  %22 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %23 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %26 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @be32_to_cpu(i32 %28)
  %30 = call i32 @rdsdebug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %14, i32 %17, i32 %21, i32 %24, i32 %29)
  %31 = load i32, i32* @s_ib_rx_cq_event, align 4
  %32 = call i32 @rds_ib_stats_inc(i32 %31)
  %33 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %34 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %33, i32 0, i32 2
  %35 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %34, align 8
  %36 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %37 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %36, i32 0, i32 0
  %38 = call i64 @rds_ib_ring_oldest(i32* %37)
  %39 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %35, i64 %38
  store %struct.rds_ib_recv_work* %39, %struct.rds_ib_recv_work** %8, align 8
  %40 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %41 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %8, align 8
  %46 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %50 = call i32 @ib_dma_unmap_sg(i32 %44, i32* %48, i32 1, i32 %49)
  %51 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %52 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IB_WC_SUCCESS, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %3
  %57 = load %struct.rds_connection*, %struct.rds_connection** %7, align 8
  %58 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %8, align 8
  %59 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %60 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rds_ib_ack_state*, %struct.rds_ib_ack_state** %6, align 8
  %63 = call i32 @rds_ib_process_recv(%struct.rds_connection* %57, %struct.rds_ib_recv_work* %58, i32 %61, %struct.rds_ib_ack_state* %62)
  br label %90

64:                                               ; preds = %3
  %65 = load %struct.rds_connection*, %struct.rds_connection** %7, align 8
  %66 = call i64 @rds_conn_up(%struct.rds_connection* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load %struct.rds_connection*, %struct.rds_connection** %7, align 8
  %70 = call i64 @rds_conn_connecting(%struct.rds_connection* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %68, %64
  %73 = load %struct.rds_connection*, %struct.rds_connection** %7, align 8
  %74 = load %struct.rds_connection*, %struct.rds_connection** %7, align 8
  %75 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %74, i32 0, i32 2
  %76 = load %struct.rds_connection*, %struct.rds_connection** %7, align 8
  %77 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %76, i32 0, i32 1
  %78 = load %struct.rds_connection*, %struct.rds_connection** %7, align 8
  %79 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %82 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %85 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ib_wc_status_msg(i32 %86)
  %88 = call i32 @rds_ib_conn_error(%struct.rds_connection* %73, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32* %75, i32* %77, i32 %80, i32 %83, i32 %87)
  br label %89

89:                                               ; preds = %72, %68
  br label %90

90:                                               ; preds = %89, %56
  %91 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %8, align 8
  %92 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = icmp ne %struct.TYPE_6__* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %97 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %8, align 8
  %98 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = call i32 @rds_ib_frag_free(%struct.rds_ib_connection* %96, %struct.TYPE_6__* %99)
  %101 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %8, align 8
  %102 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %101, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %102, align 8
  br label %103

103:                                              ; preds = %95, %90
  %104 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %105 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %104, i32 0, i32 0
  %106 = call i32 @rds_ib_ring_free(i32* %105, i32 1)
  %107 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %108 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %107, i32 0, i32 0
  %109 = call i64 @rds_ib_ring_empty(i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load i32, i32* @s_ib_rx_ring_empty, align 4
  %113 = call i32 @rds_ib_stats_inc(i32 %112)
  br label %114

114:                                              ; preds = %111, %103
  %115 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %116 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %115, i32 0, i32 0
  %117 = call i64 @rds_ib_ring_low(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.rds_connection*, %struct.rds_connection** %7, align 8
  %121 = load i32, i32* @GFP_NOWAIT, align 4
  %122 = call i32 @rds_ib_recv_refill(%struct.rds_connection* %120, i32 0, i32 %121)
  %123 = load i32, i32* @s_ib_rx_refill_from_cq, align 4
  %124 = call i32 @rds_ib_stats_inc(i32 %123)
  br label %125

125:                                              ; preds = %119, %114
  ret void
}

declare dso_local i32 @rdsdebug(i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ib_wc_status_msg(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rds_ib_stats_inc(i32) #1

declare dso_local i64 @rds_ib_ring_oldest(i32*) #1

declare dso_local i32 @ib_dma_unmap_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @rds_ib_process_recv(%struct.rds_connection*, %struct.rds_ib_recv_work*, i32, %struct.rds_ib_ack_state*) #1

declare dso_local i64 @rds_conn_up(%struct.rds_connection*) #1

declare dso_local i64 @rds_conn_connecting(%struct.rds_connection*) #1

declare dso_local i32 @rds_ib_conn_error(%struct.rds_connection*, i8*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @rds_ib_frag_free(%struct.rds_ib_connection*, %struct.TYPE_6__*) #1

declare dso_local i32 @rds_ib_ring_free(i32*, i32) #1

declare dso_local i64 @rds_ib_ring_empty(i32*) #1

declare dso_local i64 @rds_ib_ring_low(i32*) #1

declare dso_local i32 @rds_ib_recv_refill(%struct.rds_connection*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
