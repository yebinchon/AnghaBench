; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nexthop_free_single.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nexthop_free_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)* }
%struct.nexthop = type { i32, i32 }
%struct.nh_info = type { i32, i32, i32 }

@ipv6_stub = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nexthop*)* @nexthop_free_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nexthop_free_single(%struct.nexthop* %0) #0 {
  %2 = alloca %struct.nexthop*, align 8
  %3 = alloca %struct.nh_info*, align 8
  store %struct.nexthop* %0, %struct.nexthop** %2, align 8
  %4 = load %struct.nexthop*, %struct.nexthop** %2, align 8
  %5 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.nh_info* @rcu_dereference_raw(i32 %6)
  store %struct.nh_info* %7, %struct.nh_info** %3, align 8
  %8 = load %struct.nh_info*, %struct.nh_info** %3, align 8
  %9 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %25 [
    i32 129, label %11
    i32 128, label %18
  ]

11:                                               ; preds = %1
  %12 = load %struct.nexthop*, %struct.nexthop** %2, align 8
  %13 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nh_info*, %struct.nh_info** %3, align 8
  %16 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %15, i32 0, i32 2
  %17 = call i32 @fib_nh_release(i32 %14, i32* %16)
  br label %25

18:                                               ; preds = %1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ipv6_stub, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i32*)*, i32 (i32*)** %20, align 8
  %22 = load %struct.nh_info*, %struct.nh_info** %3, align 8
  %23 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %22, i32 0, i32 1
  %24 = call i32 %21(i32* %23)
  br label %25

25:                                               ; preds = %1, %18, %11
  %26 = load %struct.nh_info*, %struct.nh_info** %3, align 8
  %27 = call i32 @kfree(%struct.nh_info* %26)
  ret void
}

declare dso_local %struct.nh_info* @rcu_dereference_raw(i32) #1

declare dso_local i32 @fib_nh_release(i32, i32*) #1

declare dso_local i32 @kfree(%struct.nh_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
