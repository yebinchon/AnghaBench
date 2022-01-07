; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_cm.c_poll_rcq.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_cm.c_poll_rcq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_connection = type { i32 }
%struct.ib_cq = type { i32 }
%struct.ib_wc = type { %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.rds_ib_ack_state = type { i32 }

@RDS_IB_WC_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"wc wr_id 0x%llx status %u byte_len %u imm_data %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_ib_connection*, %struct.ib_cq*, %struct.ib_wc*, %struct.rds_ib_ack_state*)* @poll_rcq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_rcq(%struct.rds_ib_connection* %0, %struct.ib_cq* %1, %struct.ib_wc* %2, %struct.rds_ib_ack_state* %3) #0 {
  %5 = alloca %struct.rds_ib_connection*, align 8
  %6 = alloca %struct.ib_cq*, align 8
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca %struct.rds_ib_ack_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_wc*, align 8
  store %struct.rds_ib_connection* %0, %struct.rds_ib_connection** %5, align 8
  store %struct.ib_cq* %1, %struct.ib_cq** %6, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  store %struct.rds_ib_ack_state* %3, %struct.rds_ib_ack_state** %8, align 8
  br label %12

12:                                               ; preds = %50, %4
  %13 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %14 = load i32, i32* @RDS_IB_WC_MAX, align 4
  %15 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %16 = call i32 @ib_poll_cq(%struct.ib_cq* %13, i32 %14, %struct.ib_wc* %15)
  store i32 %16, i32* %9, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %12
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %47, %18
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  %24 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %24, i64 %26
  store %struct.ib_wc* %27, %struct.ib_wc** %11, align 8
  %28 = load %struct.ib_wc*, %struct.ib_wc** %11, align 8
  %29 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ib_wc*, %struct.ib_wc** %11, align 8
  %32 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ib_wc*, %struct.ib_wc** %11, align 8
  %35 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ib_wc*, %struct.ib_wc** %11, align 8
  %38 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @be32_to_cpu(i32 %40)
  %42 = call i32 @rdsdebug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %30, i32 %33, i32 %36, i32 %41)
  %43 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %5, align 8
  %44 = load %struct.ib_wc*, %struct.ib_wc** %11, align 8
  %45 = load %struct.rds_ib_ack_state*, %struct.rds_ib_ack_state** %8, align 8
  %46 = call i32 @rds_ib_recv_cqe_handler(%struct.rds_ib_connection* %43, %struct.ib_wc* %44, %struct.rds_ib_ack_state* %45)
  br label %47

47:                                               ; preds = %23
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %19

50:                                               ; preds = %19
  br label %12

51:                                               ; preds = %12
  ret void
}

declare dso_local i32 @ib_poll_cq(%struct.ib_cq*, i32, %struct.ib_wc*) #1

declare dso_local i32 @rdsdebug(i8*, i64, i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rds_ib_recv_cqe_handler(%struct.rds_ib_connection*, %struct.ib_wc*, %struct.rds_ib_ack_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
