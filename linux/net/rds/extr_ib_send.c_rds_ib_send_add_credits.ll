; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_send.c_rds_ib_send_add_credits.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_send.c_rds_ib_send_add_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { i32, i32, %struct.rds_ib_connection* }
%struct.rds_ib_connection = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"credits=%u current=%u%s\0A\00", align 1
@RDS_LL_SEND_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c", ll_send_full\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rds_wq = common dso_local global i32 0, align 4
@s_ib_rx_credit_updates = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_ib_send_add_credits(%struct.rds_connection* %0, i32 %1) #0 {
  %3 = alloca %struct.rds_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_ib_connection*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %7 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %6, i32 0, i32 2
  %8 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %7, align 8
  store %struct.rds_ib_connection* %8, %struct.rds_ib_connection** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %49

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %5, align 8
  %15 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %14, i32 0, i32 0
  %16 = call i32 @atomic_read(i32* %15)
  %17 = call i32 @IB_GET_SEND_CREDITS(i32 %16)
  %18 = load i32, i32* @RDS_LL_SEND_FULL, align 4
  %19 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %20 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %19, i32 0, i32 1
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 @rdsdebug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17, i8* %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @IB_SET_SEND_CREDITS(i32 %26)
  %28 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %5, align 8
  %29 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %28, i32 0, i32 0
  %30 = call i32 @atomic_add(i32 %27, i32* %29)
  %31 = load i32, i32* @RDS_LL_SEND_FULL, align 4
  %32 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %33 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %32, i32 0, i32 1
  %34 = call i64 @test_and_clear_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %12
  %37 = load i32, i32* @rds_wq, align 4
  %38 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %39 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %38, i32 0, i32 0
  %40 = call i32 @queue_delayed_work(i32 %37, i32* %39, i32 0)
  br label %41

41:                                               ; preds = %36, %12
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @IB_GET_SEND_CREDITS(i32 %42)
  %44 = icmp sge i32 %43, 16384
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON(i32 %45)
  %47 = load i32, i32* @s_ib_rx_credit_updates, align 4
  %48 = call i32 @rds_ib_stats_inc(i32 %47)
  br label %49

49:                                               ; preds = %41, %11
  ret void
}

declare dso_local i32 @rdsdebug(i8*, i32, i32, i8*) #1

declare dso_local i32 @IB_GET_SEND_CREDITS(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @IB_SET_SEND_CREDITS(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rds_ib_stats_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
