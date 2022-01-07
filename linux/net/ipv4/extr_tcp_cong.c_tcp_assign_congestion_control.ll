; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cong.c_tcp_assign_congestion_control.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cong.c_tcp_assign_congestion_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_congestion_ops = type { i32, i32 }
%struct.sock = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.inet_connection_sock = type { i32, %struct.tcp_congestion_ops* }

@tcp_reno = common dso_local global %struct.tcp_congestion_ops zeroinitializer, align 4
@TCP_CONG_NEEDS_ECN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_assign_congestion_control(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.inet_connection_sock*, align 8
  %5 = alloca %struct.tcp_congestion_ops*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.net* @sock_net(%struct.sock* %6)
  store %struct.net* %7, %struct.net** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %8)
  store %struct.inet_connection_sock* %9, %struct.inet_connection_sock** %4, align 8
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.net*, %struct.net** %3, align 8
  %12 = getelementptr inbounds %struct.net, %struct.net* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.tcp_congestion_ops* @rcu_dereference(i32 %14)
  store %struct.tcp_congestion_ops* %15, %struct.tcp_congestion_ops** %5, align 8
  %16 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %5, align 8
  %17 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @try_module_get(i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store %struct.tcp_congestion_ops* @tcp_reno, %struct.tcp_congestion_ops** %5, align 8
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %5, align 8
  %28 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %29 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %28, i32 0, i32 1
  store %struct.tcp_congestion_ops* %27, %struct.tcp_congestion_ops** %29, align 8
  %30 = call i32 (...) @rcu_read_unlock()
  %31 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %32 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @memset(i32 %33, i32 0, i32 4)
  %35 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %5, align 8
  %36 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TCP_CONG_NEEDS_ECN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %26
  %42 = load %struct.sock*, %struct.sock** %2, align 8
  %43 = call i32 @INET_ECN_xmit(%struct.sock* %42)
  br label %47

44:                                               ; preds = %26
  %45 = load %struct.sock*, %struct.sock** %2, align 8
  %46 = call i32 @INET_ECN_dontxmit(%struct.sock* %45)
  br label %47

47:                                               ; preds = %44, %41
  ret void
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tcp_congestion_ops* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @INET_ECN_xmit(%struct.sock*) #1

declare dso_local i32 @INET_ECN_dontxmit(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
