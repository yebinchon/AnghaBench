; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_irq_matrix_available.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_irq_matrix_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_matrix = type { i32, i32 }
%struct.cpumap = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_matrix_available(%struct.irq_matrix* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_matrix*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpumap*, align 8
  store %struct.irq_matrix* %0, %struct.irq_matrix** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.irq_matrix*, %struct.irq_matrix** %4, align 8
  %8 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.cpumap* @this_cpu_ptr(i32 %9)
  store %struct.cpumap* %10, %struct.cpumap** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load %struct.irq_matrix*, %struct.irq_matrix** %4, align 8
  %15 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.irq_matrix*, %struct.irq_matrix** %4, align 8
  %19 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cpumap*, %struct.cpumap** %6, align 8
  %22 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub i32 %20, %23
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %17, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.cpumap* @this_cpu_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
