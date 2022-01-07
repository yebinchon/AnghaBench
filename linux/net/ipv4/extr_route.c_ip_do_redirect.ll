; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_do_redirect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_do_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.rtable = type { i32 }
%struct.flowi4 = type { i32 }
%struct.iphdr = type { i32, i32 }
%struct.net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*)* @ip_do_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_do_redirect(%struct.dst_entry* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rtable*, align 8
  %8 = alloca %struct.flowi4, align 4
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dst_entry* %0, %struct.dst_entry** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.iphdr*
  store %struct.iphdr* %18, %struct.iphdr** %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call %struct.net* @dev_net(%struct.TYPE_2__* %21)
  store %struct.net* %22, %struct.net** %10, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %29 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @RT_TOS(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %33 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %14, align 4
  %38 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %39 = bitcast %struct.dst_entry* %38 to %struct.rtable*
  store %struct.rtable* %39, %struct.rtable** %7, align 8
  %40 = load %struct.net*, %struct.net** %10, align 8
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @__build_flow_key(%struct.net* %40, %struct.flowi4* %8, %struct.sock* %41, %struct.iphdr* %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 0)
  %48 = load %struct.rtable*, %struct.rtable** %7, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call i32 @__ip_do_redirect(%struct.rtable* %48, %struct.sk_buff* %49, %struct.flowi4* %8, i32 1)
  ret void
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_2__*) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i32 @__build_flow_key(%struct.net*, %struct.flowi4*, %struct.sock*, %struct.iphdr*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__ip_do_redirect(%struct.rtable*, %struct.sk_buff*, %struct.flowi4*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
