; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c___ipv4_sk_update_pmtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c___ipv4_sk_update_pmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.sock = type { i32 }
%struct.iphdr = type { i32 }
%struct.flowi4 = type { i64 }
%struct.rtable = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.sock*, i32)* @__ipv4_sk_update_pmtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ipv4_sk_update_pmtu(%struct.sk_buff* %0, %struct.sock* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.flowi4, align 8
  %9 = alloca %struct.rtable*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.iphdr*
  store %struct.iphdr* %13, %struct.iphdr** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = call i32 @sock_net(%struct.sock* %14)
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %18 = call i32 @__build_flow_key(i32 %15, %struct.flowi4* %8, %struct.sock* %16, %struct.iphdr* %17, i32 0, i32 0, i32 0, i32 0, i32 0)
  %19 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = call i32 @sock_net(%struct.sock* %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IP4_REPLY_MARK(i32 %24, i32 %27)
  %29 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  br label %30

30:                                               ; preds = %22, %3
  %31 = load %struct.sock*, %struct.sock** %5, align 8
  %32 = call i32 @sock_net(%struct.sock* %31)
  %33 = call %struct.rtable* @__ip_route_output_key(i32 %32, %struct.flowi4* %8)
  store %struct.rtable* %33, %struct.rtable** %9, align 8
  %34 = load %struct.rtable*, %struct.rtable** %9, align 8
  %35 = call i32 @IS_ERR(%struct.rtable* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %30
  %38 = load %struct.rtable*, %struct.rtable** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @__ip_rt_update_pmtu(%struct.rtable* %38, %struct.flowi4* %8, i32 %39)
  %41 = load %struct.rtable*, %struct.rtable** %9, align 8
  %42 = call i32 @ip_rt_put(%struct.rtable* %41)
  br label %43

43:                                               ; preds = %37, %30
  ret void
}

declare dso_local i32 @__build_flow_key(i32, %struct.flowi4*, %struct.sock*, %struct.iphdr*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i64 @IP4_REPLY_MARK(i32, i32) #1

declare dso_local %struct.rtable* @__ip_route_output_key(i32, %struct.flowi4*) #1

declare dso_local i32 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @__ip_rt_update_pmtu(%struct.rtable*, %struct.flowi4*, i32) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
