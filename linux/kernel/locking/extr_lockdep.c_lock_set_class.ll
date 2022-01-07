; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c_lock_set_class.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c_lock_set_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.lockdep_map = type { i32 }
%struct.lock_class_key = type { i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lock_set_class(%struct.lockdep_map* %0, i8* %1, %struct.lock_class_key* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.lockdep_map*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lock_class_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.lockdep_map* %0, %struct.lockdep_map** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.lock_class_key* %2, %struct.lock_class_key** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %40

18:                                               ; preds = %5
  %19 = load i64, i64* %11, align 8
  %20 = call i32 @raw_local_irq_save(i64 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @check_flags(i64 %23)
  %25 = load %struct.lockdep_map*, %struct.lockdep_map** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.lock_class_key*, %struct.lock_class_key** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i64, i64* %10, align 8
  %30 = call i64 @__lock_set_class(%struct.lockdep_map* %25, i8* %26, %struct.lock_class_key* %27, i32 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %34 = call i32 @check_chain_key(%struct.TYPE_3__* %33)
  br label %35

35:                                               ; preds = %32, %18
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @raw_local_irq_restore(i64 %38)
  br label %40

40:                                               ; preds = %35, %17
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i32 @check_flags(i64) #1

declare dso_local i64 @__lock_set_class(%struct.lockdep_map*, i8*, %struct.lock_class_key*, i32, i64) #1

declare dso_local i32 @check_chain_key(%struct.TYPE_3__*) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
