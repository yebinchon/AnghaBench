; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_update_rtt_min.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_update_rtt_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@HZ = common dso_local global i64 0, align 8
@FLAG_ACK_MAYBE_DELAYED = common dso_local global i32 0, align 4
@tcp_jiffies32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i64, i32)* @tcp_update_rtt_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_update_rtt_min(%struct.sock* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.TYPE_4__* @sock_net(%struct.sock* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HZ, align 8
  %15 = mul nsw i64 %13, %14
  store i64 %15, i64* %7, align 8
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %16)
  store %struct.tcp_sock* %17, %struct.tcp_sock** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @FLAG_ACK_MAYBE_DELAYED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %25 = call i64 @tcp_min_rtt(%struct.tcp_sock* %24)
  %26 = icmp sgt i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %43

28:                                               ; preds = %22, %3
  %29 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %30 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %29, i32 0, i32 0
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* @tcp_jiffies32, align 4
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %39

36:                                               ; preds = %28
  %37 = call i32 @jiffies_to_usecs(i32 1)
  %38 = sext i32 %37 to i64
  br label %39

39:                                               ; preds = %36, %35
  %40 = phi i64 [ %33, %35 ], [ %38, %36 ]
  %41 = trunc i64 %40 to i32
  %42 = call i32 @minmax_running_min(i32* %30, i64 %31, i32 %32, i32 %41)
  br label %43

43:                                               ; preds = %39, %27
  ret void
}

declare dso_local %struct.TYPE_4__* @sock_net(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_min_rtt(%struct.tcp_sock*) #1

declare dso_local i32 @minmax_running_min(i32*, i64, i32, i32) #1

declare dso_local i32 @jiffies_to_usecs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
