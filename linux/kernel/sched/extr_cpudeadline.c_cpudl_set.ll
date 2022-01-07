; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_cpudeadline.c_cpudl_set.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_cpudeadline.c_cpudl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudl = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i8* }

@IDX_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpudl_set(%struct.cpudl* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.cpudl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.cpudl* %0, %struct.cpudl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @cpu_present(i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.cpudl*, %struct.cpudl** %4, align 8
  %17 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %16, i32 0, i32 0
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @raw_spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.cpudl*, %struct.cpudl** %4, align 8
  %21 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @IDX_INVALID, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %3
  %32 = load %struct.cpudl*, %struct.cpudl** %4, align 8
  %33 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.cpudl*, %struct.cpudl** %4, align 8
  %38 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i8* %36, i8** %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.cpudl*, %struct.cpudl** %4, align 8
  %46 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 %44, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.cpudl*, %struct.cpudl** %4, align 8
  %54 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %52, i32* %59, align 8
  %60 = load %struct.cpudl*, %struct.cpudl** %4, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @cpudl_heapify_up(%struct.cpudl* %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.cpudl*, %struct.cpudl** %4, align 8
  %65 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @cpumask_clear_cpu(i32 %63, i32 %66)
  br label %80

68:                                               ; preds = %3
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.cpudl*, %struct.cpudl** %4, align 8
  %71 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  store i8* %69, i8** %76, align 8
  %77 = load %struct.cpudl*, %struct.cpudl** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @cpudl_heapify(%struct.cpudl* %77, i32 %78)
  br label %80

80:                                               ; preds = %68, %31
  %81 = load %struct.cpudl*, %struct.cpudl** %4, align 8
  %82 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %81, i32 0, i32 0
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @raw_spin_unlock_irqrestore(i32* %82, i64 %83)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cpu_present(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpudl_heapify_up(%struct.cpudl*, i32) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32) #1

declare dso_local i32 @cpudl_heapify(%struct.cpudl*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
