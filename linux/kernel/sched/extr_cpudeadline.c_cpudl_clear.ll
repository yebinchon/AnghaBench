; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_cpudeadline.c_cpudl_clear.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_cpudeadline.c_cpudl_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudl = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@IDX_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpudl_clear(%struct.cpudl* %0, i32 %1) #0 {
  %3 = alloca %struct.cpudl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.cpudl* %0, %struct.cpudl** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @cpu_present(i32 %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %15 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %14, i32 0, i32 1
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @raw_spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %19 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @IDX_INVALID, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %96

30:                                               ; preds = %2
  %31 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %32 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %35 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  %42 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %43 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %46 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %54 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 %52, i32* %59, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %62 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %60, i32* %67, align 4
  %68 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %69 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %74 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 4
  %80 = load i32, i32* @IDX_INVALID, align 4
  %81 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %82 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 %80, i32* %87, align 4
  %88 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @cpudl_heapify(%struct.cpudl* %88, i32 %89)
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %93 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @cpumask_set_cpu(i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %30, %29
  %97 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %98 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %97, i32 0, i32 1
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @raw_spin_unlock_irqrestore(i32* %98, i64 %99)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cpu_present(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpudl_heapify(%struct.cpudl*, i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
