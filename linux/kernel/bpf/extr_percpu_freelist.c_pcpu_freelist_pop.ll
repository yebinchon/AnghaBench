; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_percpu_freelist.c_pcpu_freelist_pop.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_percpu_freelist.c_pcpu_freelist_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_freelist_node = type { i32 }
%struct.pcpu_freelist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pcpu_freelist_node* @pcpu_freelist_pop(%struct.pcpu_freelist* %0) #0 {
  %2 = alloca %struct.pcpu_freelist*, align 8
  %3 = alloca %struct.pcpu_freelist_node*, align 8
  %4 = alloca i64, align 8
  store %struct.pcpu_freelist* %0, %struct.pcpu_freelist** %2, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @local_irq_save(i64 %5)
  %7 = load %struct.pcpu_freelist*, %struct.pcpu_freelist** %2, align 8
  %8 = call %struct.pcpu_freelist_node* @__pcpu_freelist_pop(%struct.pcpu_freelist* %7)
  store %struct.pcpu_freelist_node* %8, %struct.pcpu_freelist_node** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @local_irq_restore(i64 %9)
  %11 = load %struct.pcpu_freelist_node*, %struct.pcpu_freelist_node** %3, align 8
  ret %struct.pcpu_freelist_node* %11
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local %struct.pcpu_freelist_node* @__pcpu_freelist_pop(%struct.pcpu_freelist*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
