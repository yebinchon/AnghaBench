; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_reset_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_reset_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { i32, i32, %struct.ring_buffer_per_cpu** }
%struct.ring_buffer_per_cpu = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ring_buffer_reset_cpu(%struct.ring_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.ring_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ring_buffer_per_cpu*, align 8
  %6 = alloca i64, align 8
  store %struct.ring_buffer* %0, %struct.ring_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %7, i32 0, i32 2
  %9 = load %struct.ring_buffer_per_cpu**, %struct.ring_buffer_per_cpu*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %9, i64 %11
  %13 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %12, align 8
  store %struct.ring_buffer_per_cpu* %13, %struct.ring_buffer_per_cpu** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cpumask_test_cpu(i32 %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %60

21:                                               ; preds = %2
  %22 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %23 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %22, i32 0, i32 0
  %24 = call i32 @atomic_inc(i32* %23)
  %25 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %26 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %25, i32 0, i32 0
  %27 = call i32 @atomic_inc(i32* %26)
  %28 = call i32 (...) @synchronize_rcu()
  %29 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %30 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %29, i32 0, i32 1
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @raw_spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %34 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %35 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %34, i32 0, i32 3
  %36 = call i32 @local_read(i32* %35)
  %37 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %21
  br label %49

40:                                               ; preds = %21
  %41 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %42 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %41, i32 0, i32 2
  %43 = call i32 @arch_spin_lock(i32* %42)
  %44 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %45 = call i32 @rb_reset_cpu(%struct.ring_buffer_per_cpu* %44)
  %46 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %47 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %46, i32 0, i32 2
  %48 = call i32 @arch_spin_unlock(i32* %47)
  br label %49

49:                                               ; preds = %40, %39
  %50 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %51 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %50, i32 0, i32 1
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @raw_spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %55 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %54, i32 0, i32 0
  %56 = call i32 @atomic_dec(i32* %55)
  %57 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %58 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %57, i32 0, i32 0
  %59 = call i32 @atomic_dec(i32* %58)
  br label %60

60:                                               ; preds = %49, %20
  ret void
}

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu*, i32) #1

declare dso_local i32 @local_read(i32*) #1

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local i32 @rb_reset_cpu(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
