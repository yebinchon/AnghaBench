; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_jump_label.c___static_key_slow_dec_cpuslocked.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_jump_label.c___static_key_slow_dec_cpuslocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.static_key*)* @__static_key_slow_dec_cpuslocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__static_key_slow_dec_cpuslocked(%struct.static_key* %0) #0 {
  %2 = alloca %struct.static_key*, align 8
  store %struct.static_key* %0, %struct.static_key** %2, align 8
  %3 = call i32 (...) @lockdep_assert_cpus_held()
  %4 = load %struct.static_key*, %struct.static_key** %2, align 8
  %5 = call i64 @static_key_slow_try_dec(%struct.static_key* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %19

8:                                                ; preds = %1
  %9 = call i32 (...) @jump_label_lock()
  %10 = load %struct.static_key*, %struct.static_key** %2, align 8
  %11 = getelementptr inbounds %struct.static_key, %struct.static_key* %10, i32 0, i32 0
  %12 = call i64 @atomic_dec_and_test(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.static_key*, %struct.static_key** %2, align 8
  %16 = call i32 @jump_label_update(%struct.static_key* %15)
  br label %17

17:                                               ; preds = %14, %8
  %18 = call i32 (...) @jump_label_unlock()
  br label %19

19:                                               ; preds = %17, %7
  ret void
}

declare dso_local i32 @lockdep_assert_cpus_held(...) #1

declare dso_local i64 @static_key_slow_try_dec(%struct.static_key*) #1

declare dso_local i32 @jump_label_lock(...) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @jump_label_update(%struct.static_key*) #1

declare dso_local i32 @jump_label_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
