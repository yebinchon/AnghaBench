; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_send.c_rds_send_ping.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_send.c_rds_send_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { i32, %struct.rds_conn_path* }
%struct.rds_conn_path = type { i32 }

@RDS_FLAG_PROBE_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_send_ping(%struct.rds_connection* %0, i32 %1) #0 {
  %3 = alloca %struct.rds_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.rds_conn_path*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %8 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %7, i32 0, i32 1
  %9 = load %struct.rds_conn_path*, %struct.rds_conn_path** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %9, i64 %11
  store %struct.rds_conn_path* %12, %struct.rds_conn_path** %6, align 8
  %13 = load %struct.rds_conn_path*, %struct.rds_conn_path** %6, align 8
  %14 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %18 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.rds_conn_path*, %struct.rds_conn_path** %6, align 8
  %23 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %22, i32 0, i32 0
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  br label %37

26:                                               ; preds = %2
  %27 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %28 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.rds_conn_path*, %struct.rds_conn_path** %6, align 8
  %30 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %29, i32 0, i32 0
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.rds_conn_path*, %struct.rds_conn_path** %6, align 8
  %34 = load i32, i32* @RDS_FLAG_PROBE_PORT, align 4
  %35 = call i32 @cpu_to_be16(i32 %34)
  %36 = call i32 @rds_send_probe(%struct.rds_conn_path* %33, i32 %35, i32 0, i32 0)
  br label %37

37:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rds_send_probe(%struct.rds_conn_path*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
