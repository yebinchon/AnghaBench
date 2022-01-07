; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ipv4_update_pmtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ipv4_update_pmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net = type { i32 }
%struct.iphdr = type { i32 }
%struct.flowi4 = type { i32 }
%struct.rtable = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv4_update_pmtu(%struct.sk_buff* %0, %struct.net* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iphdr*, align 8
  %12 = alloca %struct.flowi4, align 4
  %13 = alloca %struct.rtable*, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net* %1, %struct.net** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.iphdr*
  store %struct.iphdr* %18, %struct.iphdr** %11, align 8
  %19 = load %struct.net*, %struct.net** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @IP4_REPLY_MARK(%struct.net* %19, i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.net*, %struct.net** %7, align 8
  %25 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %28 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @RT_TOS(i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @__build_flow_key(%struct.net* %24, %struct.flowi4* %12, i32* null, %struct.iphdr* %25, i32 %26, i32 %30, i32 %31, i32 %32, i32 0)
  %34 = load %struct.net*, %struct.net** %7, align 8
  %35 = call %struct.rtable* @__ip_route_output_key(%struct.net* %34, %struct.flowi4* %12)
  store %struct.rtable* %35, %struct.rtable** %13, align 8
  %36 = load %struct.rtable*, %struct.rtable** %13, align 8
  %37 = call i32 @IS_ERR(%struct.rtable* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %5
  %40 = load %struct.rtable*, %struct.rtable** %13, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @__ip_rt_update_pmtu(%struct.rtable* %40, %struct.flowi4* %12, i32 %41)
  %43 = load %struct.rtable*, %struct.rtable** %13, align 8
  %44 = call i32 @ip_rt_put(%struct.rtable* %43)
  br label %45

45:                                               ; preds = %39, %5
  ret void
}

declare dso_local i32 @IP4_REPLY_MARK(%struct.net*, i32) #1

declare dso_local i32 @__build_flow_key(%struct.net*, %struct.flowi4*, i32*, %struct.iphdr*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local %struct.rtable* @__ip_route_output_key(%struct.net*, %struct.flowi4*) #1

declare dso_local i32 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @__ip_rt_update_pmtu(%struct.rtable*, %struct.flowi4*, i32) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
