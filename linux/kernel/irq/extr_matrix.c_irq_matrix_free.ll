; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_irq_matrix_free.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_irq_matrix_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_matrix = type { i32, i32, i32, i32, i32 }
%struct.cpumap = type { i64, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_matrix_free(%struct.irq_matrix* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.irq_matrix*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpumap*, align 8
  store %struct.irq_matrix* %0, %struct.irq_matrix** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.irq_matrix*, %struct.irq_matrix** %5, align 8
  %11 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.cpumap* @per_cpu_ptr(i32 %12, i32 %13)
  store %struct.cpumap* %14, %struct.cpumap** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.irq_matrix*, %struct.irq_matrix** %5, align 8
  %17 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.irq_matrix*, %struct.irq_matrix** %5, align 8
  %23 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp uge i32 %21, %24
  br label %26

26:                                               ; preds = %20, %4
  %27 = phi i1 [ true, %4 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON_ONCE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %83

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.cpumap*, %struct.cpumap** %9, align 8
  %35 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clear_bit(i32 %33, i32 %36)
  %38 = load %struct.cpumap*, %struct.cpumap** %9, align 8
  %39 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load %struct.cpumap*, %struct.cpumap** %9, align 8
  %46 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44, %32
  %50 = load %struct.cpumap*, %struct.cpumap** %9, align 8
  %51 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.irq_matrix*, %struct.irq_matrix** %5, align 8
  %56 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %59
  %63 = load %struct.cpumap*, %struct.cpumap** %9, align 8
  %64 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.cpumap*, %struct.cpumap** %9, align 8
  %68 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load %struct.irq_matrix*, %struct.irq_matrix** %5, align 8
  %73 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %71, %62
  br label %77

77:                                               ; preds = %76, %59
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.irq_matrix*, %struct.irq_matrix** %5, align 8
  %81 = load %struct.cpumap*, %struct.cpumap** %9, align 8
  %82 = call i32 @trace_irq_matrix_free(i32 %78, i32 %79, %struct.irq_matrix* %80, %struct.cpumap* %81)
  br label %83

83:                                               ; preds = %77, %31
  ret void
}

declare dso_local %struct.cpumap* @per_cpu_ptr(i32, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @trace_irq_matrix_free(i32, i32, %struct.irq_matrix*, %struct.cpumap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
