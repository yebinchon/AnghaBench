; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netif_rx_ni.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netif_rx_ni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netif_rx_ni(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = call i32 @trace_netif_rx_ni_entry(%struct.sk_buff* %4)
  %6 = call i32 (...) @preempt_disable()
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = call i32 @netif_rx_internal(%struct.sk_buff* %7)
  store i32 %8, i32* %3, align 4
  %9 = call i64 (...) @local_softirq_pending()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (...) @do_softirq()
  br label %13

13:                                               ; preds = %11, %1
  %14 = call i32 (...) @preempt_enable()
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @trace_netif_rx_ni_exit(i32 %15)
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @trace_netif_rx_ni_entry(%struct.sk_buff*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @netif_rx_internal(%struct.sk_buff*) #1

declare dso_local i64 @local_softirq_pending(...) #1

declare dso_local i32 @do_softirq(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @trace_netif_rx_ni_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
