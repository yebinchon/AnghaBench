; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_socket_ipv6.c_nf_socket_get_sock_v6.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_socket_ipv6.c_nf_socket_get_sock_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.in6_addr = type { i32 }
%struct.net_device = type { i32 }

@tcp_hashinfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.net*, %struct.sk_buff*, i32, i32, %struct.in6_addr*, %struct.in6_addr*, i32, i32, %struct.net_device*)* @nf_socket_get_sock_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @nf_socket_get_sock_v6(%struct.net* %0, %struct.sk_buff* %1, i32 %2, i32 %3, %struct.in6_addr* %4, %struct.in6_addr* %5, i32 %6, i32 %7, %struct.net_device* %8) #0 {
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.in6_addr*, align 8
  %16 = alloca %struct.in6_addr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.net_device*, align 8
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store %struct.in6_addr* %4, %struct.in6_addr** %15, align 8
  store %struct.in6_addr* %5, %struct.in6_addr** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.net_device* %8, %struct.net_device** %19, align 8
  %20 = load i32, i32* %14, align 4
  switch i32 %20, label %43 [
    i32 129, label %21
    i32 128, label %33
  ]

21:                                               ; preds = %9
  %22 = load %struct.net*, %struct.net** %11, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.in6_addr*, %struct.in6_addr** %15, align 8
  %26 = load i32, i32* %17, align 4
  %27 = load %struct.in6_addr*, %struct.in6_addr** %16, align 8
  %28 = load i32, i32* %18, align 4
  %29 = load %struct.net_device*, %struct.net_device** %19, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.sock* @inet6_lookup(%struct.net* %22, i32* @tcp_hashinfo, %struct.sk_buff* %23, i32 %24, %struct.in6_addr* %25, i32 %26, %struct.in6_addr* %27, i32 %28, i32 %31)
  store %struct.sock* %32, %struct.sock** %10, align 8
  br label %44

33:                                               ; preds = %9
  %34 = load %struct.net*, %struct.net** %11, align 8
  %35 = load %struct.in6_addr*, %struct.in6_addr** %15, align 8
  %36 = load i32, i32* %17, align 4
  %37 = load %struct.in6_addr*, %struct.in6_addr** %16, align 8
  %38 = load i32, i32* %18, align 4
  %39 = load %struct.net_device*, %struct.net_device** %19, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.sock* @udp6_lib_lookup(%struct.net* %34, %struct.in6_addr* %35, i32 %36, %struct.in6_addr* %37, i32 %38, i32 %41)
  store %struct.sock* %42, %struct.sock** %10, align 8
  br label %44

43:                                               ; preds = %9
  store %struct.sock* null, %struct.sock** %10, align 8
  br label %44

44:                                               ; preds = %43, %33, %21
  %45 = load %struct.sock*, %struct.sock** %10, align 8
  ret %struct.sock* %45
}

declare dso_local %struct.sock* @inet6_lookup(%struct.net*, i32*, %struct.sk_buff*, i32, %struct.in6_addr*, i32, %struct.in6_addr*, i32, i32) #1

declare dso_local %struct.sock* @udp6_lib_lookup(%struct.net*, %struct.in6_addr*, i32, %struct.in6_addr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
