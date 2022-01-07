; ModuleID = '/home/carl/AnghaBench/linux/net/extr_socket.c_put_ts_pktinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/extr_socket.c_put_ts_pktinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.sk_buff = type { i64 }
%struct.scm_ts_pktinfo = type { i64, i32 }
%struct.net_device = type { i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SCM_TIMESTAMPING_PKTINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msghdr*, %struct.sk_buff*)* @put_ts_pktinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_ts_pktinfo(%struct.msghdr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.msghdr*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.scm_ts_pktinfo, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.msghdr* %0, %struct.msghdr** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call i32 @skb_mac_header_was_set(%struct.sk_buff* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %37

11:                                               ; preds = %2
  %12 = call i32 @memset(%struct.scm_ts_pktinfo* %5, i32 0, i32 16)
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @skb_napi_id(%struct.sk_buff* %14)
  %16 = call %struct.net_device* @dev_get_by_napi_id(i32 %15)
  store %struct.net_device* %16, %struct.net_device** %6, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.scm_ts_pktinfo, %struct.scm_ts_pktinfo* %5, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  br label %24

24:                                               ; preds = %19, %11
  %25 = call i32 (...) @rcu_read_unlock()
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i64 @skb_mac_offset(%struct.sk_buff* %29)
  %31 = sub nsw i64 %28, %30
  %32 = getelementptr inbounds %struct.scm_ts_pktinfo, %struct.scm_ts_pktinfo* %5, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %34 = load i32, i32* @SOL_SOCKET, align 4
  %35 = load i32, i32* @SCM_TIMESTAMPING_PKTINFO, align 4
  %36 = call i32 @put_cmsg(%struct.msghdr* %33, i32 %34, i32 %35, i32 16, %struct.scm_ts_pktinfo* %5)
  br label %37

37:                                               ; preds = %24, %10
  ret void
}

declare dso_local i32 @skb_mac_header_was_set(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.scm_ts_pktinfo*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @dev_get_by_napi_id(i32) #1

declare dso_local i32 @skb_napi_id(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @skb_mac_offset(%struct.sk_buff*) #1

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i32, %struct.scm_ts_pktinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
