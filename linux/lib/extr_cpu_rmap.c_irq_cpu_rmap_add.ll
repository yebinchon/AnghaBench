; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_cpu_rmap.c_irq_cpu_rmap_add.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_cpu_rmap.c_irq_cpu_rmap_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_rmap = type { i32 }
%struct.irq_glue = type { %struct.cpu_rmap*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@irq_cpu_rmap_notify = common dso_local global i32 0, align 4
@irq_cpu_rmap_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_cpu_rmap_add(%struct.cpu_rmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_rmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_glue*, align 8
  %7 = alloca i32, align 4
  store %struct.cpu_rmap* %0, %struct.cpu_rmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.irq_glue* @kzalloc(i32 24, i32 %8)
  store %struct.irq_glue* %9, %struct.irq_glue** %6, align 8
  %10 = load %struct.irq_glue*, %struct.irq_glue** %6, align 8
  %11 = icmp ne %struct.irq_glue* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = load i32, i32* @irq_cpu_rmap_notify, align 4
  %17 = load %struct.irq_glue*, %struct.irq_glue** %6, align 8
  %18 = getelementptr inbounds %struct.irq_glue, %struct.irq_glue* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @irq_cpu_rmap_release, align 4
  %21 = load %struct.irq_glue*, %struct.irq_glue** %6, align 8
  %22 = getelementptr inbounds %struct.irq_glue, %struct.irq_glue* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.cpu_rmap*, %struct.cpu_rmap** %4, align 8
  %25 = load %struct.irq_glue*, %struct.irq_glue** %6, align 8
  %26 = getelementptr inbounds %struct.irq_glue, %struct.irq_glue* %25, i32 0, i32 0
  store %struct.cpu_rmap* %24, %struct.cpu_rmap** %26, align 8
  %27 = load %struct.cpu_rmap*, %struct.cpu_rmap** %4, align 8
  %28 = call i32 @cpu_rmap_get(%struct.cpu_rmap* %27)
  %29 = load %struct.cpu_rmap*, %struct.cpu_rmap** %4, align 8
  %30 = load %struct.irq_glue*, %struct.irq_glue** %6, align 8
  %31 = call i32 @cpu_rmap_add(%struct.cpu_rmap* %29, %struct.irq_glue* %30)
  %32 = load %struct.irq_glue*, %struct.irq_glue** %6, align 8
  %33 = getelementptr inbounds %struct.irq_glue, %struct.irq_glue* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.irq_glue*, %struct.irq_glue** %6, align 8
  %36 = getelementptr inbounds %struct.irq_glue, %struct.irq_glue* %35, i32 0, i32 1
  %37 = call i32 @irq_set_affinity_notifier(i32 %34, %struct.TYPE_2__* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %15
  %41 = load %struct.irq_glue*, %struct.irq_glue** %6, align 8
  %42 = getelementptr inbounds %struct.irq_glue, %struct.irq_glue* %41, i32 0, i32 0
  %43 = load %struct.cpu_rmap*, %struct.cpu_rmap** %42, align 8
  %44 = call i32 @cpu_rmap_put(%struct.cpu_rmap* %43)
  %45 = load %struct.irq_glue*, %struct.irq_glue** %6, align 8
  %46 = call i32 @kfree(%struct.irq_glue* %45)
  br label %47

47:                                               ; preds = %40, %15
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.irq_glue* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_rmap_get(%struct.cpu_rmap*) #1

declare dso_local i32 @cpu_rmap_add(%struct.cpu_rmap*, %struct.irq_glue*) #1

declare dso_local i32 @irq_set_affinity_notifier(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @cpu_rmap_put(%struct.cpu_rmap*) #1

declare dso_local i32 @kfree(%struct.irq_glue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
