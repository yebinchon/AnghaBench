; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_cm.c_poll_scq.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_cm.c_poll_scq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_connection = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@RDS_IB_WC_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"wc wr_id 0x%llx status %u byte_len %u imm_data %u\0A\00", align 1
@RDS_IB_ACK_WR_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_ib_connection*, %struct.ib_cq*, %struct.ib_wc*)* @poll_scq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_scq(%struct.rds_ib_connection* %0, %struct.ib_cq* %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.rds_ib_connection*, align 8
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_wc*, align 8
  store %struct.rds_ib_connection* %0, %struct.rds_ib_connection** %4, align 8
  store %struct.ib_cq* %1, %struct.ib_cq** %5, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  br label %10

10:                                               ; preds = %67, %3
  %11 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %12 = load i32, i32* @RDS_IB_WC_MAX, align 4
  %13 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %14 = call i32 @ib_poll_cq(%struct.ib_cq* %11, i32 %12, %struct.ib_wc* %13)
  store i32 %14, i32* %7, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %68

16:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %64, %16
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %67

21:                                               ; preds = %17
  %22 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %22, i64 %24
  store %struct.ib_wc* %25, %struct.ib_wc** %9, align 8
  %26 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %27 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %30 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %33 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %36 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @be32_to_cpu(i32 %38)
  %40 = call i32 @rdsdebug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %28, i32 %31, i32 %34, i32 %39)
  %41 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %42 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %45 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sle i64 %43, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %21
  %50 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %51 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @RDS_IB_ACK_WR_ID, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49, %21
  %56 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %57 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %58 = call i32 @rds_ib_send_cqe_handler(%struct.rds_ib_connection* %56, %struct.ib_wc* %57)
  br label %63

59:                                               ; preds = %49
  %60 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %61 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %62 = call i32 @rds_ib_mr_cqe_handler(%struct.rds_ib_connection* %60, %struct.ib_wc* %61)
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %17

67:                                               ; preds = %17
  br label %10

68:                                               ; preds = %10
  ret void
}

declare dso_local i32 @ib_poll_cq(%struct.ib_cq*, i32, %struct.ib_wc*) #1

declare dso_local i32 @rdsdebug(i8*, i64, i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rds_ib_send_cqe_handler(%struct.rds_ib_connection*, %struct.ib_wc*) #1

declare dso_local i32 @rds_ib_mr_cqe_handler(%struct.rds_ib_connection*, %struct.ib_wc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
