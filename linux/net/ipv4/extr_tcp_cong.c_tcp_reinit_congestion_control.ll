; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cong.c_tcp_reinit_congestion_control.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cong.c_tcp_reinit_congestion_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.tcp_congestion_ops = type { i32 }
%struct.inet_connection_sock = type { i32, i32, %struct.tcp_congestion_ops* }

@TCP_CLOSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.tcp_congestion_ops*)* @tcp_reinit_congestion_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_reinit_congestion_control(%struct.sock* %0, %struct.tcp_congestion_ops* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tcp_congestion_ops*, align 8
  %5 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.tcp_congestion_ops* %1, %struct.tcp_congestion_ops** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %6)
  store %struct.inet_connection_sock* %7, %struct.inet_connection_sock** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call i32 @tcp_cleanup_congestion_control(%struct.sock* %8)
  %10 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %4, align 8
  %11 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %12 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %11, i32 0, i32 2
  store %struct.tcp_congestion_ops* %10, %struct.tcp_congestion_ops** %12, align 8
  %13 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %14 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %16 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memset(i32 %17, i32 0, i32 4)
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TCP_CLOSE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = call i32 @tcp_init_congestion_control(%struct.sock* %25)
  br label %27

27:                                               ; preds = %24, %2
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @tcp_cleanup_congestion_control(%struct.sock*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @tcp_init_congestion_control(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
