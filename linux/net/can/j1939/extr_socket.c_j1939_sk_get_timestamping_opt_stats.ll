; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_get_timestamping_opt_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_get_timestamping_opt_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.j1939_session = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@J1939_SIMPLE = common dso_local global i64 0, align 8
@J1939_NLA_BYTES_ACKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.j1939_session*)* @j1939_sk_get_timestamping_opt_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @j1939_sk_get_timestamping_opt_stats(%struct.j1939_session* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.j1939_session*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.j1939_session* %0, %struct.j1939_session** %3, align 8
  %6 = call i32 (...) @j1939_sk_opt_stats_get_size()
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.sk_buff* @alloc_skb(i32 %6, i32 %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %14 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @J1939_SIMPLE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %22 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  br label %34

24:                                               ; preds = %12
  %25 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %26 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 7
  %30 = load %struct.j1939_session*, %struct.j1939_session** %3, align 8
  %31 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @min(i32 %29, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %24, %20
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load i32, i32* @J1939_NLA_BYTES_ACKED, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @nla_put_u32(%struct.sk_buff* %35, i32 %36, i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %39, %struct.sk_buff** %2, align 8
  br label %40

40:                                               ; preds = %34, %11
  %41 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %41
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @j1939_sk_opt_stats_get_size(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
