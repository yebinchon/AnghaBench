; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_jump_label.c_static_key_slow_inc_cpuslocked.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_jump_label.c_static_key_slow_inc_cpuslocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @static_key_slow_inc_cpuslocked(%struct.static_key* %0) #0 {
  %2 = alloca %struct.static_key*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.static_key* %0, %struct.static_key** %2, align 8
  %5 = load %struct.static_key*, %struct.static_key** %2, align 8
  %6 = call i32 @STATIC_KEY_CHECK_USE(%struct.static_key* %5)
  %7 = call i32 (...) @lockdep_assert_cpus_held()
  %8 = load %struct.static_key*, %struct.static_key** %2, align 8
  %9 = getelementptr inbounds %struct.static_key, %struct.static_key* %8, i32 0, i32 0
  %10 = call i32 @atomic_read(i32* %9)
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %29, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = load %struct.static_key*, %struct.static_key** %2, align 8
  %16 = getelementptr inbounds %struct.static_key, %struct.static_key* %15, i32 0, i32 0
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @atomic_cmpxchg(i32* %16, i32 %17, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %52

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %3, align 4
  br label %11

31:                                               ; preds = %11
  %32 = call i32 (...) @jump_label_lock()
  %33 = load %struct.static_key*, %struct.static_key** %2, align 8
  %34 = getelementptr inbounds %struct.static_key, %struct.static_key* %33, i32 0, i32 0
  %35 = call i32 @atomic_read(i32* %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.static_key*, %struct.static_key** %2, align 8
  %39 = getelementptr inbounds %struct.static_key, %struct.static_key* %38, i32 0, i32 0
  %40 = call i32 @atomic_set(i32* %39, i32 -1)
  %41 = load %struct.static_key*, %struct.static_key** %2, align 8
  %42 = call i32 @jump_label_update(%struct.static_key* %41)
  %43 = load %struct.static_key*, %struct.static_key** %2, align 8
  %44 = getelementptr inbounds %struct.static_key, %struct.static_key* %43, i32 0, i32 0
  %45 = call i32 @atomic_set_release(i32* %44, i32 1)
  br label %50

46:                                               ; preds = %31
  %47 = load %struct.static_key*, %struct.static_key** %2, align 8
  %48 = getelementptr inbounds %struct.static_key, %struct.static_key* %47, i32 0, i32 0
  %49 = call i32 @atomic_inc(i32* %48)
  br label %50

50:                                               ; preds = %46, %37
  %51 = call i32 (...) @jump_label_unlock()
  br label %52

52:                                               ; preds = %50, %27
  ret void
}

declare dso_local i32 @STATIC_KEY_CHECK_USE(%struct.static_key*) #1

declare dso_local i32 @lockdep_assert_cpus_held(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @jump_label_lock(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @jump_label_update(%struct.static_key*) #1

declare dso_local i32 @atomic_set_release(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @jump_label_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
