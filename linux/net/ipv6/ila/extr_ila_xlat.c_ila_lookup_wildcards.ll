; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_lookup_wildcards.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_lookup_wildcards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ila_map = type { i32 }
%struct.ila_addr = type { i32 }
%struct.ila_net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@rht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ila_map* (%struct.ila_addr*, i32, %struct.ila_net*)* @ila_lookup_wildcards to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ila_map* @ila_lookup_wildcards(%struct.ila_addr* %0, i32 %1, %struct.ila_net* %2) #0 {
  %4 = alloca %struct.ila_map*, align 8
  %5 = alloca %struct.ila_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ila_net*, align 8
  %8 = alloca %struct.ila_map*, align 8
  store %struct.ila_addr* %0, %struct.ila_addr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ila_net* %2, %struct.ila_net** %7, align 8
  %9 = load %struct.ila_net*, %struct.ila_net** %7, align 8
  %10 = getelementptr inbounds %struct.ila_net, %struct.ila_net* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ila_addr*, %struct.ila_addr** %5, align 8
  %13 = getelementptr inbounds %struct.ila_addr, %struct.ila_addr* %12, i32 0, i32 0
  %14 = load i32, i32* @rht_params, align 4
  %15 = call %struct.ila_map* @rhashtable_lookup_fast(i32* %11, i32* %13, i32 %14)
  store %struct.ila_map* %15, %struct.ila_map** %8, align 8
  br label %16

16:                                               ; preds = %27, %3
  %17 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %18 = icmp ne %struct.ila_map* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %21 = load %struct.ila_addr*, %struct.ila_addr** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ila_cmp_wildcards(%struct.ila_map* %20, %struct.ila_addr* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  store %struct.ila_map* %26, %struct.ila_map** %4, align 8
  br label %33

27:                                               ; preds = %19
  %28 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %29 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.ila_map* @rcu_access_pointer(i32 %30)
  store %struct.ila_map* %31, %struct.ila_map** %8, align 8
  br label %16

32:                                               ; preds = %16
  store %struct.ila_map* null, %struct.ila_map** %4, align 8
  br label %33

33:                                               ; preds = %32, %25
  %34 = load %struct.ila_map*, %struct.ila_map** %4, align 8
  ret %struct.ila_map* %34
}

declare dso_local %struct.ila_map* @rhashtable_lookup_fast(i32*, i32*, i32) #1

declare dso_local i32 @ila_cmp_wildcards(%struct.ila_map*, %struct.ila_addr*, i32) #1

declare dso_local %struct.ila_map* @rcu_access_pointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
