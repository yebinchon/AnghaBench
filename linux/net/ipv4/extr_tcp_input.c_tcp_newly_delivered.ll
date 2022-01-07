; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_newly_delivered.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_newly_delivered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.tcp_sock = type { i32, i64 }

@LINUX_MIB_TCPDELIVERED = common dso_local global i32 0, align 4
@FLAG_ECE = common dso_local global i32 0, align 4
@LINUX_MIB_TCPDELIVEREDCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock*, i64, i32)* @tcp_newly_delivered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tcp_newly_delivered(%struct.sock* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.tcp_sock*, align 8
  %9 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.net* @sock_net(%struct.sock* %10)
  store %struct.net* %11, %struct.net** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %12)
  store %struct.tcp_sock* %13, %struct.tcp_sock** %8, align 8
  %14 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %15 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = sub nsw i64 %16, %17
  store i64 %18, i64* %9, align 8
  %19 = load %struct.net*, %struct.net** %7, align 8
  %20 = load i32, i32* @LINUX_MIB_TCPDELIVERED, align 4
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @NET_ADD_STATS(%struct.net* %19, i32 %20, i64 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @FLAG_ECE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %3
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %30 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 8
  %35 = load %struct.net*, %struct.net** %7, align 8
  %36 = load i32, i32* @LINUX_MIB_TCPDELIVEREDCE, align 4
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @NET_ADD_STATS(%struct.net* %35, i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %27, %3
  %40 = load i64, i64* %9, align 8
  ret i64 %40
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @NET_ADD_STATS(%struct.net*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
