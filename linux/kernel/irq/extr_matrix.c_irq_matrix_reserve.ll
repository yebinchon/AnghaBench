; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_irq_matrix_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_irq_matrix_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_matrix = type { i64, i64 }

@.str = private unnamed_addr constant [51 x i8] c"Interrupt reservation exceeds available resources\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_matrix_reserve(%struct.irq_matrix* %0) #0 {
  %2 = alloca %struct.irq_matrix*, align 8
  store %struct.irq_matrix* %0, %struct.irq_matrix** %2, align 8
  %3 = load %struct.irq_matrix*, %struct.irq_matrix** %2, align 8
  %4 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.irq_matrix*, %struct.irq_matrix** %2, align 8
  %7 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp sle i64 %5, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.irq_matrix*, %struct.irq_matrix** %2, align 8
  %12 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  %15 = load %struct.irq_matrix*, %struct.irq_matrix** %2, align 8
  %16 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = call i32 @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %10, %1
  %22 = load %struct.irq_matrix*, %struct.irq_matrix** %2, align 8
  %23 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.irq_matrix*, %struct.irq_matrix** %2, align 8
  %27 = call i32 @trace_irq_matrix_reserve(%struct.irq_matrix* %26)
  ret void
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @trace_irq_matrix_reserve(%struct.irq_matrix*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
