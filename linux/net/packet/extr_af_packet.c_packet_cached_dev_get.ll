; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_cached_dev_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_cached_dev_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.packet_sock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.packet_sock*)* @packet_cached_dev_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @packet_cached_dev_get(%struct.packet_sock* %0) #0 {
  %2 = alloca %struct.packet_sock*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.packet_sock* %0, %struct.packet_sock** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load %struct.packet_sock*, %struct.packet_sock** %2, align 8
  %6 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.net_device* @rcu_dereference(i32 %7)
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i64 @likely(%struct.net_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @dev_hold(%struct.net_device* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = call i32 (...) @rcu_read_unlock()
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %17
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @rcu_dereference(i32) #1

declare dso_local i64 @likely(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
