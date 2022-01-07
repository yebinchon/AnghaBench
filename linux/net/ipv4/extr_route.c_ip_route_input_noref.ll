; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_route_input_noref.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_route_input_noref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.fib_result = type { i32 }

@IPTOS_RT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_route_input_noref(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, %struct.net_device* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.fib_result, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.net_device* %4, %struct.net_device** %10, align 8
  %13 = load i32, i32* @IPTOS_RT_MASK, align 4
  %14 = load i32, i32* %9, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %9, align 4
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.net_device*, %struct.net_device** %10, align 8
  %22 = call i32 @ip_route_input_rcu(%struct.sk_buff* %17, i32 %18, i32 %19, i32 %20, %struct.net_device* %21, %struct.fib_result* %11)
  store i32 %22, i32* %12, align 4
  %23 = call i32 (...) @rcu_read_unlock()
  %24 = load i32, i32* %12, align 4
  ret i32 %24
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ip_route_input_rcu(%struct.sk_buff*, i32, i32, i32, %struct.net_device*, %struct.fib_result*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
