; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_irq_matrix_assign.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_irq_matrix_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_matrix = type { i32, i32, i32, i32, i32 }
%struct.cpumap = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_matrix_assign(%struct.irq_matrix* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_matrix*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpumap*, align 8
  store %struct.irq_matrix* %0, %struct.irq_matrix** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.irq_matrix*, %struct.irq_matrix** %3, align 8
  %7 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.cpumap* @this_cpu_ptr(i32 %8)
  store %struct.cpumap* %9, %struct.cpumap** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.irq_matrix*, %struct.irq_matrix** %3, align 8
  %12 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.irq_matrix*, %struct.irq_matrix** %3, align 8
  %18 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp uge i32 %16, %19
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i1 [ true, %2 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON_ONCE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %58

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.cpumap*, %struct.cpumap** %5, align 8
  %30 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @test_and_set_bit(i32 %28, i32 %31)
  %33 = call i64 @WARN_ON_ONCE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %58

36:                                               ; preds = %27
  %37 = load %struct.cpumap*, %struct.cpumap** %5, align 8
  %38 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.irq_matrix*, %struct.irq_matrix** %3, align 8
  %42 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.cpumap*, %struct.cpumap** %5, align 8
  %46 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.irq_matrix*, %struct.irq_matrix** %3, align 8
  %50 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (...) @smp_processor_id()
  %55 = load %struct.irq_matrix*, %struct.irq_matrix** %3, align 8
  %56 = load %struct.cpumap*, %struct.cpumap** %5, align 8
  %57 = call i32 @trace_irq_matrix_assign(i32 %53, i32 %54, %struct.irq_matrix* %55, %struct.cpumap* %56)
  br label %58

58:                                               ; preds = %36, %35, %26
  ret void
}

declare dso_local %struct.cpumap* @this_cpu_ptr(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @trace_irq_matrix_assign(i32, i32, %struct.irq_matrix*, %struct.cpumap*) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
