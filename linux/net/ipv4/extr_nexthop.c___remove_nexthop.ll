; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c___remove_nexthop.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c___remove_nexthop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nexthop = type { i32, i64 }
%struct.nl_info = type { i32 }
%struct.nh_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.nexthop*, %struct.nl_info*)* @__remove_nexthop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__remove_nexthop(%struct.net* %0, %struct.nexthop* %1, %struct.nl_info* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nexthop*, align 8
  %6 = alloca %struct.nl_info*, align 8
  %7 = alloca %struct.nh_info*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nexthop* %1, %struct.nexthop** %5, align 8
  store %struct.nl_info* %2, %struct.nl_info** %6, align 8
  %8 = load %struct.net*, %struct.net** %4, align 8
  %9 = load %struct.nexthop*, %struct.nexthop** %5, align 8
  %10 = call i32 @__remove_nexthop_fib(%struct.net* %8, %struct.nexthop* %9)
  %11 = load %struct.nexthop*, %struct.nexthop** %5, align 8
  %12 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.nexthop*, %struct.nexthop** %5, align 8
  %17 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %18 = call i32 @remove_nexthop_group(%struct.nexthop* %16, %struct.nl_info* %17)
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.nexthop*, %struct.nexthop** %5, align 8
  %21 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.nh_info* @rtnl_dereference(i32 %22)
  store %struct.nh_info* %23, %struct.nh_info** %7, align 8
  %24 = load %struct.nh_info*, %struct.nh_info** %7, align 8
  %25 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.nh_info*, %struct.nh_info** %7, align 8
  %31 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %30, i32 0, i32 0
  %32 = call i32 @hlist_del(i32* %31)
  br label %33

33:                                               ; preds = %29, %19
  %34 = load %struct.net*, %struct.net** %4, align 8
  %35 = load %struct.nexthop*, %struct.nexthop** %5, align 8
  %36 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %37 = call i32 @remove_nexthop_from_groups(%struct.net* %34, %struct.nexthop* %35, %struct.nl_info* %36)
  br label %38

38:                                               ; preds = %33, %15
  ret void
}

declare dso_local i32 @__remove_nexthop_fib(%struct.net*, %struct.nexthop*) #1

declare dso_local i32 @remove_nexthop_group(%struct.nexthop*, %struct.nl_info*) #1

declare dso_local %struct.nh_info* @rtnl_dereference(i32) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @remove_nexthop_from_groups(%struct.net*, %struct.nexthop*, %struct.nl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
