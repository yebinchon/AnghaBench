; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_neigh_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_neigh_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32 }
%struct.in6_addr = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@nd_tbl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.neighbour* @ip6_neigh_lookup(%struct.in6_addr* %0, %struct.net_device* %1, %struct.sk_buff* %2, i8* %3) #0 {
  %5 = alloca %struct.neighbour*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.neighbour*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = call i8* @choose_neigh_daddr(%struct.in6_addr* %11, %struct.sk_buff* %12, i8* %13)
  store i8* %14, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call %struct.neighbour* @__ipv6_neigh_lookup(%struct.net_device* %15, i8* %16)
  store %struct.neighbour* %17, %struct.neighbour** %10, align 8
  %18 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %19 = icmp ne %struct.neighbour* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  store %struct.neighbour* %21, %struct.neighbour** %5, align 8
  br label %34

22:                                               ; preds = %4
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = call %struct.neighbour* @neigh_create(i32* @nd_tbl, i8* %23, %struct.net_device* %24)
  store %struct.neighbour* %25, %struct.neighbour** %10, align 8
  %26 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %27 = call i64 @IS_ERR(%struct.neighbour* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %32

30:                                               ; preds = %22
  %31 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi %struct.neighbour* [ null, %29 ], [ %31, %30 ]
  store %struct.neighbour* %33, %struct.neighbour** %5, align 8
  br label %34

34:                                               ; preds = %32, %20
  %35 = load %struct.neighbour*, %struct.neighbour** %5, align 8
  ret %struct.neighbour* %35
}

declare dso_local i8* @choose_neigh_daddr(%struct.in6_addr*, %struct.sk_buff*, i8*) #1

declare dso_local %struct.neighbour* @__ipv6_neigh_lookup(%struct.net_device*, i8*) #1

declare dso_local %struct.neighbour* @neigh_create(i32*, i8*, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
