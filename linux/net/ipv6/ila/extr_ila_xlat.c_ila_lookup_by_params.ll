; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_lookup_by_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_lookup_by_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ila_map = type { i32 }
%struct.ila_xlat_params = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ila_net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@rht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ila_map* (%struct.ila_xlat_params*, %struct.ila_net*)* @ila_lookup_by_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ila_map* @ila_lookup_by_params(%struct.ila_xlat_params* %0, %struct.ila_net* %1) #0 {
  %3 = alloca %struct.ila_map*, align 8
  %4 = alloca %struct.ila_xlat_params*, align 8
  %5 = alloca %struct.ila_net*, align 8
  %6 = alloca %struct.ila_map*, align 8
  store %struct.ila_xlat_params* %0, %struct.ila_xlat_params** %4, align 8
  store %struct.ila_net* %1, %struct.ila_net** %5, align 8
  %7 = load %struct.ila_net*, %struct.ila_net** %5, align 8
  %8 = getelementptr inbounds %struct.ila_net, %struct.ila_net* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.ila_xlat_params*, %struct.ila_xlat_params** %4, align 8
  %11 = getelementptr inbounds %struct.ila_xlat_params, %struct.ila_xlat_params* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* @rht_params, align 4
  %14 = call %struct.ila_map* @rhashtable_lookup_fast(i32* %9, i32* %12, i32 %13)
  store %struct.ila_map* %14, %struct.ila_map** %6, align 8
  br label %15

15:                                               ; preds = %25, %2
  %16 = load %struct.ila_map*, %struct.ila_map** %6, align 8
  %17 = icmp ne %struct.ila_map* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.ila_map*, %struct.ila_map** %6, align 8
  %20 = load %struct.ila_xlat_params*, %struct.ila_xlat_params** %4, align 8
  %21 = call i32 @ila_cmp_params(%struct.ila_map* %19, %struct.ila_xlat_params* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load %struct.ila_map*, %struct.ila_map** %6, align 8
  store %struct.ila_map* %24, %struct.ila_map** %3, align 8
  br label %31

25:                                               ; preds = %18
  %26 = load %struct.ila_map*, %struct.ila_map** %6, align 8
  %27 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.ila_map* @rcu_access_pointer(i32 %28)
  store %struct.ila_map* %29, %struct.ila_map** %6, align 8
  br label %15

30:                                               ; preds = %15
  store %struct.ila_map* null, %struct.ila_map** %3, align 8
  br label %31

31:                                               ; preds = %30, %23
  %32 = load %struct.ila_map*, %struct.ila_map** %3, align 8
  ret %struct.ila_map* %32
}

declare dso_local %struct.ila_map* @rhashtable_lookup_fast(i32*, i32*, i32) #1

declare dso_local i32 @ila_cmp_params(%struct.ila_map*, %struct.ila_xlat_params*) #1

declare dso_local %struct.ila_map* @rcu_access_pointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
