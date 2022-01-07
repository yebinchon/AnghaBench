; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_negative_advice.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_negative_advice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.rt6_info = type { i32 }

@RTF_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.dst_entry*)* @ip6_negative_advice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @ip6_negative_advice(%struct.dst_entry* %0) #0 {
  %2 = alloca %struct.dst_entry*, align 8
  %3 = alloca %struct.rt6_info*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %2, align 8
  %4 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %5 = bitcast %struct.dst_entry* %4 to %struct.rt6_info*
  store %struct.rt6_info* %5, %struct.rt6_info** %3, align 8
  %6 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %7 = icmp ne %struct.rt6_info* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %10 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RTF_CACHE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %8
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %18 = call i64 @rt6_check_expired(%struct.rt6_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %22 = call i32 @rt6_remove_exception_rt(%struct.rt6_info* %21)
  store %struct.dst_entry* null, %struct.dst_entry** %2, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = call i32 (...) @rcu_read_unlock()
  br label %28

25:                                               ; preds = %8
  %26 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %27 = call i32 @dst_release(%struct.dst_entry* %26)
  store %struct.dst_entry* null, %struct.dst_entry** %2, align 8
  br label %28

28:                                               ; preds = %25, %23
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  ret %struct.dst_entry* %30
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @rt6_check_expired(%struct.rt6_info*) #1

declare dso_local i32 @rt6_remove_exception_rt(%struct.rt6_info*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
