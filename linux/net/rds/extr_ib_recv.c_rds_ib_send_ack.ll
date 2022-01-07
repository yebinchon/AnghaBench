; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_send_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_connection = type { i32, i32, i32, %struct.TYPE_2__*, i32, %struct.rds_header* }
%struct.TYPE_2__ = type { i32 }
%struct.rds_header = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"send_ack: ic %p ack %llu\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@IB_ACK_IN_FLIGHT = common dso_local global i32 0, align 4
@IB_ACK_REQUESTED = common dso_local global i32 0, align 4
@s_ib_ack_send_failure = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"sending ack failed\0A\00", align 1
@s_ib_ack_sent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_ib_connection*, i32)* @rds_ib_send_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_ib_send_ack(%struct.rds_ib_connection* %0, i32 %1) #0 {
  %3 = alloca %struct.rds_ib_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_header*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.rds_ib_connection* %0, %struct.rds_ib_connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %9 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %8, i32 0, i32 5
  %10 = load %struct.rds_header*, %struct.rds_header** %9, align 8
  store %struct.rds_header* %10, %struct.rds_header** %5, align 8
  %11 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %12 = call i64 @rds_ib_get_ack(%struct.rds_ib_connection* %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @rdsdebug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.rds_ib_connection* %13, i64 %14)
  %16 = load %struct.rds_header*, %struct.rds_header** %5, align 8
  %17 = call i32 @rds_message_populate_header(%struct.rds_header* %16, i32 0, i32 0, i32 0)
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @cpu_to_be64(i64 %18)
  %20 = load %struct.rds_header*, %struct.rds_header** %5, align 8
  %21 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.rds_header*, %struct.rds_header** %5, align 8
  %24 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.rds_header*, %struct.rds_header** %5, align 8
  %26 = call i32 @rds_message_make_checksum(%struct.rds_header* %25)
  %27 = load i32, i32* @jiffies, align 4
  %28 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %29 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %31 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %36 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %35, i32 0, i32 2
  %37 = call i32 @ib_post_send(i32 %34, i32* %36, i32* null)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %2
  %42 = load i32, i32* @IB_ACK_IN_FLIGHT, align 4
  %43 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %44 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %43, i32 0, i32 1
  %45 = call i32 @clear_bit(i32 %42, i32* %44)
  %46 = load i32, i32* @IB_ACK_REQUESTED, align 4
  %47 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %48 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %47, i32 0, i32 1
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  %50 = load i32, i32* @s_ib_ack_send_failure, align 4
  %51 = call i32 @rds_ib_stats_inc(i32 %50)
  %52 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %3, align 8
  %53 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @rds_ib_conn_error(i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %59

56:                                               ; preds = %2
  %57 = load i32, i32* @s_ib_ack_sent, align 4
  %58 = call i32 @rds_ib_stats_inc(i32 %57)
  br label %59

59:                                               ; preds = %56, %41
  ret void
}

declare dso_local i64 @rds_ib_get_ack(%struct.rds_ib_connection*) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_ib_connection*, i64) #1

declare dso_local i32 @rds_message_populate_header(%struct.rds_header*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @rds_message_make_checksum(%struct.rds_header*) #1

declare dso_local i32 @ib_post_send(i32, i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rds_ib_stats_inc(i32) #1

declare dso_local i32 @rds_ib_conn_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
