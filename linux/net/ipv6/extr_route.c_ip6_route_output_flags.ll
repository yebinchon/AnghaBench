; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_output_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_output_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dst_entry }
%struct.sock = type { i32 }
%struct.flowi6 = type { i32 }
%struct.rt6_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @ip6_route_output_flags(%struct.net* %0, %struct.sock* %1, %struct.flowi6* %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.flowi6*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca %struct.rt6_info*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.flowi6* %2, %struct.flowi6** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.net*, %struct.net** %5, align 8
  %13 = load %struct.sock*, %struct.sock** %6, align 8
  %14 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.dst_entry* @ip6_route_output_flags_noref(%struct.net* %12, %struct.sock* %13, %struct.flowi6* %14, i32 %15)
  store %struct.dst_entry* %16, %struct.dst_entry** %9, align 8
  %17 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %18 = bitcast %struct.dst_entry* %17 to %struct.rt6_info*
  store %struct.rt6_info* %18, %struct.rt6_info** %10, align 8
  %19 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %20 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %19, i32 0, i32 0
  %21 = call i64 @list_empty(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %4
  %24 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %25 = call i32 @dst_hold_safe(%struct.dst_entry* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load %struct.net*, %struct.net** %5, align 8
  %29 = getelementptr inbounds %struct.net, %struct.net* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store %struct.dst_entry* %32, %struct.dst_entry** %9, align 8
  %33 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %34 = call i32 @dst_hold(%struct.dst_entry* %33)
  br label %35

35:                                               ; preds = %27, %23, %4
  %36 = call i32 (...) @rcu_read_unlock()
  %37 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  ret %struct.dst_entry* %37
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.dst_entry* @ip6_route_output_flags_noref(%struct.net*, %struct.sock*, %struct.flowi6*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @dst_hold_safe(%struct.dst_entry*) #1

declare dso_local i32 @dst_hold(%struct.dst_entry*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
