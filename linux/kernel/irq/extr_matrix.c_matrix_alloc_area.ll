; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_matrix_alloc_area.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_matrix_alloc_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_matrix = type { i32, i32, i32, i32 }
%struct.cpumap = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_matrix*, %struct.cpumap*, i32, i32)* @matrix_alloc_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matrix_alloc_area(%struct.irq_matrix* %0, %struct.cpumap* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_matrix*, align 8
  %7 = alloca %struct.cpumap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.irq_matrix* %0, %struct.irq_matrix** %6, align 8
  store %struct.cpumap* %1, %struct.cpumap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.irq_matrix*, %struct.irq_matrix** %6, align 8
  %14 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.irq_matrix*, %struct.irq_matrix** %6, align 8
  %17 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.irq_matrix*, %struct.irq_matrix** %6, align 8
  %20 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cpumap*, %struct.cpumap** %7, align 8
  %23 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.irq_matrix*, %struct.irq_matrix** %6, align 8
  %26 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @bitmap_or(i32 %21, i32 %24, i32 %27, i32 %28)
  %30 = load %struct.irq_matrix*, %struct.irq_matrix** %6, align 8
  %31 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.irq_matrix*, %struct.irq_matrix** %6, align 8
  %34 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cpumap*, %struct.cpumap** %7, align 8
  %37 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @bitmap_or(i32 %32, i32 %35, i32 %38, i32 %39)
  %41 = load %struct.irq_matrix*, %struct.irq_matrix** %6, align 8
  %42 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @bitmap_find_next_zero_area(i32 %43, i32 %44, i32 %45, i32 %46, i32 0)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp uge i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %4
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %72

53:                                               ; preds = %4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.cpumap*, %struct.cpumap** %7, align 8
  %58 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @bitmap_set(i32 %59, i32 %60, i32 %61)
  br label %70

63:                                               ; preds = %53
  %64 = load %struct.cpumap*, %struct.cpumap** %7, align 8
  %65 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @bitmap_set(i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %56
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %51
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @bitmap_or(i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_find_next_zero_area(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
