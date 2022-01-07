; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_lockdep_reset_lock_reg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_lockdep_reset_lock_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lockdep_map = type { i32 }
%struct.pending_free = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lockdep_map*)* @lockdep_reset_lock_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lockdep_reset_lock_reg(%struct.lockdep_map* %0) #0 {
  %2 = alloca %struct.lockdep_map*, align 8
  %3 = alloca %struct.pending_free*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.lockdep_map* %0, %struct.lockdep_map** %2, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @raw_local_irq_save(i64 %6)
  %8 = call i32 (...) @graph_lock()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %20

12:                                               ; preds = %1
  %13 = call %struct.pending_free* (...) @get_pending_free()
  store %struct.pending_free* %13, %struct.pending_free** %3, align 8
  %14 = load %struct.pending_free*, %struct.pending_free** %3, align 8
  %15 = load %struct.lockdep_map*, %struct.lockdep_map** %2, align 8
  %16 = call i32 @__lockdep_reset_lock(%struct.pending_free* %14, %struct.lockdep_map* %15)
  %17 = load %struct.pending_free*, %struct.pending_free** %3, align 8
  %18 = call i32 @call_rcu_zapped(%struct.pending_free* %17)
  %19 = call i32 (...) @graph_unlock()
  br label %20

20:                                               ; preds = %12, %11
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @raw_local_irq_restore(i64 %21)
  ret void
}

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i32 @graph_lock(...) #1

declare dso_local %struct.pending_free* @get_pending_free(...) #1

declare dso_local i32 @__lockdep_reset_lock(%struct.pending_free*, %struct.lockdep_map*) #1

declare dso_local i32 @call_rcu_zapped(%struct.pending_free*) #1

declare dso_local i32 @graph_unlock(...) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
