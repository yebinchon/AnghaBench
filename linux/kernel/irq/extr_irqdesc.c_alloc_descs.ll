; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_irqdesc.c_alloc_descs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_irqdesc.c_alloc_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_affinity_desc = type { i32 }
%struct.module = type { i32 }
%struct.irq_desc = type { %struct.module* }

@allocated_irqs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.irq_affinity_desc*, %struct.module*)* @alloc_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_descs(i32 %0, i32 %1, i32 %2, %struct.irq_affinity_desc* %3, %struct.module* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.irq_affinity_desc*, align 8
  %10 = alloca %struct.module*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.irq_desc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.irq_affinity_desc* %3, %struct.irq_affinity_desc** %9, align 8
  store %struct.module* %4, %struct.module** %10, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %25, %5
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %11, align 4
  %20 = add i32 %18, %19
  %21 = call %struct.irq_desc* @irq_to_desc(i32 %20)
  store %struct.irq_desc* %21, %struct.irq_desc** %12, align 8
  %22 = load %struct.module*, %struct.module** %10, align 8
  %23 = load %struct.irq_desc*, %struct.irq_desc** %12, align 8
  %24 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %23, i32 0, i32 0
  store %struct.module* %22, %struct.module** %24, align 8
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %11, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %11, align 4
  br label %13

28:                                               ; preds = %13
  %29 = load i32, i32* @allocated_irqs, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @bitmap_set(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
