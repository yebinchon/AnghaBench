; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inetdev_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inetdev_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_device = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.in_device* @inetdev_by_index(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.in_device*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.in_device* null, %struct.in_device** %6, align 8
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.net*, %struct.net** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %8, i32 %9)
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.in_device* @rcu_dereference_rtnl(i32 %16)
  store %struct.in_device* %17, %struct.in_device** %6, align 8
  br label %18

18:                                               ; preds = %13, %2
  %19 = call i32 (...) @rcu_read_unlock()
  %20 = load %struct.in_device*, %struct.in_device** %6, align 8
  ret %struct.in_device* %20
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.net*, i32) #1

declare dso_local %struct.in_device* @rcu_dereference_rtnl(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
