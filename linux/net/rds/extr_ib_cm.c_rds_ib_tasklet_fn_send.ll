; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_cm.c_rds_ib_tasklet_fn_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_cm.c_rds_ib_tasklet_fn_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_connection = type { %struct.rds_connection*, i32, i32, i32 }
%struct.rds_connection = type { i32*, i32, i32 }

@s_ib_tasklet_call = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@RDS_LL_SEND_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rds_ib_tasklet_fn_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_ib_tasklet_fn_send(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rds_ib_connection*, align 8
  %4 = alloca %struct.rds_connection*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.rds_ib_connection*
  store %struct.rds_ib_connection* %6, %struct.rds_ib_connection** %3, align 8
  %7 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %8 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %7, i32 0, i32 0
  %9 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  store %struct.rds_connection* %9, %struct.rds_connection** %4, align 8
  %10 = load i32, i32* @s_ib_tasklet_call, align 4
  %11 = call i32 @rds_ib_stats_inc(i32 %10)
  %12 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %13 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %12, i32 0, i32 3
  %14 = call i64 @atomic_read(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %61

17:                                               ; preds = %1
  %18 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %19 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %20 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %23 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @poll_scq(%struct.rds_ib_connection* %18, i32 %21, i32 %24)
  %26 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %27 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %30 = call i32 @ib_req_notify_cq(i32 %28, i32 %29)
  %31 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %32 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %33 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %36 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @poll_scq(%struct.rds_ib_connection* %31, i32 %34, i32 %37)
  %39 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %40 = call i64 @rds_conn_up(%struct.rds_connection* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %17
  %43 = load i32, i32* @RDS_LL_SEND_FULL, align 4
  %44 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %45 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %44, i32 0, i32 2
  %46 = call i64 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %50 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %49, i32 0, i32 1
  %51 = call i64 @test_bit(i32 0, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48, %42
  %54 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %55 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %54, i32 0, i32 0
  %56 = load %struct.rds_connection*, %struct.rds_connection** %55, align 8
  %57 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = call i32 @rds_send_xmit(i32* %59)
  br label %61

61:                                               ; preds = %16, %53, %48, %17
  ret void
}

declare dso_local i32 @rds_ib_stats_inc(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @poll_scq(%struct.rds_ib_connection*, i32, i32) #1

declare dso_local i32 @ib_req_notify_cq(i32, i32) #1

declare dso_local i64 @rds_conn_up(%struct.rds_connection*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rds_send_xmit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
