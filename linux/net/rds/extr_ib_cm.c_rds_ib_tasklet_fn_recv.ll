; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_cm.c_rds_ib_tasklet_fn_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_cm.c_rds_ib_tasklet_fn_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_connection = type { i64, i32, i32, i32, %struct.rds_ib_device*, %struct.rds_connection* }
%struct.rds_ib_device = type { i32 }
%struct.rds_connection = type { i32 }
%struct.rds_ib_ack_state = type { i64, i64, i32, i32, i64 }

@s_ib_tasklet_call = common dso_local global i32 0, align 4
@IB_CQ_SOLICITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rds_ib_tasklet_fn_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_ib_tasklet_fn_recv(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rds_ib_connection*, align 8
  %4 = alloca %struct.rds_connection*, align 8
  %5 = alloca %struct.rds_ib_device*, align 8
  %6 = alloca %struct.rds_ib_ack_state, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.rds_ib_connection*
  store %struct.rds_ib_connection* %8, %struct.rds_ib_connection** %3, align 8
  %9 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %10 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %9, i32 0, i32 5
  %11 = load %struct.rds_connection*, %struct.rds_connection** %10, align 8
  store %struct.rds_connection* %11, %struct.rds_connection** %4, align 8
  %12 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %13 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %12, i32 0, i32 4
  %14 = load %struct.rds_ib_device*, %struct.rds_ib_device** %13, align 8
  store %struct.rds_ib_device* %14, %struct.rds_ib_device** %5, align 8
  %15 = load %struct.rds_ib_device*, %struct.rds_ib_device** %5, align 8
  %16 = icmp ne %struct.rds_ib_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %19 = call i32 @rds_conn_drop(%struct.rds_connection* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* @s_ib_tasklet_call, align 4
  %22 = call i32 @rds_ib_stats_inc(i32 %21)
  %23 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %24 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %23, i32 0, i32 3
  %25 = call i64 @atomic_read(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %88

28:                                               ; preds = %20
  %29 = call i32 @memset(%struct.rds_ib_ack_state* %6, i32 0, i32 32)
  %30 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %31 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %32 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %35 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @poll_rcq(%struct.rds_ib_connection* %30, i32 %33, i32 %36, %struct.rds_ib_ack_state* %6)
  %38 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %39 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IB_CQ_SOLICITED, align 4
  %42 = call i32 @ib_req_notify_cq(i32 %40, i32 %41)
  %43 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %44 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %45 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %48 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @poll_rcq(%struct.rds_ib_connection* %43, i32 %46, i32 %49, %struct.rds_ib_ack_state* %6)
  %51 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %6, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %28
  %55 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %56 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %6, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %6, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @rds_ib_set_ack(%struct.rds_ib_connection* %55, i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %54, %28
  %62 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %6, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %6, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %69 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %74 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %6, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @rds_send_drop_acked(%struct.rds_connection* %73, i64 %75, i32* null)
  %77 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %6, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %80 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %72, %65, %61
  %82 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %83 = call i64 @rds_conn_up(%struct.rds_connection* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %87 = call i32 @rds_ib_attempt_ack(%struct.rds_ib_connection* %86)
  br label %88

88:                                               ; preds = %27, %85, %81
  ret void
}

declare dso_local i32 @rds_conn_drop(%struct.rds_connection*) #1

declare dso_local i32 @rds_ib_stats_inc(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @memset(%struct.rds_ib_ack_state*, i32, i32) #1

declare dso_local i32 @poll_rcq(%struct.rds_ib_connection*, i32, i32, %struct.rds_ib_ack_state*) #1

declare dso_local i32 @ib_req_notify_cq(i32, i32) #1

declare dso_local i32 @rds_ib_set_ack(%struct.rds_ib_connection*, i32, i32) #1

declare dso_local i32 @rds_send_drop_acked(%struct.rds_connection*, i64, i32*) #1

declare dso_local i64 @rds_conn_up(%struct.rds_connection*) #1

declare dso_local i32 @rds_ib_attempt_ack(%struct.rds_ib_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
