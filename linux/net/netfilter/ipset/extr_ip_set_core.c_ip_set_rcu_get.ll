; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_rcu_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_rcu_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32 }
%struct.net = type { i32 }
%struct.ip_set_net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_set* (%struct.net*, i64)* @ip_set_rcu_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_set* @ip_set_rcu_get(%struct.net* %0, i64 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ip_set*, align 8
  %6 = alloca %struct.ip_set_net*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = call %struct.ip_set_net* @ip_set_pernet(%struct.net* %7)
  store %struct.ip_set_net* %8, %struct.ip_set_net** %6, align 8
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.ip_set_net*, %struct.ip_set_net** %6, align 8
  %11 = getelementptr inbounds %struct.ip_set_net, %struct.ip_set_net* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ip_set** @rcu_dereference(i32 %12)
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.ip_set*, %struct.ip_set** %13, i64 %14
  %16 = load %struct.ip_set*, %struct.ip_set** %15, align 8
  store %struct.ip_set* %16, %struct.ip_set** %5, align 8
  %17 = call i32 (...) @rcu_read_unlock()
  %18 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  ret %struct.ip_set* %18
}

declare dso_local %struct.ip_set_net* @ip_set_pernet(%struct.net*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ip_set** @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
