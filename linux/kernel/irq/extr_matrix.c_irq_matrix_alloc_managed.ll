; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_irq_matrix_alloc_managed.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_irq_matrix_alloc_managed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_matrix = type { i32, i32, i32, i32 }
%struct.cpumask = type { i32 }
%struct.cpumap = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_matrix_alloc_managed(%struct.irq_matrix* %0, %struct.cpumask* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_matrix*, align 8
  %6 = alloca %struct.cpumask*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cpumap*, align 8
  store %struct.irq_matrix* %0, %struct.irq_matrix** %5, align 8
  store %struct.cpumask* %1, %struct.cpumask** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.irq_matrix*, %struct.irq_matrix** %5, align 8
  %13 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %16 = call i64 @cpumask_empty(%struct.cpumask* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %88

21:                                               ; preds = %3
  %22 = load %struct.irq_matrix*, %struct.irq_matrix** %5, align 8
  %23 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %24 = call i32 @matrix_find_best_cpu_managed(%struct.irq_matrix* %22, %struct.cpumask* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @UINT_MAX, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOSPC, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %88

31:                                               ; preds = %21
  %32 = load %struct.irq_matrix*, %struct.irq_matrix** %5, align 8
  %33 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.cpumap* @per_cpu_ptr(i32 %34, i32 %35)
  store %struct.cpumap* %36, %struct.cpumap** %11, align 8
  %37 = load %struct.irq_matrix*, %struct.irq_matrix** %5, align 8
  %38 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.irq_matrix*, %struct.irq_matrix** %5, align 8
  %41 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cpumap*, %struct.cpumap** %11, align 8
  %44 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cpumap*, %struct.cpumap** %11, align 8
  %47 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @bitmap_andnot(i32 %42, i32 %45, i32 %48, i32 %49)
  %51 = load %struct.irq_matrix*, %struct.irq_matrix** %5, align 8
  %52 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @find_first_bit(i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp uge i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %31
  %60 = load i32, i32* @ENOSPC, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %88

62:                                               ; preds = %31
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.cpumap*, %struct.cpumap** %11, align 8
  %65 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @set_bit(i32 %63, i32 %66)
  %68 = load %struct.cpumap*, %struct.cpumap** %11, align 8
  %69 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.cpumap*, %struct.cpumap** %11, align 8
  %73 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.irq_matrix*, %struct.irq_matrix** %5, align 8
  %77 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32*, i32** %7, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.irq_matrix*, %struct.irq_matrix** %5, align 8
  %85 = load %struct.cpumap*, %struct.cpumap** %11, align 8
  %86 = call i32 @trace_irq_matrix_alloc_managed(i32 %82, i32 %83, %struct.irq_matrix* %84, %struct.cpumap* %85)
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %62, %59, %28, %18
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i64 @cpumask_empty(%struct.cpumask*) #1

declare dso_local i32 @matrix_find_best_cpu_managed(%struct.irq_matrix*, %struct.cpumask*) #1

declare dso_local %struct.cpumap* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @bitmap_andnot(i32, i32, i32, i32) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @trace_irq_matrix_alloc_managed(i32, i32, %struct.irq_matrix*, %struct.cpumap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
