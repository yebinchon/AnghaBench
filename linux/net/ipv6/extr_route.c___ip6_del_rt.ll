; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c___ip6_del_rt.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c___ip6_del_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { %struct.fib6_table* }
%struct.fib6_table = type { i32 }
%struct.nl_info = type { %struct.net* }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fib6_info* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_info*, %struct.nl_info*)* @__ip6_del_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ip6_del_rt(%struct.fib6_info* %0, %struct.nl_info* %1) #0 {
  %3 = alloca %struct.fib6_info*, align 8
  %4 = alloca %struct.nl_info*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.fib6_table*, align 8
  %7 = alloca i32, align 4
  store %struct.fib6_info* %0, %struct.fib6_info** %3, align 8
  store %struct.nl_info* %1, %struct.nl_info** %4, align 8
  %8 = load %struct.nl_info*, %struct.nl_info** %4, align 8
  %9 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %8, i32 0, i32 0
  %10 = load %struct.net*, %struct.net** %9, align 8
  store %struct.net* %10, %struct.net** %5, align 8
  %11 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %12 = load %struct.net*, %struct.net** %5, align 8
  %13 = getelementptr inbounds %struct.net, %struct.net* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.fib6_info*, %struct.fib6_info** %14, align 8
  %16 = icmp eq %struct.fib6_info* %11, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %22 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %21, i32 0, i32 0
  %23 = load %struct.fib6_table*, %struct.fib6_table** %22, align 8
  store %struct.fib6_table* %23, %struct.fib6_table** %6, align 8
  %24 = load %struct.fib6_table*, %struct.fib6_table** %6, align 8
  %25 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %28 = load %struct.nl_info*, %struct.nl_info** %4, align 8
  %29 = call i32 @fib6_del(%struct.fib6_info* %27, %struct.nl_info* %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.fib6_table*, %struct.fib6_table** %6, align 8
  %31 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock_bh(i32* %31)
  br label %33

33:                                               ; preds = %20, %17
  %34 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %35 = call i32 @fib6_info_release(%struct.fib6_info* %34)
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @fib6_del(%struct.fib6_info*, %struct.nl_info*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fib6_info_release(%struct.fib6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
