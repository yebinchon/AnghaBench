; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_mtu_check_reprobe.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_mtu_check_reprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i8*, i32, i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.tcp_sock = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@tcp_jiffies32 = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_mtu_check_reprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_mtu_check_reprobe(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_connection_sock*, align 8
  %4 = alloca %struct.tcp_sock*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %9)
  store %struct.inet_connection_sock* %10, %struct.inet_connection_sock** %3, align 8
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %11)
  store %struct.tcp_sock* %12, %struct.tcp_sock** %4, align 8
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = call %struct.net* @sock_net(%struct.sock* %13)
  store %struct.net* %14, %struct.net** %5, align 8
  %15 = load %struct.net*, %struct.net** %5, align 8
  %16 = getelementptr inbounds %struct.net, %struct.net* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i8*, i8** @tcp_jiffies32, align 8
  %20 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %21 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = ptrtoint i8* %19 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 %29, %30
  %32 = icmp sge i32 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %1
  %37 = load %struct.sock*, %struct.sock** %2, align 8
  %38 = call i32 @tcp_current_mss(%struct.sock* %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %40 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %43 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 4
  %47 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %48 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %46, %51
  %53 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %54 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  store i64 %52, i64* %55, align 8
  %56 = load %struct.sock*, %struct.sock** %2, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @tcp_mss_to_mtu(%struct.sock* %56, i32 %57)
  %59 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %60 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  %62 = load i8*, i8** @tcp_jiffies32, align 8
  %63 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %64 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  br label %66

66:                                               ; preds = %36, %1
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tcp_current_mss(%struct.sock*) #1

declare dso_local i32 @tcp_mss_to_mtu(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
