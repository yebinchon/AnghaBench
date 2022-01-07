; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_rt_init_dst.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_rt_init_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }
%struct.fib6_result = type { i32, i64, %struct.TYPE_5__*, %struct.fib6_info* }
%struct.TYPE_5__ = type { i64 }
%struct.fib6_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@RTF_REJECT = common dso_local global i32 0, align 4
@ip6_output = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i64 0, align 8
@RTN_ANYCAST = common dso_local global i64 0, align 8
@ip6_input = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@ip6_mc_input = common dso_local global i32 0, align 4
@ip6_forward = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt6_info*, %struct.fib6_result*)* @ip6_rt_init_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_rt_init_dst(%struct.rt6_info* %0, %struct.fib6_result* %1) #0 {
  %3 = alloca %struct.rt6_info*, align 8
  %4 = alloca %struct.fib6_result*, align 8
  %5 = alloca %struct.fib6_info*, align 8
  store %struct.rt6_info* %0, %struct.rt6_info** %3, align 8
  store %struct.fib6_result* %1, %struct.fib6_result** %4, align 8
  %6 = load %struct.fib6_result*, %struct.fib6_result** %4, align 8
  %7 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %6, i32 0, i32 3
  %8 = load %struct.fib6_info*, %struct.fib6_info** %7, align 8
  store %struct.fib6_info* %8, %struct.fib6_info** %5, align 8
  %9 = load %struct.fib6_result*, %struct.fib6_result** %4, align 8
  %10 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RTF_REJECT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %17 = load %struct.fib6_result*, %struct.fib6_result** %4, align 8
  %18 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @ip6_rt_init_dst_reject(%struct.rt6_info* %16, i64 %19)
  br label %89

21:                                               ; preds = %2
  %22 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %23 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @ip6_output, align 4
  %26 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %27 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 4
  %29 = load %struct.fib6_result*, %struct.fib6_result** %4, align 8
  %30 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RTN_LOCAL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %21
  %35 = load %struct.fib6_result*, %struct.fib6_result** %4, align 8
  %36 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RTN_ANYCAST, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34, %21
  %41 = load i32, i32* @ip6_input, align 4
  %42 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %43 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  br label %64

45:                                               ; preds = %34
  %46 = load %struct.fib6_info*, %struct.fib6_info** %5, align 8
  %47 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @ipv6_addr_type(i32* %48)
  %50 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load i32, i32* @ip6_mc_input, align 4
  %55 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %56 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  br label %63

58:                                               ; preds = %45
  %59 = load i32, i32* @ip6_forward, align 4
  %60 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %61 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  br label %63

63:                                               ; preds = %58, %53
  br label %64

64:                                               ; preds = %63, %40
  %65 = load %struct.fib6_result*, %struct.fib6_result** %4, align 8
  %66 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %65, i32 0, i32 2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %64
  %72 = load %struct.fib6_result*, %struct.fib6_result** %4, align 8
  %73 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %72, i32 0, i32 2
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @lwtstate_get(i64 %76)
  %78 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %79 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %82 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %81, i32 0, i32 0
  %83 = call i32 @lwtunnel_set_redirect(%struct.TYPE_6__* %82)
  br label %84

84:                                               ; preds = %71, %64
  %85 = load i32, i32* @jiffies, align 4
  %86 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %87 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  br label %89

89:                                               ; preds = %84, %15
  ret void
}

declare dso_local i32 @ip6_rt_init_dst_reject(%struct.rt6_info*, i64) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i32 @lwtstate_get(i64) #1

declare dso_local i32 @lwtunnel_set_redirect(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
