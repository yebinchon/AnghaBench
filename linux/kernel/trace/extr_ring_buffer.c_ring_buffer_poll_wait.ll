; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_poll_wait.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_poll_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { %struct.ring_buffer_per_cpu**, i32, %struct.rb_irq_work }
%struct.ring_buffer_per_cpu = type { %struct.rb_irq_work }
%struct.rb_irq_work = type { i32, i32 }
%struct.file = type { i32 }

@RING_BUFFER_ALL_CPUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ring_buffer_poll_wait(%struct.ring_buffer* %0, i32 %1, %struct.file* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ring_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ring_buffer_per_cpu*, align 8
  %11 = alloca %struct.rb_irq_work*, align 8
  store %struct.ring_buffer* %0, %struct.ring_buffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.file* %2, %struct.file** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @RING_BUFFER_ALL_CPUS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %17 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %16, i32 0, i32 2
  store %struct.rb_irq_work* %17, %struct.rb_irq_work** %11, align 8
  br label %38

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %21 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @cpumask_test_cpu(i32 %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %68

28:                                               ; preds = %18
  %29 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %30 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %29, i32 0, i32 0
  %31 = load %struct.ring_buffer_per_cpu**, %struct.ring_buffer_per_cpu*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %31, i64 %33
  %35 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %34, align 8
  store %struct.ring_buffer_per_cpu* %35, %struct.ring_buffer_per_cpu** %10, align 8
  %36 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %10, align 8
  %37 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %36, i32 0, i32 0
  store %struct.rb_irq_work* %37, %struct.rb_irq_work** %11, align 8
  br label %38

38:                                               ; preds = %28, %15
  %39 = load %struct.file*, %struct.file** %8, align 8
  %40 = load %struct.rb_irq_work*, %struct.rb_irq_work** %11, align 8
  %41 = getelementptr inbounds %struct.rb_irq_work, %struct.rb_irq_work* %40, i32 0, i32 1
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @poll_wait(%struct.file* %39, i32* %41, i32* %42)
  %44 = load %struct.rb_irq_work*, %struct.rb_irq_work** %11, align 8
  %45 = getelementptr inbounds %struct.rb_irq_work, %struct.rb_irq_work* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = call i32 (...) @smp_mb()
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @RING_BUFFER_ALL_CPUS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %52 = call i32 @ring_buffer_empty(%struct.ring_buffer* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %50, %38
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @RING_BUFFER_ALL_CPUS, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ring_buffer_empty_cpu(%struct.ring_buffer* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58, %50
  %64 = load i32, i32* @EPOLLIN, align 4
  %65 = load i32, i32* @EPOLLRDNORM, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %5, align 4
  br label %68

67:                                               ; preds = %58, %54
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %63, %25
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @ring_buffer_empty(%struct.ring_buffer*) #1

declare dso_local i32 @ring_buffer_empty_cpu(%struct.ring_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
