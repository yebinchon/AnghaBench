; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_lock_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_lock_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.lockdep_map = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lock_acquire(%struct.lockdep_map* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.lockdep_map* %5, i64 %6) #0 {
  %8 = alloca %struct.lockdep_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lockdep_map*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.lockdep_map* %0, %struct.lockdep_map** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.lockdep_map* %5, %struct.lockdep_map** %13, align 8
  store i64 %6, i64* %14, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  br label %51

22:                                               ; preds = %7
  %23 = load i64, i64* %15, align 8
  %24 = call i32 @raw_local_irq_save(i64 %23)
  %25 = load i64, i64* %15, align 8
  %26 = call i32 @check_flags(i64 %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.lockdep_map*, %struct.lockdep_map** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.lockdep_map*, %struct.lockdep_map** %13, align 8
  %35 = load i64, i64* %14, align 8
  %36 = call i32 @trace_lock_acquire(%struct.lockdep_map* %29, i32 %30, i32 %31, i32 %32, i32 %33, %struct.lockdep_map* %34, i64 %35)
  %37 = load %struct.lockdep_map*, %struct.lockdep_map** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i64, i64* %15, align 8
  %43 = call i32 @irqs_disabled_flags(i64 %42)
  %44 = load %struct.lockdep_map*, %struct.lockdep_map** %13, align 8
  %45 = load i64, i64* %14, align 8
  %46 = call i32 @__lock_acquire(%struct.lockdep_map* %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %43, %struct.lockdep_map* %44, i64 %45, i32 0, i32 0)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load i64, i64* %15, align 8
  %50 = call i32 @raw_local_irq_restore(i64 %49)
  br label %51

51:                                               ; preds = %22, %21
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i32 @check_flags(i64) #1

declare dso_local i32 @trace_lock_acquire(%struct.lockdep_map*, i32, i32, i32, i32, %struct.lockdep_map*, i64) #1

declare dso_local i32 @__lock_acquire(%struct.lockdep_map*, i32, i32, i32, i32, i32, %struct.lockdep_map*, i64, i32, i32) #1

declare dso_local i32 @irqs_disabled_flags(i64) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
