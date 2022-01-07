; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_map_inc_not_zero.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_map_inc_not_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }

@map_idr_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_map* @bpf_map_inc_not_zero(%struct.bpf_map* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_map*, align 8
  %4 = alloca i32, align 4
  store %struct.bpf_map* %0, %struct.bpf_map** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @spin_lock_bh(i32* @map_idr_lock)
  %6 = load %struct.bpf_map*, %struct.bpf_map** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.bpf_map* @__bpf_map_inc_not_zero(%struct.bpf_map* %6, i32 %7)
  store %struct.bpf_map* %8, %struct.bpf_map** %3, align 8
  %9 = call i32 @spin_unlock_bh(i32* @map_idr_lock)
  %10 = load %struct.bpf_map*, %struct.bpf_map** %3, align 8
  ret %struct.bpf_map* %10
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.bpf_map* @__bpf_map_inc_not_zero(%struct.bpf_map*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
