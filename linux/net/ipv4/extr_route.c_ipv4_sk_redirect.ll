; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ipv4_sk_redirect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ipv4_sk_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.sock = type { i32 }
%struct.iphdr = type { i32 }
%struct.flowi4 = type { i32 }
%struct.rtable = type { i32 }
%struct.net = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv4_sk_redirect(%struct.sk_buff* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca %struct.flowi4, align 4
  %7 = alloca %struct.rtable*, align 8
  %8 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.iphdr*
  store %struct.iphdr* %12, %struct.iphdr** %5, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.net* @sock_net(%struct.sock* %13)
  store %struct.net* %14, %struct.net** %8, align 8
  %15 = load %struct.net*, %struct.net** %8, align 8
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %18 = call i32 @__build_flow_key(%struct.net* %15, %struct.flowi4* %6, %struct.sock* %16, %struct.iphdr* %17, i32 0, i32 0, i32 0, i32 0, i32 0)
  %19 = load %struct.net*, %struct.net** %8, align 8
  %20 = call %struct.rtable* @__ip_route_output_key(%struct.net* %19, %struct.flowi4* %6)
  store %struct.rtable* %20, %struct.rtable** %7, align 8
  %21 = load %struct.rtable*, %struct.rtable** %7, align 8
  %22 = call i32 @IS_ERR(%struct.rtable* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.rtable*, %struct.rtable** %7, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call i32 @__ip_do_redirect(%struct.rtable* %25, %struct.sk_buff* %26, %struct.flowi4* %6, i32 0)
  %28 = load %struct.rtable*, %struct.rtable** %7, align 8
  %29 = call i32 @ip_rt_put(%struct.rtable* %28)
  br label %30

30:                                               ; preds = %24, %2
  ret void
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @__build_flow_key(%struct.net*, %struct.flowi4*, %struct.sock*, %struct.iphdr*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.rtable* @__ip_route_output_key(%struct.net*, %struct.flowi4*) #1

declare dso_local i32 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @__ip_do_redirect(%struct.rtable*, %struct.sk_buff*, %struct.flowi4*, i32) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
