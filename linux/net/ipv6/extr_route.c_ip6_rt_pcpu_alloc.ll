; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_rt_pcpu_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_rt_pcpu_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32 }
%struct.fib6_result = type { %struct.fib6_info* }
%struct.fib6_info = type { i32 }
%struct.net_device = type { i32 }

@RTF_PCPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rt6_info* (%struct.fib6_result*)* @ip6_rt_pcpu_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rt6_info* @ip6_rt_pcpu_alloc(%struct.fib6_result* %0) #0 {
  %2 = alloca %struct.rt6_info*, align 8
  %3 = alloca %struct.fib6_result*, align 8
  %4 = alloca %struct.fib6_info*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.rt6_info*, align 8
  store %struct.fib6_result* %0, %struct.fib6_result** %3, align 8
  %8 = load %struct.fib6_result*, %struct.fib6_result** %3, align 8
  %9 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %8, i32 0, i32 0
  %10 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  store %struct.fib6_info* %10, %struct.fib6_info** %4, align 8
  %11 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %12 = call zeroext i16 @fib6_info_dst_flags(%struct.fib6_info* %11)
  store i16 %12, i16* %5, align 2
  %13 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %14 = call i32 @fib6_info_hold_safe(%struct.fib6_info* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store %struct.rt6_info* null, %struct.rt6_info** %2, align 8
  br label %42

17:                                               ; preds = %1
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.fib6_result*, %struct.fib6_result** %3, align 8
  %20 = call %struct.net_device* @ip6_rt_get_dev_rcu(%struct.fib6_result* %19)
  store %struct.net_device* %20, %struct.net_device** %6, align 8
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = call i32 @dev_net(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = load i16, i16* %5, align 2
  %25 = call %struct.rt6_info* @ip6_dst_alloc(i32 %22, %struct.net_device* %23, i16 zeroext %24)
  store %struct.rt6_info* %25, %struct.rt6_info** %7, align 8
  %26 = call i32 (...) @rcu_read_unlock()
  %27 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %28 = icmp ne %struct.rt6_info* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %31 = call i32 @fib6_info_release(%struct.fib6_info* %30)
  store %struct.rt6_info* null, %struct.rt6_info** %2, align 8
  br label %42

32:                                               ; preds = %17
  %33 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %34 = load %struct.fib6_result*, %struct.fib6_result** %3, align 8
  %35 = call i32 @ip6_rt_copy_init(%struct.rt6_info* %33, %struct.fib6_result* %34)
  %36 = load i32, i32* @RTF_PCPU, align 4
  %37 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %38 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  store %struct.rt6_info* %41, %struct.rt6_info** %2, align 8
  br label %42

42:                                               ; preds = %32, %29, %16
  %43 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  ret %struct.rt6_info* %43
}

declare dso_local zeroext i16 @fib6_info_dst_flags(%struct.fib6_info*) #1

declare dso_local i32 @fib6_info_hold_safe(%struct.fib6_info*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @ip6_rt_get_dev_rcu(%struct.fib6_result*) #1

declare dso_local %struct.rt6_info* @ip6_dst_alloc(i32, %struct.net_device*, i16 zeroext) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @fib6_info_release(%struct.fib6_info*) #1

declare dso_local i32 @ip6_rt_copy_init(%struct.rt6_info*, %struct.fib6_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
