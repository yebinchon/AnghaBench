; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_threads.c_rds_queue_reconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_threads.c_rds_queue_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_conn_path = type { i64, i32, %struct.rds_connection*, i32 }
%struct.rds_connection = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"conn %p for %pI6c to %pI6c reconnect jiffies %lu\0A\00", align 1
@RDS_TRANS_TCP = common dso_local global i64 0, align 8
@RDS_RECONNECT_PENDING = common dso_local global i32 0, align 4
@rds_sysctl_reconnect_min_jiffies = common dso_local global i64 0, align 8
@rds_wq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"%lu delay %lu ceil conn %p for %pI6c -> %pI6c\0A\00", align 1
@rds_sysctl_reconnect_max_jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_queue_reconnect(%struct.rds_conn_path* %0) #0 {
  %2 = alloca %struct.rds_conn_path*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.rds_connection*, align 8
  store %struct.rds_conn_path* %0, %struct.rds_conn_path** %2, align 8
  %5 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %6 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %5, i32 0, i32 2
  %7 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  store %struct.rds_connection* %7, %struct.rds_connection** %4, align 8
  %8 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %9 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %10 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %9, i32 0, i32 1
  %11 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %12 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %11, i32 0, i32 0
  %13 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %14 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.rds_connection* %8, i32* %10, i32* %12, i64 %15)
  %17 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %18 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RDS_TRANS_TCP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %26 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %25, i32 0, i32 1
  %27 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %28 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %27, i32 0, i32 0
  %29 = call i64 @rds_addr_cmp(i32* %26, i32* %28)
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %101

32:                                               ; preds = %24, %1
  %33 = load i32, i32* @RDS_RECONNECT_PENDING, align 4
  %34 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %35 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %34, i32 0, i32 3
  %36 = call i32 @set_bit(i32 %33, i32* %35)
  %37 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %38 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %32
  %42 = load i64, i64* @rds_sysctl_reconnect_min_jiffies, align 8
  %43 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %44 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = call i32 (...) @rcu_read_lock()
  %46 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %47 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %46, i32 0, i32 2
  %48 = load %struct.rds_connection*, %struct.rds_connection** %47, align 8
  %49 = call i32 @rds_destroy_pending(%struct.rds_connection* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %41
  %52 = load i32, i32* @rds_wq, align 4
  %53 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %54 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %53, i32 0, i32 1
  %55 = call i32 @queue_delayed_work(i32 %52, i32* %54, i64 0)
  br label %56

56:                                               ; preds = %51, %41
  %57 = call i32 (...) @rcu_read_unlock()
  br label %101

58:                                               ; preds = %32
  %59 = call i32 @get_random_bytes(i64* %3, i32 8)
  %60 = load i64, i64* %3, align 8
  %61 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %62 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = urem i64 %60, %63
  %65 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %66 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %69 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %70 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %69, i32 0, i32 1
  %71 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %72 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %71, i32 0, i32 0
  %73 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %64, i64 %67, %struct.rds_connection* %68, i32* %70, i32* %72)
  %74 = call i32 (...) @rcu_read_lock()
  %75 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %76 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %75, i32 0, i32 2
  %77 = load %struct.rds_connection*, %struct.rds_connection** %76, align 8
  %78 = call i32 @rds_destroy_pending(%struct.rds_connection* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %58
  %81 = load i32, i32* @rds_wq, align 4
  %82 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %83 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %82, i32 0, i32 1
  %84 = load i64, i64* %3, align 8
  %85 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %86 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = urem i64 %84, %87
  %89 = call i32 @queue_delayed_work(i32 %81, i32* %83, i64 %88)
  br label %90

90:                                               ; preds = %80, %58
  %91 = call i32 (...) @rcu_read_unlock()
  %92 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %93 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = mul i64 %94, 2
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* @rds_sysctl_reconnect_max_jiffies, align 4
  %98 = call i64 @min(i32 %96, i32 %97)
  %99 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %100 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %90, %56, %31
  ret void
}

declare dso_local i32 @rdsdebug(i8*, ...) #1

declare dso_local i64 @rds_addr_cmp(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @rds_destroy_pending(%struct.rds_connection*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @get_random_bytes(i64*, i32) #1

declare dso_local i64 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
