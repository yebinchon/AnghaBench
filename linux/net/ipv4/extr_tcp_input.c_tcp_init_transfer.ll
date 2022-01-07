; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_init_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_init_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sock*)* }
%struct.tcp_sock = type { i32, i32, i32, i64 }

@tcp_jiffies32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_init_transfer(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inet_connection_sock*, align 8
  %6 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %7)
  store %struct.inet_connection_sock* %8, %struct.inet_connection_sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %6, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call i32 @tcp_mtup_init(%struct.sock* %11)
  %13 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %14 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %16, align 8
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = call i32 %17(%struct.sock* %18)
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = call i32 @tcp_init_metrics(%struct.sock* %20)
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %33 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  br label %41

34:                                               ; preds = %26, %2
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = call i32 @__sk_dst_get(%struct.sock* %36)
  %38 = call i32 @tcp_init_cwnd(%struct.tcp_sock* %35, i32 %37)
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %31
  %42 = load i32, i32* @tcp_jiffies32, align 4
  %43 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %44 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @tcp_call_bpf(%struct.sock* %45, i32 %46, i32 0, i32* null)
  %48 = load %struct.sock*, %struct.sock** %3, align 8
  %49 = call i32 @tcp_init_congestion_control(%struct.sock* %48)
  %50 = load %struct.sock*, %struct.sock** %3, align 8
  %51 = call i32 @tcp_init_buffer_space(%struct.sock* %50)
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_mtup_init(%struct.sock*) #1

declare dso_local i32 @tcp_init_metrics(%struct.sock*) #1

declare dso_local i32 @tcp_init_cwnd(%struct.tcp_sock*, i32) #1

declare dso_local i32 @__sk_dst_get(%struct.sock*) #1

declare dso_local i32 @tcp_call_bpf(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @tcp_init_congestion_control(%struct.sock*) #1

declare dso_local i32 @tcp_init_buffer_space(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
