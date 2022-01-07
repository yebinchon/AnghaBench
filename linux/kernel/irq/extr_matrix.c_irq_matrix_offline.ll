; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_irq_matrix_offline.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_matrix.c_irq_matrix_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_matrix = type { i32, i32, i32 }
%struct.cpumap = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_matrix_offline(%struct.irq_matrix* %0) #0 {
  %2 = alloca %struct.irq_matrix*, align 8
  %3 = alloca %struct.cpumap*, align 8
  store %struct.irq_matrix* %0, %struct.irq_matrix** %2, align 8
  %4 = load %struct.irq_matrix*, %struct.irq_matrix** %2, align 8
  %5 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.cpumap* @this_cpu_ptr(i32 %6)
  store %struct.cpumap* %7, %struct.cpumap** %3, align 8
  %8 = load %struct.cpumap*, %struct.cpumap** %3, align 8
  %9 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.irq_matrix*, %struct.irq_matrix** %2, align 8
  %12 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = sub nsw i64 %14, %10
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %12, align 4
  %17 = load %struct.cpumap*, %struct.cpumap** %3, align 8
  %18 = getelementptr inbounds %struct.cpumap, %struct.cpumap* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.irq_matrix*, %struct.irq_matrix** %2, align 8
  %20 = getelementptr inbounds %struct.irq_matrix, %struct.irq_matrix* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.irq_matrix*, %struct.irq_matrix** %2, align 8
  %24 = call i32 @trace_irq_matrix_offline(%struct.irq_matrix* %23)
  ret void
}

declare dso_local %struct.cpumap* @this_cpu_ptr(i32) #1

declare dso_local i32 @trace_irq_matrix_offline(%struct.irq_matrix*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
