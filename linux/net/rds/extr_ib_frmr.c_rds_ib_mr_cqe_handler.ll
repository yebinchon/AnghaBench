; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_frmr.c_rds_ib_mr_cqe_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_frmr.c_rds_ib_mr_cqe_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_connection = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ib_wc = type { i64, i32, i64 }
%struct.rds_ib_mr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rds_ib_frmr }
%struct.rds_ib_frmr = type { i32, i32, i32, i32 }

@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@FRMR_IS_INUSE = common dso_local global i32 0, align 4
@FRMR_IS_STALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"frmr completion <%pI4,%pI4> status %u(%s), vendor_err 0x%x, disconnecting and reconnecting\0A\00", align 1
@FRMR_IS_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_ib_mr_cqe_handler(%struct.rds_ib_connection* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.rds_ib_connection*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.rds_ib_mr*, align 8
  %6 = alloca %struct.rds_ib_frmr*, align 8
  store %struct.rds_ib_connection* %0, %struct.rds_ib_connection** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %7 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %8 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.rds_ib_mr*
  store %struct.rds_ib_mr* %11, %struct.rds_ib_mr** %5, align 8
  %12 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %13 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.rds_ib_frmr* %14, %struct.rds_ib_frmr** %6, align 8
  %15 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %16 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IB_WC_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %2
  %21 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %22 = load i32, i32* @FRMR_IS_INUSE, align 4
  %23 = load i32, i32* @FRMR_IS_STALE, align 4
  %24 = call i32 @rds_transition_frwr_state(%struct.rds_ib_mr* %21, i32 %22, i32 %23)
  %25 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %26 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = call i64 @rds_conn_up(%struct.TYPE_5__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %20
  %31 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %32 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %35 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %39 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %43 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %46 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ib_wc_status_msg(i64 %47)
  %49 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %50 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @rds_ib_conn_error(%struct.TYPE_5__* %33, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32* %37, i32* %41, i64 %44, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %30, %20
  br label %54

54:                                               ; preds = %53, %2
  %55 = load %struct.rds_ib_frmr*, %struct.rds_ib_frmr** %6, align 8
  %56 = getelementptr inbounds %struct.rds_ib_frmr, %struct.rds_ib_frmr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %61 = load i32, i32* @FRMR_IS_INUSE, align 4
  %62 = load i32, i32* @FRMR_IS_FREE, align 4
  %63 = call i32 @rds_transition_frwr_state(%struct.rds_ib_mr* %60, i32 %61, i32 %62)
  %64 = load %struct.rds_ib_frmr*, %struct.rds_ib_frmr** %6, align 8
  %65 = getelementptr inbounds %struct.rds_ib_frmr, %struct.rds_ib_frmr* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  %66 = load %struct.rds_ib_frmr*, %struct.rds_ib_frmr** %6, align 8
  %67 = getelementptr inbounds %struct.rds_ib_frmr, %struct.rds_ib_frmr* %66, i32 0, i32 3
  %68 = call i32 @wake_up(i32* %67)
  br label %69

69:                                               ; preds = %59, %54
  %70 = load %struct.rds_ib_frmr*, %struct.rds_ib_frmr** %6, align 8
  %71 = getelementptr inbounds %struct.rds_ib_frmr, %struct.rds_ib_frmr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.rds_ib_frmr*, %struct.rds_ib_frmr** %6, align 8
  %76 = getelementptr inbounds %struct.rds_ib_frmr, %struct.rds_ib_frmr* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  %77 = load %struct.rds_ib_frmr*, %struct.rds_ib_frmr** %6, align 8
  %78 = getelementptr inbounds %struct.rds_ib_frmr, %struct.rds_ib_frmr* %77, i32 0, i32 2
  %79 = call i32 @wake_up(i32* %78)
  br label %80

80:                                               ; preds = %74, %69
  %81 = call i32 (...) @smp_mb__before_atomic()
  %82 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %83 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %82, i32 0, i32 0
  %84 = call i32 @atomic_inc(i32* %83)
  ret void
}

declare dso_local i32 @rds_transition_frwr_state(%struct.rds_ib_mr*, i32, i32) #1

declare dso_local i64 @rds_conn_up(%struct.TYPE_5__*) #1

declare dso_local i32 @rds_ib_conn_error(%struct.TYPE_5__*, i8*, i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @ib_wc_status_msg(i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
