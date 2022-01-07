; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_mtu_probing.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_mtu_probing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_connection_sock = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sock = type { i32 }
%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@tcp_jiffies32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet_connection_sock*, %struct.sock*)* @tcp_mtu_probing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_mtu_probing(%struct.inet_connection_sock* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.inet_connection_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  store %struct.inet_connection_sock* %0, %struct.inet_connection_sock** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = call %struct.net* @sock_net(%struct.sock* %7)
  store %struct.net* %8, %struct.net** %5, align 8
  %9 = load %struct.net*, %struct.net** %5, align 8
  %10 = getelementptr inbounds %struct.net, %struct.net* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %67

15:                                               ; preds = %2
  %16 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %17 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %23 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @tcp_jiffies32, align 4
  %26 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %27 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  br label %61

29:                                               ; preds = %15
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %32 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @tcp_mtu_to_mss(%struct.sock* %30, i32 %34)
  %36 = ashr i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load %struct.net*, %struct.net** %5, align 8
  %38 = getelementptr inbounds %struct.net, %struct.net* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @min(i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.net*, %struct.net** %5, align 8
  %45 = getelementptr inbounds %struct.net, %struct.net* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @max(i32 %43, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.net*, %struct.net** %5, align 8
  %51 = getelementptr inbounds %struct.net, %struct.net* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @max(i32 %49, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.sock*, %struct.sock** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @tcp_mss_to_mtu(%struct.sock* %55, i32 %56)
  %58 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %59 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %29, %21
  %62 = load %struct.sock*, %struct.sock** %4, align 8
  %63 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %64 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @tcp_sync_mss(%struct.sock* %62, i32 %65)
  br label %67

67:                                               ; preds = %61, %14
  ret void
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_mtu_to_mss(%struct.sock*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @tcp_mss_to_mtu(%struct.sock*, i32) #1

declare dso_local i32 @tcp_sync_mss(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
