; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_lock_repin_lock.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_lock_repin_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.lockdep_map = type { i32 }
%struct.pin_cookie = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lock_repin_lock(%struct.lockdep_map* %0, i32 %1) #0 {
  %3 = alloca %struct.pin_cookie, align 4
  %4 = alloca %struct.lockdep_map*, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.pin_cookie, %struct.pin_cookie* %3, i32 0, i32 0
  store i32 %1, i32* %6, align 4
  store %struct.lockdep_map* %0, %struct.lockdep_map** %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %28

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @raw_local_irq_save(i64 %14)
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @check_flags(i64 %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.lockdep_map*, %struct.lockdep_map** %4, align 8
  %21 = getelementptr inbounds %struct.pin_cookie, %struct.pin_cookie* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @__lock_repin_lock(%struct.lockdep_map* %20, i32 %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @raw_local_irq_restore(i64 %26)
  br label %28

28:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i32 @check_flags(i64) #1

declare dso_local i32 @__lock_repin_lock(%struct.lockdep_map*, i32) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
