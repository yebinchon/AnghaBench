; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_config = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.fib6_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_route_add(%struct.fib6_config* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib6_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.fib6_info*, align 8
  %9 = alloca i32, align 4
  store %struct.fib6_config* %0, %struct.fib6_config** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %13 = call %struct.fib6_info* @ip6_route_info_create(%struct.fib6_config* %10, i32 %11, %struct.netlink_ext_ack* %12)
  store %struct.fib6_info* %13, %struct.fib6_info** %8, align 8
  %14 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %15 = call i64 @IS_ERR(%struct.fib6_info* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.fib6_info* %18)
  store i32 %19, i32* %4, align 4
  br label %29

20:                                               ; preds = %3
  %21 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %22 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %23 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %22, i32 0, i32 0
  %24 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %25 = call i32 @__ip6_ins_rt(%struct.fib6_info* %21, i32* %23, %struct.netlink_ext_ack* %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.fib6_info*, %struct.fib6_info** %8, align 8
  %27 = call i32 @fib6_info_release(%struct.fib6_info* %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %20, %17
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.fib6_info* @ip6_route_info_create(%struct.fib6_config*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i64 @IS_ERR(%struct.fib6_info*) #1

declare dso_local i32 @PTR_ERR(%struct.fib6_info*) #1

declare dso_local i32 @__ip6_ins_rt(%struct.fib6_info*, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @fib6_info_release(%struct.fib6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
