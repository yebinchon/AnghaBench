; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_jump_label.c_static_key_disable_cpuslocked.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_jump_label.c_static_key_disable_cpuslocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @static_key_disable_cpuslocked(%struct.static_key* %0) #0 {
  %2 = alloca %struct.static_key*, align 8
  store %struct.static_key* %0, %struct.static_key** %2, align 8
  %3 = load %struct.static_key*, %struct.static_key** %2, align 8
  %4 = call i32 @STATIC_KEY_CHECK_USE(%struct.static_key* %3)
  %5 = call i32 (...) @lockdep_assert_cpus_held()
  %6 = load %struct.static_key*, %struct.static_key** %2, align 8
  %7 = getelementptr inbounds %struct.static_key, %struct.static_key* %6, i32 0, i32 0
  %8 = call i32 @atomic_read(i32* %7)
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.static_key*, %struct.static_key** %2, align 8
  %12 = getelementptr inbounds %struct.static_key, %struct.static_key* %11, i32 0, i32 0
  %13 = call i32 @atomic_read(i32* %12)
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON_ONCE(i32 %15)
  br label %28

17:                                               ; preds = %1
  %18 = call i32 (...) @jump_label_lock()
  %19 = load %struct.static_key*, %struct.static_key** %2, align 8
  %20 = getelementptr inbounds %struct.static_key, %struct.static_key* %19, i32 0, i32 0
  %21 = call i64 @atomic_cmpxchg(i32* %20, i32 1, i32 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.static_key*, %struct.static_key** %2, align 8
  %25 = call i32 @jump_label_update(%struct.static_key* %24)
  br label %26

26:                                               ; preds = %23, %17
  %27 = call i32 (...) @jump_label_unlock()
  br label %28

28:                                               ; preds = %26, %10
  ret void
}

declare dso_local i32 @STATIC_KEY_CHECK_USE(%struct.static_key*) #1

declare dso_local i32 @lockdep_assert_cpus_held(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @jump_label_lock(...) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @jump_label_update(%struct.static_key*) #1

declare dso_local i32 @jump_label_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
