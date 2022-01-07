; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c_call_srcu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c_call_srcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_struct = type { i32 }
%struct.rcu_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @call_srcu(%struct.srcu_struct* %0, %struct.rcu_head* %1, i32 %2) #0 {
  %4 = alloca %struct.srcu_struct*, align 8
  %5 = alloca %struct.rcu_head*, align 8
  %6 = alloca i32, align 4
  store %struct.srcu_struct* %0, %struct.srcu_struct** %4, align 8
  store %struct.rcu_head* %1, %struct.rcu_head** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.srcu_struct*, %struct.srcu_struct** %4, align 8
  %8 = load %struct.rcu_head*, %struct.rcu_head** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @__call_srcu(%struct.srcu_struct* %7, %struct.rcu_head* %8, i32 %9, i32 1)
  ret void
}

declare dso_local i32 @__call_srcu(%struct.srcu_struct*, %struct.rcu_head*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
