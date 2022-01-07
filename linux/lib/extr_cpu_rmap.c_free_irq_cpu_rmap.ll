; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_cpu_rmap.c_free_irq_cpu_rmap.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_cpu_rmap.c_free_irq_cpu_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_rmap = type { i64, %struct.irq_glue** }
%struct.irq_glue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_irq_cpu_rmap(%struct.cpu_rmap* %0) #0 {
  %2 = alloca %struct.cpu_rmap*, align 8
  %3 = alloca %struct.irq_glue*, align 8
  %4 = alloca i64, align 8
  store %struct.cpu_rmap* %0, %struct.cpu_rmap** %2, align 8
  %5 = load %struct.cpu_rmap*, %struct.cpu_rmap** %2, align 8
  %6 = icmp ne %struct.cpu_rmap* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %33

8:                                                ; preds = %1
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %27, %8
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.cpu_rmap*, %struct.cpu_rmap** %2, align 8
  %12 = getelementptr inbounds %struct.cpu_rmap, %struct.cpu_rmap* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %9
  %16 = load %struct.cpu_rmap*, %struct.cpu_rmap** %2, align 8
  %17 = getelementptr inbounds %struct.cpu_rmap, %struct.cpu_rmap* %16, i32 0, i32 1
  %18 = load %struct.irq_glue**, %struct.irq_glue*** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.irq_glue*, %struct.irq_glue** %18, i64 %19
  %21 = load %struct.irq_glue*, %struct.irq_glue** %20, align 8
  store %struct.irq_glue* %21, %struct.irq_glue** %3, align 8
  %22 = load %struct.irq_glue*, %struct.irq_glue** %3, align 8
  %23 = getelementptr inbounds %struct.irq_glue, %struct.irq_glue* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @irq_set_affinity_notifier(i32 %25, i32* null)
  br label %27

27:                                               ; preds = %15
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %4, align 8
  br label %9

30:                                               ; preds = %9
  %31 = load %struct.cpu_rmap*, %struct.cpu_rmap** %2, align 8
  %32 = call i32 @cpu_rmap_put(%struct.cpu_rmap* %31)
  br label %33

33:                                               ; preds = %30, %7
  ret void
}

declare dso_local i32 @irq_set_affinity_notifier(i32, i32*) #1

declare dso_local i32 @cpu_rmap_put(%struct.cpu_rmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
