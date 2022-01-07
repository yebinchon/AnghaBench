; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_irq_matrix_assign_system.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_irq_matrix_assign_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_matrix = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cpumap = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_matrix_assign_system(%struct.irq_matrix* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_matrix*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpumap*, align 8
  store %struct.irq_matrix* %0, %struct.irq_matrix** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.irq_matrix*, %struct.irq_matrix** %4, align 8
  %9 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.cpumap* @this_cpu_ptr(i32 %10)
  store %struct.cpumap* %11, %struct.cpumap** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.irq_matrix*, %struct.irq_matrix** %4, align 8
  %14 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ugt i32 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.irq_matrix*, %struct.irq_matrix** %4, align 8
  %20 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %34, label %23

23:                                               ; preds = %3
  %24 = load %struct.irq_matrix*, %struct.irq_matrix** %4, align 8
  %25 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %28, %23
  %33 = phi i1 [ false, %23 ], [ %31, %28 ]
  br label %34

34:                                               ; preds = %32, %3
  %35 = phi i1 [ true, %3 ], [ %33, %32 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.irq_matrix*, %struct.irq_matrix** %4, align 8
  %40 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @set_bit(i32 %38, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %34
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.cpumap*, %struct.cpumap** %7, align 8
  %48 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @test_and_clear_bit(i32 %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load %struct.cpumap*, %struct.cpumap** %7, align 8
  %56 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.irq_matrix*, %struct.irq_matrix** %4, align 8
  %60 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %45, %34
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.irq_matrix*, %struct.irq_matrix** %4, align 8
  %66 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp uge i32 %64, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.irq_matrix*, %struct.irq_matrix** %4, align 8
  %72 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp ult i32 %70, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.irq_matrix*, %struct.irq_matrix** %4, align 8
  %77 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %75, %69, %63
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.irq_matrix*, %struct.irq_matrix** %4, align 8
  %83 = call i32 @trace_irq_matrix_assign_system(i32 %81, %struct.irq_matrix* %82)
  ret void
}

declare dso_local %struct.cpumap* @this_cpu_ptr(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @trace_irq_matrix_assign_system(i32, %struct.irq_matrix*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
