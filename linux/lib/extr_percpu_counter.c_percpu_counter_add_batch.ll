; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_percpu_counter.c_percpu_counter_add_batch.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_percpu_counter.c_percpu_counter_add_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.percpu_counter = type { i32*, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @percpu_counter_add_batch(%struct.percpu_counter* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.percpu_counter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.percpu_counter* %0, %struct.percpu_counter** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call i32 (...) @preempt_disable()
  %10 = load %struct.percpu_counter*, %struct.percpu_counter** %4, align 8
  %11 = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @__this_cpu_read(i32 %13)
  %15 = load i64, i64* %5, align 8
  %16 = add nsw i64 %14, %15
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub nsw i64 0, %22
  %24 = icmp sle i64 %21, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %20, %3
  %26 = load %struct.percpu_counter*, %struct.percpu_counter** %4, align 8
  %27 = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %26, i32 0, i32 1
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @raw_spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.percpu_counter*, %struct.percpu_counter** %4, align 8
  %32 = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, %30
  store i64 %34, i64* %32, align 8
  %35 = load %struct.percpu_counter*, %struct.percpu_counter** %4, align 8
  %36 = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %5, align 8
  %41 = sub nsw i64 %39, %40
  %42 = call i32 @__this_cpu_sub(i32 %38, i64 %41)
  %43 = load %struct.percpu_counter*, %struct.percpu_counter** %4, align 8
  %44 = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %43, i32 0, i32 1
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @raw_spin_unlock_irqrestore(i32* %44, i64 %45)
  br label %54

47:                                               ; preds = %20
  %48 = load %struct.percpu_counter*, %struct.percpu_counter** %4, align 8
  %49 = getelementptr inbounds %struct.percpu_counter, %struct.percpu_counter* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @this_cpu_add(i32 %51, i64 %52)
  br label %54

54:                                               ; preds = %47, %25
  %55 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @__this_cpu_read(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__this_cpu_sub(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @this_cpu_add(i32, i64) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
