; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_domain_alloc_descs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_domain_alloc_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_affinity_desc = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@nr_irqs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_domain_alloc_descs(i32 %0, i32 %1, i32 %2, i32 %3, %struct.irq_affinity_desc* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.irq_affinity_desc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.irq_affinity_desc* %4, %struct.irq_affinity_desc** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %5
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @THIS_MODULE, align 4
  %20 = load %struct.irq_affinity_desc*, %struct.irq_affinity_desc** %10, align 8
  %21 = call i32 @__irq_alloc_descs(i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, %struct.irq_affinity_desc* %20)
  store i32 %21, i32* %6, align 4
  br label %50

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @nr_irqs, align 4
  %25 = urem i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %11, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @THIS_MODULE, align 4
  %36 = load %struct.irq_affinity_desc*, %struct.irq_affinity_desc** %10, align 8
  %37 = call i32 @__irq_alloc_descs(i32 -1, i32 %32, i32 %33, i32 %34, i32 %35, %struct.irq_affinity_desc* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load i32, i32* %11, align 4
  %42 = icmp ugt i32 %41, 1
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @THIS_MODULE, align 4
  %47 = load %struct.irq_affinity_desc*, %struct.irq_affinity_desc** %10, align 8
  %48 = call i32 @__irq_alloc_descs(i32 -1, i32 1, i32 %44, i32 %45, i32 %46, %struct.irq_affinity_desc* %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %43, %40, %31
  br label %50

50:                                               ; preds = %49, %14
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @__irq_alloc_descs(i32, i32, i32, i32, i32, %struct.irq_affinity_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
