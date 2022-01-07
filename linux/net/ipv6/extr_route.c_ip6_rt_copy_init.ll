; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_rt_copy_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_rt_copy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32, i32, i32, i32*, i32 }
%struct.fib6_result = type { i32, %struct.fib6_info*, %struct.fib6_nh* }
%struct.fib6_info = type { i32, i32 }
%struct.fib6_nh = type { i32, i64, %struct.net_device* }
%struct.net_device = type { i32 }

@RTF_GATEWAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt6_info*, %struct.fib6_result*)* @ip6_rt_copy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_rt_copy_init(%struct.rt6_info* %0, %struct.fib6_result* %1) #0 {
  %3 = alloca %struct.rt6_info*, align 8
  %4 = alloca %struct.fib6_result*, align 8
  %5 = alloca %struct.fib6_nh*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.fib6_info*, align 8
  store %struct.rt6_info* %0, %struct.rt6_info** %3, align 8
  store %struct.fib6_result* %1, %struct.fib6_result** %4, align 8
  %8 = load %struct.fib6_result*, %struct.fib6_result** %4, align 8
  %9 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %8, i32 0, i32 2
  %10 = load %struct.fib6_nh*, %struct.fib6_nh** %9, align 8
  store %struct.fib6_nh* %10, %struct.fib6_nh** %5, align 8
  %11 = load %struct.fib6_nh*, %struct.fib6_nh** %5, align 8
  %12 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %11, i32 0, i32 2
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.fib6_result*, %struct.fib6_result** %4, align 8
  %15 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %14, i32 0, i32 1
  %16 = load %struct.fib6_info*, %struct.fib6_info** %15, align 8
  store %struct.fib6_info* %16, %struct.fib6_info** %7, align 8
  %17 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %18 = load %struct.fib6_result*, %struct.fib6_result** %4, align 8
  %19 = call i32 @ip6_rt_init_dst(%struct.rt6_info* %17, %struct.fib6_result* %18)
  %20 = load %struct.fib6_info*, %struct.fib6_info** %7, align 8
  %21 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %24 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = icmp ne %struct.net_device* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = call i32* @in6_dev_get(%struct.net_device* %28)
  br label %31

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32* [ %29, %27 ], [ null, %30 ]
  %33 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %34 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %33, i32 0, i32 3
  store i32* %32, i32** %34, align 8
  %35 = load %struct.fib6_result*, %struct.fib6_result** %4, align 8
  %36 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %39 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.fib6_nh*, %struct.fib6_nh** %5, align 8
  %41 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %31
  %45 = load %struct.fib6_nh*, %struct.fib6_nh** %5, align 8
  %46 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %49 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @RTF_GATEWAY, align 4
  %51 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %52 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %44, %31
  %56 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %57 = load %struct.fib6_info*, %struct.fib6_info** %7, align 8
  %58 = call i32 @rt6_set_from(%struct.rt6_info* %56, %struct.fib6_info* %57)
  ret void
}

declare dso_local i32 @ip6_rt_init_dst(%struct.rt6_info*, %struct.fib6_result*) #1

declare dso_local i32* @in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @rt6_set_from(%struct.rt6_info*, %struct.fib6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
