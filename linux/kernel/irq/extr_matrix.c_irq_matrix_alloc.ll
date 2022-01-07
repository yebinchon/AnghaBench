; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_irq_matrix_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_irq_matrix_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_matrix = type { i32, i32, i32, i32, i32 }
%struct.cpumask = type { i32 }
%struct.cpumap = type { i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_matrix_alloc(%struct.irq_matrix* %0, %struct.cpumask* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_matrix*, align 8
  %7 = alloca %struct.cpumask*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cpumap*, align 8
  store %struct.irq_matrix* %0, %struct.irq_matrix** %6, align 8
  store %struct.cpumask* %1, %struct.cpumask** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.irq_matrix*, %struct.irq_matrix** %6, align 8
  %14 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %15 = call i32 @matrix_find_best_cpu(%struct.irq_matrix* %13, %struct.cpumask* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @UINT_MAX, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOSPC, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %72

22:                                               ; preds = %4
  %23 = load %struct.irq_matrix*, %struct.irq_matrix** %6, align 8
  %24 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call %struct.cpumap* @per_cpu_ptr(i32 %25, i32 %26)
  store %struct.cpumap* %27, %struct.cpumap** %12, align 8
  %28 = load %struct.irq_matrix*, %struct.irq_matrix** %6, align 8
  %29 = load %struct.cpumap*, %struct.cpumap** %12, align 8
  %30 = call i32 @matrix_alloc_area(%struct.irq_matrix* %28, %struct.cpumap* %29, i32 1, i32 0)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.irq_matrix*, %struct.irq_matrix** %6, align 8
  %33 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp uge i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load i32, i32* @ENOSPC, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %72

39:                                               ; preds = %22
  %40 = load %struct.cpumap*, %struct.cpumap** %12, align 8
  %41 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.cpumap*, %struct.cpumap** %12, align 8
  %45 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.irq_matrix*, %struct.irq_matrix** %6, align 8
  %49 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.irq_matrix*, %struct.irq_matrix** %6, align 8
  %53 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %39
  %59 = load %struct.irq_matrix*, %struct.irq_matrix** %6, align 8
  %60 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %58, %39
  %64 = load i32, i32* %10, align 4
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.irq_matrix*, %struct.irq_matrix** %6, align 8
  %69 = load %struct.cpumap*, %struct.cpumap** %12, align 8
  %70 = call i32 @trace_irq_matrix_alloc(i32 %66, i32 %67, %struct.irq_matrix* %68, %struct.cpumap* %69)
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %63, %36, %19
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @matrix_find_best_cpu(%struct.irq_matrix*, %struct.cpumask*) #1

declare dso_local %struct.cpumap* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @matrix_alloc_area(%struct.irq_matrix*, %struct.cpumap*, i32, i32) #1

declare dso_local i32 @trace_irq_matrix_alloc(i32, i32, %struct.irq_matrix*, %struct.cpumap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
