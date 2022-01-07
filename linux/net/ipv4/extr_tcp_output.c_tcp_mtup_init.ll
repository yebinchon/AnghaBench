; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_mtup_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_mtup_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.inet_connection_sock = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.net = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@tcp_jiffies32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_mtup_init(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.inet_connection_sock*, align 8
  %5 = alloca %struct.net*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %6)
  store %struct.tcp_sock* %7, %struct.tcp_sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %8)
  store %struct.inet_connection_sock* %9, %struct.inet_connection_sock** %4, align 8
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call %struct.net* @sock_net(%struct.sock* %10)
  store %struct.net* %11, %struct.net** %5, align 8
  %12 = load %struct.net*, %struct.net** %5, align 8
  %13 = getelementptr inbounds %struct.net, %struct.net* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %19 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, 4
  %26 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %27 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %25, %30
  %32 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %33 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  store i64 %31, i64* %34, align 8
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = load %struct.net*, %struct.net** %5, align 8
  %37 = getelementptr inbounds %struct.net, %struct.net* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @tcp_mss_to_mtu(%struct.sock* %35, i32 %39)
  %41 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %42 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 8
  %44 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %45 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %48 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %1
  %53 = load i32, i32* @tcp_jiffies32, align 4
  %54 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %55 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %1
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_mss_to_mtu(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
