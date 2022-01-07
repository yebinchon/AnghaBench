; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_confirm_neigh.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_confirm_neigh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.rt6_info = type { i32 }
%struct.in6_addr = type { i32 }

@in6addr_any = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*, i8*)* @ip6_confirm_neigh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_confirm_neigh(%struct.dst_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.rt6_info*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %8 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %7, i32 0, i32 0
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %11 = bitcast %struct.dst_entry* %10 to %struct.rt6_info*
  store %struct.rt6_info* %11, %struct.rt6_info** %6, align 8
  %12 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %13 = call i32 @rt6_nexthop(%struct.rt6_info* %12, i32* @in6addr_any)
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @choose_neigh_daddr(i32 %13, i32* null, i8* %14)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %39

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_NOARP, align 4
  %24 = load i32, i32* @IFF_LOOPBACK, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %39

29:                                               ; preds = %19
  %30 = load i8*, i8** %4, align 8
  %31 = bitcast i8* %30 to %struct.in6_addr*
  %32 = call i64 @ipv6_addr_is_multicast(%struct.in6_addr* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %39

35:                                               ; preds = %29
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @__ipv6_confirm_neigh(%struct.net_device* %36, i8* %37)
  br label %39

39:                                               ; preds = %35, %34, %28, %18
  ret void
}

declare dso_local i8* @choose_neigh_daddr(i32, i32*, i8*) #1

declare dso_local i32 @rt6_nexthop(%struct.rt6_info*, i32*) #1

declare dso_local i64 @ipv6_addr_is_multicast(%struct.in6_addr*) #1

declare dso_local i32 @__ipv6_confirm_neigh(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
