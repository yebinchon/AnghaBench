; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_queue.c_nf_queue_nf_hook_drop.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_queue.c_nf_queue_nf_hook_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nf_queue_handler = type { i32 (%struct.net.0*)* }
%struct.net.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_queue_nf_hook_drop(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.nf_queue_handler*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load %struct.net*, %struct.net** %2, align 8
  %6 = getelementptr inbounds %struct.net, %struct.net* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.nf_queue_handler* @rcu_dereference(i32 %8)
  store %struct.nf_queue_handler* %9, %struct.nf_queue_handler** %3, align 8
  %10 = load %struct.nf_queue_handler*, %struct.nf_queue_handler** %3, align 8
  %11 = icmp ne %struct.nf_queue_handler* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.nf_queue_handler*, %struct.nf_queue_handler** %3, align 8
  %14 = getelementptr inbounds %struct.nf_queue_handler, %struct.nf_queue_handler* %13, i32 0, i32 0
  %15 = load i32 (%struct.net.0*)*, i32 (%struct.net.0*)** %14, align 8
  %16 = load %struct.net*, %struct.net** %2, align 8
  %17 = bitcast %struct.net* %16 to %struct.net.0*
  %18 = call i32 %15(%struct.net.0* %17)
  br label %19

19:                                               ; preds = %12, %1
  %20 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_queue_handler* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
