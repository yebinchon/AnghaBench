; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_create_rt_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_create_rt_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32 }
%struct.fib6_result = type { %struct.fib6_info*, %struct.TYPE_6__* }
%struct.fib6_info = type { i32 }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rt6_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rt6_info* (%struct.fib6_result*)* @ip6_create_rt_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rt6_info* @ip6_create_rt_rcu(%struct.fib6_result* %0) #0 {
  %2 = alloca %struct.rt6_info*, align 8
  %3 = alloca %struct.fib6_result*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.fib6_info*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.rt6_info*, align 8
  store %struct.fib6_result* %0, %struct.fib6_result** %3, align 8
  %8 = load %struct.fib6_result*, %struct.fib6_result** %3, align 8
  %9 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.fib6_result*, %struct.fib6_result** %3, align 8
  %14 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %13, i32 0, i32 0
  %15 = load %struct.fib6_info*, %struct.fib6_info** %14, align 8
  store %struct.fib6_info* %15, %struct.fib6_info** %5, align 8
  %16 = load %struct.fib6_info*, %struct.fib6_info** %5, align 8
  %17 = call i32 @fib6_info_hold_safe(%struct.fib6_info* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %38

20:                                               ; preds = %1
  %21 = load %struct.fib6_info*, %struct.fib6_info** %5, align 8
  %22 = call zeroext i16 @fib6_info_dst_flags(%struct.fib6_info* %21)
  store i16 %22, i16* %6, align 2
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call %struct.TYPE_7__* @dev_net(%struct.net_device* %23)
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load i16, i16* %6, align 2
  %27 = call %struct.rt6_info* @ip6_dst_alloc(%struct.TYPE_7__* %24, %struct.net_device* %25, i16 zeroext %26)
  store %struct.rt6_info* %27, %struct.rt6_info** %7, align 8
  %28 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %29 = icmp ne %struct.rt6_info* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load %struct.fib6_info*, %struct.fib6_info** %5, align 8
  %32 = call i32 @fib6_info_release(%struct.fib6_info* %31)
  br label %38

33:                                               ; preds = %20
  %34 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %35 = load %struct.fib6_result*, %struct.fib6_result** %3, align 8
  %36 = call i32 @ip6_rt_copy_init(%struct.rt6_info* %34, %struct.fib6_result* %35)
  %37 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  store %struct.rt6_info* %37, %struct.rt6_info** %2, align 8
  br label %48

38:                                               ; preds = %30, %19
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = call %struct.TYPE_7__* @dev_net(%struct.net_device* %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.rt6_info*, %struct.rt6_info** %42, align 8
  store %struct.rt6_info* %43, %struct.rt6_info** %7, align 8
  %44 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %45 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %44, i32 0, i32 0
  %46 = call i32 @dst_hold(i32* %45)
  %47 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  store %struct.rt6_info* %47, %struct.rt6_info** %2, align 8
  br label %48

48:                                               ; preds = %38, %33
  %49 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  ret %struct.rt6_info* %49
}

declare dso_local i32 @fib6_info_hold_safe(%struct.fib6_info*) #1

declare dso_local zeroext i16 @fib6_info_dst_flags(%struct.fib6_info*) #1

declare dso_local %struct.rt6_info* @ip6_dst_alloc(%struct.TYPE_7__*, %struct.net_device*, i16 zeroext) #1

declare dso_local %struct.TYPE_7__* @dev_net(%struct.net_device*) #1

declare dso_local i32 @fib6_info_release(%struct.fib6_info*) #1

declare dso_local i32 @ip6_rt_copy_init(%struct.rt6_info*, %struct.fib6_result*) #1

declare dso_local i32 @dst_hold(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
