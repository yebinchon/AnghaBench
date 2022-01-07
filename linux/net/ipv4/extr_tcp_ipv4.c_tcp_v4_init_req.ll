; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_init_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_init_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.inet_request_sock = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_sock*, %struct.sock*, %struct.sk_buff*)* @tcp_v4_init_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_v4_init_req(%struct.request_sock* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.request_sock*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.inet_request_sock*, align 8
  %8 = alloca %struct.net*, align 8
  store %struct.request_sock* %0, %struct.request_sock** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %10 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %9)
  store %struct.inet_request_sock* %10, %struct.inet_request_sock** %7, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.net* @sock_net(%struct.sock* %11)
  store %struct.net* %12, %struct.net** %8, align 8
  %13 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %14 = call i32 @req_to_sk(%struct.request_sock* %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sk_rcv_saddr_set(i32 %14, i32 %18)
  %20 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %21 = call i32 @req_to_sk(%struct.request_sock* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sk_daddr_set(i32 %21, i32 %25)
  %27 = load %struct.inet_request_sock*, %struct.inet_request_sock** %7, align 8
  %28 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.net*, %struct.net** %8, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @tcp_v4_save_options(%struct.net* %30, %struct.sk_buff* %31)
  %33 = call i32 @RCU_INIT_POINTER(i32 %29, i32 %32)
  ret void
}

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @sk_rcv_saddr_set(i32, i32) #1

declare dso_local i32 @req_to_sk(%struct.request_sock*) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @sk_daddr_set(i32, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32) #1

declare dso_local i32 @tcp_v4_save_options(%struct.net*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
