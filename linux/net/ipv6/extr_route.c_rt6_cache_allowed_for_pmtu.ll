; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_cache_allowed_for_pmtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_cache_allowed_for_pmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32, i32 }

@RTF_CACHE = common dso_local global i32 0, align 4
@RTF_PCPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt6_info*)* @rt6_cache_allowed_for_pmtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt6_cache_allowed_for_pmtu(%struct.rt6_info* %0) #0 {
  %2 = alloca %struct.rt6_info*, align 8
  store %struct.rt6_info* %0, %struct.rt6_info** %2, align 8
  %3 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %4 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RTF_CACHE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %1
  %10 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %11 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RTF_PCPU, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %9
  %17 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %18 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @rcu_access_pointer(i32 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %16, %9
  %23 = phi i1 [ true, %9 ], [ %21, %16 ]
  br label %24

24:                                               ; preds = %22, %1
  %25 = phi i1 [ false, %1 ], [ %23, %22 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i64 @rcu_access_pointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
