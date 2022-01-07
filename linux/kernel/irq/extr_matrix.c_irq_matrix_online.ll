; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_irq_matrix_online.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_irq_matrix_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_matrix = type { i32, i32, i64, i64, i32 }
%struct.cpumap = type { i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_matrix_online(%struct.irq_matrix* %0) #0 {
  %2 = alloca %struct.irq_matrix*, align 8
  %3 = alloca %struct.cpumap*, align 8
  store %struct.irq_matrix* %0, %struct.irq_matrix** %2, align 8
  %4 = load %struct.irq_matrix*, %struct.irq_matrix** %2, align 8
  %5 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.cpumap* @this_cpu_ptr(i32 %6)
  store %struct.cpumap* %7, %struct.cpumap** %3, align 8
  %8 = load %struct.cpumap*, %struct.cpumap** %3, align 8
  %9 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.cpumap*, %struct.cpumap** %3, align 8
  %13 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %1
  %17 = load %struct.irq_matrix*, %struct.irq_matrix** %2, align 8
  %18 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.cpumap*, %struct.cpumap** %3, align 8
  %21 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = load %struct.cpumap*, %struct.cpumap** %3, align 8
  %23 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.irq_matrix*, %struct.irq_matrix** %2, align 8
  %26 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.cpumap*, %struct.cpumap** %3, align 8
  %30 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load %struct.cpumap*, %struct.cpumap** %3, align 8
  %34 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %16, %1
  %36 = load %struct.cpumap*, %struct.cpumap** %3, align 8
  %37 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.irq_matrix*, %struct.irq_matrix** %2, align 8
  %40 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %38
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load %struct.cpumap*, %struct.cpumap** %3, align 8
  %46 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.irq_matrix*, %struct.irq_matrix** %2, align 8
  %48 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.irq_matrix*, %struct.irq_matrix** %2, align 8
  %52 = call i32 @trace_irq_matrix_online(%struct.irq_matrix* %51)
  ret void
}

declare dso_local %struct.cpumap* @this_cpu_ptr(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @trace_irq_matrix_online(%struct.irq_matrix*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
