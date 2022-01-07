; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_connection.c_rds_conn_path_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_connection.c_rds_conn_path_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_conn_path = type { i64, %struct.rds_connection* }
%struct.rds_connection = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"connection %pI6c to %pI6c reset\0A\00", align 1
@s_conn_reset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_conn_path*)* @rds_conn_path_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_conn_path_reset(%struct.rds_conn_path* %0) #0 {
  %2 = alloca %struct.rds_conn_path*, align 8
  %3 = alloca %struct.rds_connection*, align 8
  store %struct.rds_conn_path* %0, %struct.rds_conn_path** %2, align 8
  %4 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %5 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %4, i32 0, i32 1
  %6 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  store %struct.rds_connection* %6, %struct.rds_connection** %3, align 8
  %7 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %8 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %7, i32 0, i32 1
  %9 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %10 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %9, i32 0, i32 0
  %11 = call i32 @rdsdebug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %10)
  %12 = load i32, i32* @s_conn_reset, align 4
  %13 = call i32 @rds_stats_inc(i32 %12)
  %14 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %15 = call i32 @rds_send_path_reset(%struct.rds_conn_path* %14)
  %16 = load %struct.rds_conn_path*, %struct.rds_conn_path** %2, align 8
  %17 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  ret void
}

declare dso_local i32 @rdsdebug(i8*, i32*, i32*) #1

declare dso_local i32 @rds_stats_inc(i32) #1

declare dso_local i32 @rds_send_path_reset(%struct.rds_conn_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
