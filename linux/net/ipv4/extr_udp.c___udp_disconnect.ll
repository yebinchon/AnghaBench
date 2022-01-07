; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c___udp_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c___udp_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.sock*)* }
%struct.inet_sock = type { i64, i64, i64 }

@TCP_CLOSE = common dso_local global i32 0, align 4
@SOCK_BINDADDR_LOCK = common dso_local global i32 0, align 4
@SOCK_BINDPORT_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__udp_disconnect(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inet_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.inet_sock* @inet_sk(%struct.sock* %6)
  store %struct.inet_sock* %7, %struct.inet_sock** %5, align 8
  %8 = load i32, i32* @TCP_CLOSE, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %12 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %14 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = call i32 @sock_rps_reset_rxhash(%struct.sock* %15)
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SOCK_BINDADDR_LOCK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = call i32 @inet_reset_saddr(%struct.sock* %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SOCK_BINDPORT_LOCK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %28
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %39, align 8
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = call i32 %40(%struct.sock* %41)
  %43 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %44 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %35, %28
  %46 = load %struct.sock*, %struct.sock** %3, align 8
  %47 = call i32 @sk_dst_reset(%struct.sock* %46)
  ret i32 0
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @sock_rps_reset_rxhash(%struct.sock*) #1

declare dso_local i32 @inet_reset_saddr(%struct.sock*) #1

declare dso_local i32 @sk_dst_reset(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
