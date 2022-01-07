; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c___ip6_ins_rt.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c___ip6_ins_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { %struct.fib6_table* }
%struct.fib6_table = type { i32, i32 }
%struct.nl_info = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_info*, %struct.nl_info*, %struct.netlink_ext_ack*)* @__ip6_ins_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ip6_ins_rt(%struct.fib6_info* %0, %struct.nl_info* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.fib6_info*, align 8
  %5 = alloca %struct.nl_info*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fib6_table*, align 8
  store %struct.fib6_info* %0, %struct.fib6_info** %4, align 8
  store %struct.nl_info* %1, %struct.nl_info** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %9 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %10 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %9, i32 0, i32 0
  %11 = load %struct.fib6_table*, %struct.fib6_table** %10, align 8
  store %struct.fib6_table* %11, %struct.fib6_table** %8, align 8
  %12 = load %struct.fib6_table*, %struct.fib6_table** %8, align 8
  %13 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.fib6_table*, %struct.fib6_table** %8, align 8
  %16 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %15, i32 0, i32 1
  %17 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %18 = load %struct.nl_info*, %struct.nl_info** %5, align 8
  %19 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %20 = call i32 @fib6_add(i32* %16, %struct.fib6_info* %17, %struct.nl_info* %18, %struct.netlink_ext_ack* %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.fib6_table*, %struct.fib6_table** %8, align 8
  %22 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_bh(i32* %22)
  %24 = load i32, i32* %7, align 4
  ret i32 %24
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @fib6_add(i32*, %struct.fib6_info*, %struct.nl_info*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
