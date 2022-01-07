; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cong.c_tcp_init_congestion_control.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cong.c_tcp_init_congestion_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.sock*)* }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_init_congestion_control(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %4)
  store %struct.inet_connection_sock* %5, %struct.inet_connection_sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.TYPE_4__* @tcp_sk(%struct.sock* %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %10 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %12, align 8
  %14 = icmp ne i32 (%struct.sock*)* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %17 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %19, align 8
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = call i32 %20(%struct.sock* %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = call i64 @tcp_ca_needs_ecn(%struct.sock* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.sock*, %struct.sock** %2, align 8
  %29 = call i32 @INET_ECN_xmit(%struct.sock* %28)
  br label %33

30:                                               ; preds = %23
  %31 = load %struct.sock*, %struct.sock** %2, align 8
  %32 = call i32 @INET_ECN_dontxmit(%struct.sock* %31)
  br label %33

33:                                               ; preds = %30, %27
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_ca_needs_ecn(%struct.sock*) #1

declare dso_local i32 @INET_ECN_xmit(%struct.sock*) #1

declare dso_local i32 @INET_ECN_dontxmit(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
