; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_hashkey_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_hashkey_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.ip_vs_conn_param = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_conn*)* @ip_vs_conn_hashkey_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_conn_hashkey_conn(%struct.ip_vs_conn* %0) #0 {
  %2 = alloca %struct.ip_vs_conn*, align 8
  %3 = alloca %struct.ip_vs_conn_param, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %2, align 8
  %4 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %5 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %4, i32 0, i32 7
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %8 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %11 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %14 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %13, i32 0, i32 4
  %15 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %16 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ip_vs_conn_fill_param(i32 %6, i32 %9, i32 %12, i32* %14, i32 %17, i32* null, i32 0, %struct.ip_vs_conn_param* %3)
  %19 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %20 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %25 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %3, i32 0, i32 2
  store i64 %26, i64* %27, align 8
  %28 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %29 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %3, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %33 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %3, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  br label %36

36:                                               ; preds = %23, %1
  %37 = call i32 @ip_vs_conn_hashkey_param(%struct.ip_vs_conn_param* %3, i32 0)
  ret i32 %37
}

declare dso_local i32 @ip_vs_conn_fill_param(i32, i32, i32, i32*, i32, i32*, i32, %struct.ip_vs_conn_param*) #1

declare dso_local i32 @ip_vs_conn_hashkey_param(%struct.ip_vs_conn_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
