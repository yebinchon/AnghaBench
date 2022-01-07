; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ipv4_redirect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ipv4_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net = type { i32 }
%struct.iphdr = type { i32 }
%struct.flowi4 = type { i32 }
%struct.rtable = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv4_redirect(%struct.sk_buff* %0, %struct.net* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca %struct.flowi4, align 4
  %11 = alloca %struct.rtable*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net* %1, %struct.net** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.iphdr*
  store %struct.iphdr* %15, %struct.iphdr** %9, align 8
  %16 = load %struct.net*, %struct.net** %6, align 8
  %17 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %20 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @RT_TOS(i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @__build_flow_key(%struct.net* %16, %struct.flowi4* %10, i32* null, %struct.iphdr* %17, i32 %18, i32 %22, i32 %23, i32 0, i32 0)
  %25 = load %struct.net*, %struct.net** %6, align 8
  %26 = call %struct.rtable* @__ip_route_output_key(%struct.net* %25, %struct.flowi4* %10)
  store %struct.rtable* %26, %struct.rtable** %11, align 8
  %27 = load %struct.rtable*, %struct.rtable** %11, align 8
  %28 = call i32 @IS_ERR(%struct.rtable* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %4
  %31 = load %struct.rtable*, %struct.rtable** %11, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @__ip_do_redirect(%struct.rtable* %31, %struct.sk_buff* %32, %struct.flowi4* %10, i32 0)
  %34 = load %struct.rtable*, %struct.rtable** %11, align 8
  %35 = call i32 @ip_rt_put(%struct.rtable* %34)
  br label %36

36:                                               ; preds = %30, %4
  ret void
}

declare dso_local i32 @__build_flow_key(%struct.net*, %struct.flowi4*, i32*, %struct.iphdr*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RT_TOS(i32) #1

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
